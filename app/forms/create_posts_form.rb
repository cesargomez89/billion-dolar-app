class CreatePostsForm < AppForm
  STRATEGIES = {
    facebook: FacebookPostStrategy,
    twitter:    TwitterPostStrategy,
    instagram: InstagramPostStrategy
  }.freeze

  def create
    STRATEGIES.each_key do |strategy_key|
      CreatePostJob.perform_later(strategy_key)
    end
  end
end
