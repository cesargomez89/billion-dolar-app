require 'net/http'

class SocialRequestService < AppService
  def initialize(path)
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
