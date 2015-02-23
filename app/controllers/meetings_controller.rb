class MeetingsController < ApplicationController

  def new
    @meeting = Meeting.new
  end

  def index
    @meetings = Meeting.all
  end

  def create
    @meeting = Meeting.new(meeting_params)
    user = User.find(params[:user_id])
    @meeting.user_id = current_user.id
    respond_to do |format|
      if @meeting.save
        format.html { redirect_to user_meetings_path, notice: 'Meeting was successfully created.' }
        format.json { render :show, status: :created, location: @meeting }
      else
        format.html { render :new }
        format.json { render json: @meeting.errors, status: :unprocessable_entity }
      end
    end
  end


  private

    def meeting_params
      params.require(:meeting).permit(:name, :start_time, :end_time, :room_id, :user_id)
    end


end
