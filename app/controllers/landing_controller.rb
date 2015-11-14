class LandingController < ApplicationController
  def index

  end

  def announcements
    @posts = Post.all
  end
end
