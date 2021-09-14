# frozen_string_literal: true

class HomeController < ApplicationController
  def index
    render json: Post.select(:id, :user, :body, :app).group_by(&:app)
  end
end
