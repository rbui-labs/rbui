module RBUI
  class AttributeMerger
    attr_reader :default_attrs, :user_attrs

    def initialize(default_attrs, user_attrs)
      @default_attrs = flatten_hash(default_attrs)
      @user_attrs = flatten_hash(user_attrs)
    end

    # @return [String]
    # any key that ends with ! will override the default value
    # ex: if default_attrs = { class: "text-right" }, user_attrs = { class!: "text-left" }
    # the result will be { class: "text-left }
    def call
      merged_attrs = merge_hashes(default_attrs, user_attrs)
      mix(merged_attrs, user_attrs)
    end

    private

    # @return [Hash]
    def mix(*args)
      args.each_with_object({}) do |object, result|
        result.merge!(object) do |_key, old, new|
          case new
          when Hash
            old.is_a?(Hash) ? mix(old, new) : new
          when Array
            old.is_a?(Array) ? (old + new) : new
          when String
            old.is_a?(String) ? "#{old} #{new}" : new
          else
            new
          end
        end

        result.transform_keys! do |key|
          key.end_with?("!") ? key.name.chop.to_sym : key
        end
      end
    end

    def flatten_hash(hash, parent_key = "", result_hash = {})
      hash.each do |key, value|
        new_key = parent_key.empty? ? key : :"#{parent_key}_#{key}"
        if value.is_a? Hash
          flatten_hash(value, new_key, result_hash)
        else
          result_hash[new_key] = value
        end
      end
      result_hash
    end

    def merge_hashes(hash1, hash2)
      flat_hash1 = flatten_hash(hash1)
      flat_hash2 = flatten_hash(hash2)

      flat_hash1.merge(flat_hash2) do |key, oldval, newval|
        "#{oldval} #{newval}"
      end
    end
  end
end
