# frozen_string_literal: true

class AppForm
  def self.create(*args)
    new(*args).create
  end
end
