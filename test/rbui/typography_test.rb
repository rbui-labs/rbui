# frozen_string_literal: true

require "test_helper"

class RBUI::TypographyTest < Minitest::Test
  include Phlex::Testing::ViewHelper

  def test_h1
    output = phlex_context do
      RBUI.TypographyH1 { "This is an H1 title" }
    end

    assert_match("This is an H1 title", output)
  end

  def test_h2
    output = phlex_context do
      RBUI.TypographyH2 { "This is an H2 title" }
    end

    assert_match("This is an H2 title", output)
  end

  def test_h3
    output = phlex_context do
      RBUI.TypographyH3 { "This is an H3 title" }
    end

    assert_match("This is an H3 title", output)
  end

  def test_h4
    output = phlex_context do
      RBUI.TypographyH4 { "This is an H4 title" }
    end

    assert_match("This is an H4 title", output)
  end

  def test_p
    output = phlex_context do
      RBUI.TypographyP { "This is an P tag" }
    end

    assert_match("This is an P tag", output)
  end

  def test_inline_link
    output = phlex_context do
      RBUI.TypographyInlineLink(href: "#") { "installation instructions" }
    end

    assert_match("installation instructions", output)
  end

  def test_list
    output = phlex_context do
      RBUI.TypographyList(items: [
        "Phlex is fast",
        "Phlex is easy to use",
        "Phlex is awesome"
      ])
    end

    assert_match("Phlex is fast", output)
  end

  def test_numbered_list
    output = phlex_context do
      RBUI.TypographyList(items: [
        "Copy",
        "Paste",
        "Customize"
      ], numbered: true)
    end

    assert_match("Copy", output)
  end

  def test_inline_code
    output = phlex_context do
      RBUI.TypographyInlineCode { "This is an inline code block" }
    end

    assert_match("This is an inline code block", output)
  end

  def test_lead
    output = phlex_context do
      RBUI.TypographyLead { "A modal dialog that interrupts the user with important content and expects a response." }
    end

    assert_match("A modal dialog that interrupts", output)
  end

  def test_large
    output = phlex_context do
      RBUI.TypographyLarge { "Are you sure absolutely sure?" }
    end

    assert_match("Are you sure absolutely sure?", output)
  end

  def test_small
    output = phlex_context do
      RBUI.TypographySmall { "Email address" }
    end

    assert_match("Email address", output)
  end

  def test_muted
    output = phlex_context do
      RBUI.TypographyMuted { "Enter your email address." }
    end

    assert_match("Enter your email address.", output)
  end
end
