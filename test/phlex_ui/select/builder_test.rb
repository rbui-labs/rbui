# frozen_string_literal: true

require "test_helper"

class PhlexUI::Select::BuilderTest < Minitest::Test
  include Phlex::Testing::ViewHelper

  Post = Struct.new(:id, :person_id)

  def test_render_with_default_attributes
    people = [
      ["John Doe", 1],
      ["Jane Doe", 2],
      ["Sam Smith", 3]
    ]
    post = Post.new(id: 1, person_id: 2)
    output = render PhlexUI::Select::Builder.new(post, :person_id, collection: people)

    refute_empty(output)
  end
end
