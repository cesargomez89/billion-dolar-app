# frozen_string_literal: true

require 'test_helper'

class CreatePostsFormTest < ActiveSupport::TestCase
  include ActiveJob::TestHelper

  test 'synchronous' do
    assert_difference 'Post.count', 9 do
      CreatePostsForm.create(delayed: false)
    end
  end

  test 'asynchronous' do
    assert_enqueued_with(job: CreatePostJob) do
      CreatePostsForm.create(delayed: true)
    end
  end
end
