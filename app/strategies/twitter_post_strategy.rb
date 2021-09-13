class TwitterPostStrategy < PostStrategy
  URL = 'https://takehome.io/twitter'.freeze
  APP_NAME = 'twitter'.freeze

  EXTRACTORS = {
    user: 'username',
    body: 'tweet'
  }.freeze
end
