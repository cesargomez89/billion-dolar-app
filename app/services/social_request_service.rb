# frozen_string_literal: true

require 'net/http'

class SocialRequestService < AppService
  def initialize(path)
    super
    @path = URI(path)
  end

  def process
    JSON.parse(retrieve_data)
  end

  private

  def retrieve_data
    Net::HTTP.get(@path)
  end
end
