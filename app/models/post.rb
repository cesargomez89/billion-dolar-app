class Post < ApplicationRecord
  enum app: [ :facebook, :instagram, :twitter ]
end
