class InstagramPostStrategy < PostStrategy
  URL = 'https://takehome.io/instagram'.freeze
  APP_NAME = 'instagram'.freeze

  EXTRACTORS = {
    user: 'username',
    body: 'picture'
  }.freeze
end
