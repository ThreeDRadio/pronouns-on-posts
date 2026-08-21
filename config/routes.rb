# frozen_string_literal: true

PronounsOnPosts::Engine.routes.draw do
  get "/examples" => "examples#index"
  # define routes here
end

Discourse::Application.routes.draw { mount ::PronounsOnPosts::Engine, at: "pronouns-on-posts" }
