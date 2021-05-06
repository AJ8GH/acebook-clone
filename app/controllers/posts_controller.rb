class PostsController < ApplicationController
  respond_to :js, :html, :json

  def index
    @post = Post.new
    @user = current_user
    @posts = Post.order(created_at: :desc)
  end

  def create
    @post = Post.create(post_params)
    @post.user_id = current_user.id
    @post.save
    redirect_to posts_url
  end

  def edit
    @user = current_user
    @post = Post.find_by(id: params[:id])
    validate_edit
  end

  def update
    @post = Post.find_by(id: params[:id])
    if validate_edit == true
      @post.update(message: params[:post])
      redirect_to posts_url
    end
  end

  def destroy
    @post = Post.find_by(id: params[:id])

    if current_user.id != @post.user_id
      redirect_to posts_url, notice: "Oops, that's not your post!"
    else
      @post.destroy
      redirect_to posts_url
    end
  end

  def like
    @post = Post.find_by(id: params[:id])
    if params[:format] == 'like'
      @post.liked_by current_user
    elsif params[:format] == 'unlike'
      @post.unliked_by current_user
    end
  end

  private

  def post_params
    params.require(:post).permit(:message)
  end

  def validate_edit
    if current_user.id != @post.user_id
      redirect_to posts_url, notice: "Oops, that's not your post!"
      false
    elsif !@post.created_ten_minutes_ago?
      redirect_to posts_url, notice: 'Post is older than 10 minutes'
      false
    else
      true
    end
  end
end
