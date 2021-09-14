# frozen_string_literal: true

class Post < ApplicationRecord
  enum app: { facebook: 0, instagram: 1, twitter: 2 }
end
