# frozen_string_literal: true

# name: pronouns-on-posts
# about: TODO
# meta_topic_id: TODO
# version: 0.0.1
# authors: Discourse
# url: TODO
# required_version: 2.7.0

enabled_site_setting :pronouns_on_posts_enabled

module ::PronounsOnPosts
  PLUGIN_NAME = "pronouns-on-posts"
end

require_relative "lib/pronouns_on_posts/engine"

after_initialize do
  # Code which should run after Rails has finished booting
end
