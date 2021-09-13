namespace :posts do
  desc 'update posts from social links'
  task update: :environment do
    CreatePostsForm.create(delayed: false)
    puts '=== posts updated! ==='
  end
end
