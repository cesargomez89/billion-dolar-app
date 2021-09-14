# frozen_string_literal: true

class TwitterPostStrategy < PostStrategy
  URL = 'https://takehome.io/twitter'
  APP_NAME = 'twitter'

  EXTRACTORS = {
    user: 'username',
    body: 'tweet'
  }.freeze
end
