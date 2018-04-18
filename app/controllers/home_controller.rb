class HomeController < ApplicationController
  skip_before_action :require_login
  def index
    @posts = Post.all
  end

end
