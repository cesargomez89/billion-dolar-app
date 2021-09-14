# frozen_string_literal: true

every 5.minutes do
  rake 'posts::update'
end
