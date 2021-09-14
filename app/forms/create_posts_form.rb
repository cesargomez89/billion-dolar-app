# frozen_string_literal: true

class CreatePostsForm < AppForm
  STRATEGIES = {
    facebook: FacebookPostStrategy,
    twitter: TwitterPostStrategy,
    instagram: InstagramPostStrategy
  }.freeze

  def initialize(delayed: true)
    super
    @delayed = delayed
  end

  def create
    STRATEGIES.each_key do |strategy_key|
      if @delayed
        CreatePostJob.perform_later(strategy_key)
      else
        CreatePostJob.perform_now(strategy_key)
      end
    end
  end
end
