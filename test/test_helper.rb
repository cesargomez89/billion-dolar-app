# frozen_string_literal: true

ENV['RAILS_ENV'] ||= 'test'

require 'simplecov'
require 'webmock/minitest'
SimpleCov.start 'rails' do
  add_group "Forms", "app/forms"
  add_group "Services", "app/services"
  add_group "Strategies", "app/strategies"
end

require_relative '../config/environment'
require 'rails/test_help'


module ActiveSupport
  class TestCase
    fixtures :all

    setup do
      stub_request(:get, "https://takehome.io/facebook").
        with(
          headers: {
            'Accept'=>'*/*',
            'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
            'Host'=>'takehome.io',
            'User-Agent'=>'Ruby'
          }).to_return(
            status: 200,
            body: '[{"name":"Some Friend","status":"Here\'s some photos of my holiday. Look how much more fun I\'m having than you are!"},{"name":"Drama Pig","status":"I am in a hospital. I will not tell you anything about why I am here."}]',
            headers: {}
          )

      stub_request(:get, "https://takehome.io/instagram").
        with(
          headers: {
            'Accept'=>'*/*',
            'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
            'Host'=>'takehome.io',
            'User-Agent'=>'Ruby'
          }).to_return(
            status: 200,
            body: '[{"username":"hipster1","picture":"food"},{"username":"hipster2","picture":"coffee"},{"username":"hipster3","picture":"coffee"},{"username":"hipster4","picture":"food"},{"username":"hipster5","picture":"this one is of a cat"}]',
            headers: {}
          )

      stub_request(:get, "https://takehome.io/twitter").
        with(
          headers: {
            'Accept'=>'*/*',
            'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
            'Host'=>'takehome.io',
            'User-Agent'=>'Ruby'
          }).to_return(
            status: 200,
            body: '[{"username":"@GuyEndoreKaiser","tweet":"If you live to be 100, you should make up some fake reason why, just to mess with people... like claim you ate a pinecone every single day."},{"username":"@mikeleffingwell","tweet":"STOP TELLING ME YOUR NEWBORN\'S WEIGHT AND LENGTH I DON\'T KNOW WHAT TO DO WITH THAT INFORMATION."}]',
            headers: {}
          )
    end
  end
end
