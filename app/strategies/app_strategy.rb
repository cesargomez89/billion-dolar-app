# frozen_string_literal: true

class AppStrategy
  def self.run(*args)
    new(*args).exec
  end
end
