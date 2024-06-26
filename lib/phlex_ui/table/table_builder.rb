# frozen_string_literal: true

module PhlexUI
  class TableBuilder < Base
    include Phlex::DeferredRender

    Column = Struct.new(:header, :header_attrs, :footer, :footer_attrs, :block, keyword_init: true)

    def initialize(records = [], caption: nil, **attrs)
      @records = records
      @columns = []
      @caption = caption
      super(**attrs)
    end

    def view_template(&block)
      render PhlexUI::Table.new(**attrs) do
        header
        body
        caption if @caption
        footer if @columns.any?(&:footer)
      end
    end

    def column(header, footer = nil, header_attrs: {}, footer_attrs: {}, &block)
      @columns << Column.new(
        header: header,
        header_attrs: header_attrs,
        footer: footer,
        footer_attrs: footer_attrs,
        block: block
      )
    end

    def header
      render PhlexUI::Table::Header.new do
        render PhlexUI::Table::Row.new do
          @columns.each do |column|
            render PhlexUI::Table::Head.new(**column.header_attrs) do
              column.header
            end
          end
        end
      end
    end

    def body
      render PhlexUI::Table::Body.new do
        @records.each do |record|
          render PhlexUI::Table::Row.new do
            @columns.each do |column|
              render PhlexUI::Table::Cell.new do
                column.block.call(record)
              end
            end
          end
        end
      end
    end

    def footer
      render PhlexUI::Table::Footer.new do
        render PhlexUI::Table::Row.new do
          @columns.each do |column|
            render PhlexUI::Table::Head.new(**column.footer_attrs) do
              column.footer
            end
          end
        end
      end
    end

    def caption
      render PhlexUI::Table::Caption.new { @caption }
    end
  end
end
