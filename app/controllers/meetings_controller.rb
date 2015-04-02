class MeetingsController < ApplicationController

  def new
    @meeting = Meeting.new
    @room = Room.find(params[:room_id])
  end

  def index
    @meetings = Meeting.all
  end

  def show
    @meeting = Meeting.find(params[:id])
    @user = User.all
    @room = Room.all
  end

  def create
    @meeting = Meeting.new(meeting_params)
    @meeting.user_id = current_user.id
    @meeting.room_id = params[:room_id]
    respond_to do |format|
      if @meeting.save
        NotificationMailer.new_meeting(@meeting).deliver_now
        format.html { redirect_to meetings_path, notice: 'Meeting was successfully created.' }
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
