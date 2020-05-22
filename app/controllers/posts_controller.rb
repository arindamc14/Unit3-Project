class PostsController < ApplicationController
  def index
    @posts = Post.order('created_at DESC');
  end

  def show
    @post = Post.find(params[:id])

    if user_signed_in?
      @user = User.find(current_user.id)
    end
  end

  def account
    @userpost = Post.where(user_id: current_user.id)
    @email = current_user.email
  end

  def new
    @post = Post.new
    @type = PetType.all
    @statuses = PetStatus.all
  end

  def edit
    @post = Post.find(params[:id])
    @type = PetType.all
    @statuses = PetStatus.all


  end

  def create

    @post = Post.new(post_params)
    @post.user = current_user

    if @post.save
      redirect_to posts_path
    else
      render 'new'
    end
  end

  def update
    @post = Post.find(params[:id])
    @post.user = current_user

    # to check for any errors
    if @post.update(post_params)
      redirect_to @post
    else
      render 'edit'
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    redirect_to posts_path
  end

  private
    def post_params
      # Temporary params for mvp
      params.require(:post).permit(:user_id, :pet_type_id, :location, :description, :pet_status_id, :url, :created_at)

      # Final params
      #----------------------------------------------------------------------
      # params.require(:post).permit(:location, :description, :url, :pet_type_id, :pet_status_id, :user_id, )
      #----------------------------------------------------------------------

    end
end