class PostsController < ApplicationController



  def index
    @posts = Post.order('created_at DESC').page params[:page]
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
    @statuses = PetStatus.all
    @type = PetType.all
  end

  def new_lost
    @post = Post.new
    @type = PetType.all
    @status = PetStatus.find_by(status: "Lost")
  end

  def new_found
    @post = Post.new
    @type = PetType.all
    @status = PetStatus.find_by(status: "Found")
  end

  def edit
    @post = Post.find(params[:id])
    @type = PetType.all
    @statuses = PetStatus.all


  end

  def create

    @post = Post.new
    @post.location = post_params[:location]
    @post.description = post_params[:description]
    @post.pet_type_id = post_params[:pet_type_id]
    @post.pet_status_id = post_params[:pet_status_id]
    @post.user = current_user


    Cloudinary::Uploader.upload(post_params[:file], options = {})
    uploaded_file = post_params[:file].path
    cloudnary_file = Cloudinary::Uploader.upload(uploaded_file)
    @post.url = cloudnary_file["url"]

    if @post.save
      redirect_to @post
    else
      render 'post_new_lost'
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

  def delete
    @post = Post.find(params[:id])

    @post.destroy

    redirect_to posts_path
  end

  private
    def post_params
      # Temporary params for mvp
      params.require(:post).permit(:user_id, :file, :pet_type_id, :location, :description, :pet_status_id, :url, :created_at)

      # Final params
      #----------------------------------------------------------------------
      # params.require(:post).permit(:location, :description, :url, :pet_type_id, :pet_status_id, :user_id, )
      #----------------------------------------------------------------------

    end
end