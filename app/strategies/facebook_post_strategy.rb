class FacebookPostStrategy < PostStrategy
  URL = 'https://takehome.io/facebook'.freeze
  APP_NAME = 'facebook'.freeze

  EXTRACTORS = {
    user: 'name',
    body: 'status'
  }.freeze
end
