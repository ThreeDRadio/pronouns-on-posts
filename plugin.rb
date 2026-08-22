# frozen_string_literal: true

# name: pronouns-on-posts
# about: Add pronouns to post headers
# meta_topic_id:
# version: 0.0.1
# authors: Three D Radio, btgs-0
# url: 
# required_version: 2.7.0

enabled_site_setting :pronouns_on_posts_enabled

module ::PronounsOnPosts
  PLUGIN_NAME = "pronouns-on-posts"
end

require_relative "lib/pronouns_on_posts/engine"

after_initialize do 
  add_to_serializer(:post, :pronouns, false) do
    object.user&.user_fields&.[]("3")
  end
end

