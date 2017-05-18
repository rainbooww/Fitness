class CommentsController < ApplicationController

  def edit
  end

  def create
  	@comment = Comment.new(comment_params)

  	respond_to do |format|
  		if @comment.save
  			format.html {redirect_to blog_path(id: @comment.blog_id), notice: ' Comment was successfully created'}
  		else
  			format.html{redirect_to blog_path(id: @comment.blog_id), notice: 'Comment failed to post'}
  		end
  	end
  end

  def update
  	respond_to do |format|
  		if @comment.update(comment_params)
  			format.html{redirect_to blog_path(id: @comment.blog_id), notice: 'Comment was updated successfully'}
  		else
  			format.html{render :edit}
  		end
  	end
  end

  def destroy
  	@comment.destroy
  	respond_to do |format|
  		format.html {redirect_to blog_path(id: @comment.blog_id), notice: 'comment was destroyed'}
  		end
  	end

  	private

  	def comment_params
  		params.require(:comment).permit(:author, :user_id, :comment_entry, :blog_id)
  	end

  	def set_comment
  		@comment = Comment.find(params[:id])
  	end
end
