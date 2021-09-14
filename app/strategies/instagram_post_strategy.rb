# frozen_string_literal: true

class InstagramPostStrategy < PostStrategy
  URL = 'https://takehome.io/instagram'
  APP_NAME = 'instagram'

  EXTRACTORS = {
    user: 'username',
    body: 'picture'
  }.freeze
end
