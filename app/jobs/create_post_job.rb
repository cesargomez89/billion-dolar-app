class CreatePostJob < ApplicationJob
  retry_on JSON::ParserError

  def perform(strategy_key)
    strategy = CreatePostsForm::STRATEGIES[strategy_key]
    data = SocialRequestService.for(strategy::URL)
    strategy.run(data)
  end
end
