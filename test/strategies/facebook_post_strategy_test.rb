require 'test_helper'

class FacebookPostStrategyTest < ActiveSupport::TestCase
  test 'run' do
    data = SocialRequestService.for(FacebookPostStrategy::URL)
    assert_difference 'Post.count', 2 do
      FacebookPostStrategy.run(data)
    end
  end
end
