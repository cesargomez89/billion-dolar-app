# frozen_string_literal: true

class FacebookPostStrategy < PostStrategy
  URL = 'https://takehome.io/facebook'
  APP_NAME = 'facebook'

  EXTRACTORS = {
    user: 'name',
    body: 'status'
  }.freeze
end
