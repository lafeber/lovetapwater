class PostsController < ApplicationController
  before_filter :check_password, :only => [:create, :update]

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def edit
    @post = Post.find(params[:id])
  end

  def create
    @post = Post.new(params[:post])

    if @post.save
      flash[:notice] = 'Post was successfully created.'
      redirect_to(root_path)
    else
      render :action => "new"
    end
  end

  def update
    @post = Post.find(params[:id])

    if @post.update_attributes(params[:post])
      flash[:notice] = 'Post was successfully updated.'
      redirect_to(root_path)
    else
      render :action => "edit"
    end
  end

  private

  def check_password
    logger.debug(params[:check].inspect)
    logger.debug("PARAMS" + params.inspect)

    redirect_to(root_path) if params[:check][:password] != "p@ddy"
  end

  # DELETE /posts/1
  # DELETE /posts/1.xml
  # def destroy
  #   @post = Post.find(params[:id])
  #   @post.destroy
  #
  #   respond_to do |format|
  #     format.html { redirect_to(posts_url) }
  #     format.xml  { head :ok }
  #   end
  # end
end
