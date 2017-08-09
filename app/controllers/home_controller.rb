class HomeController < ApplicationController
  def index
  	@all_post = Post.all.reverse
  end

  def create
  	Post.create(title: params[:title], content: params[:content])
  	redirect_to '/home/index'
  end

  def reply_create
  	Reply.create(content: params[:content], post_id: params[:id_of_post])
  	redirect_to '/home/index'
  end

end
