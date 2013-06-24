class PostsController < ApplicationController
  # GET /posts
  # GET /posts.json
  #def index
  #  @posts = Post.all
#
 #   respond_to do |format|
  #    format.html # index.html.erb
   #   format.json { render json: @posts }
   # end
 # end

def index
@posts = Post.noimage.pending.newest.page
@foo = "bar"
#@user = User.find(params[:email])
#@posts2 = @user.posts

  respond_to do |format|
    format.html # index.html.erb
    format.json { render json: @posts }
  end
end





  # GET /posts/1
  # GET /posts/1.json
#  def show
#    @post = Post.find(params[:id])
#
#    respond_to do |format|
#      format.html # show.html.erb
#      format.json { render json: @post }
#    end
#  end




def show
  @post = Post.find(params[:id])
@user = @post.email
  respond_to do |format|
    format.html # show.html.erb
    format.json { render json: @post }
  end


end



  # GET /posts/new
  # GET /posts/new.json
  def new
    @post = Post.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @post }
    end
  end

  # GET /posts/1/edit
  def edit
    @post = Post.find(params[:id])
  end

  # POST /posts
  # POST /posts.json
  def create
    @post = Post.new(params[:post])

    respond_to do |format|
      if @post.save
        format.html { redirect_to @post, notice: 'Post was successfully created.' }
	format.json { render json: @post, status: :created, location: @post }
      else
        format.html { render action: "new" }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /posts/1
  # PUT /posts/1.json
  def update
    @post = Post.find(params[:id])
@test = Post    
respond_to do |format|
      

if params[:save_option_a]        
    
@post.update_attributes(params[:post])
        format.html { redirect_to @post, notice: 'Post was successfully updated.' }
        format.json { head :no_content }

else params[:save_option_b] 
@post.update_attributes(params[:post]) 
format.html { redirect_to edit_post_path(@post.next_post), notice: 'Post was successfully updated.' }
        format.json { head :no_content }       

      end
    end
  end







  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    respond_to do |format|
      format.html { redirect_to posts_url }
      format.json { head :no_content }
    end
  end
end
