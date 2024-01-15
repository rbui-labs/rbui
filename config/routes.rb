# frozen_string_literal: true

PhlexUI::Engine.routes.draw do
  mount Lookbook::Engine, at: "/"
end
