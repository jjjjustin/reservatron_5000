class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    respond_to do |format|
      if @comment.save
        format.html { redirect_to root_path, notice: 'Comment was added.' }
        format.json { render :show, status: :created, location: @meeting }
      else
        format.html { render :new }
        format.json { render json: @meeting.errors, status: :unprocessable_entity }
      end
    end
  end

  def new
    @comment = Comment.new
    @meeting = Meeting.all
  end

  def index
    @comments = Comment.all

  end

  def show
    @comment = Comment.all
  end



  private

    def comment_params
      params.require(:comment).permit(:body, :user_id, :meeting_id)
    end
end

