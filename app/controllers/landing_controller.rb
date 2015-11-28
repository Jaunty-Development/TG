class LandingController < ApplicationController
  before_action :set_instagram, only: [:index, :announcements]

  def index
  end

  def announcements
    @posts = Post.all
  end

  private

  def set_instagram
    @instagram = Instagram.user_recent_media(ENV['INSTAGRAM_USER_ID'], {:count => 5}
  end
end
