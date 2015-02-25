class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    user = User.find(params[:user_id])
    @meeting.user_id = current_user.id
    respond_to do |format|
      if @meeting.save
        NotificationMailer.new_meeting(@meeting).deliver_now
        format.html { redirect_to user_meetings_path, notice: 'Meeting was successfully created.' }
        format.json { render :show, status: :created, location: @meeting }
      else
        format.html { render :new }
        format.json { render json: @meeting.errors, status: :unprocessable_entity }
      end
    end
  end

  def new
    @comment = Comment.new
  end

  def index
  end

  def show
  end



  private

    def comment_params
      params.require(:comment).permit(:body, :user_id, :meeting_id)
    end
end

