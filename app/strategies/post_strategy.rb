class PostStrategy < AppStrategy
  URL = 'default'.freeze
  APP_NAME = 'default'.freeze

  EXTRACTORS = {
  }.freeze

  def initialize(data)
    @data = data
    @klass = self.class
  end

  def exec
    parse_data
  end

  private

  def parse_data
    @data.each do |post|
      Post.find_or_create_by(
        user: post[@klass::EXTRACTORS[:user]],
        body: post[@klass::EXTRACTORS[:body]],
        app: @klass::APP_NAME
      )
    end
  end
end
