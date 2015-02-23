class RoomsController < ApplicationController
  def new
    @room = Room.new
  end

  def index
    @rooms = Room.all
  end

  def edit
    @room = Room.find(params[:id])
  end


  def create
    @room = Room.new(room_params)

    respond_to do |format|
      if @room.save
        format.html { redirect_to root_path, notice: 'Post was successfully created.' }
        format.json { render :show, status: :created, location: @room }
      else
        format.html { render :new }
        format.json { render json: @room.errors, status: :unprocessable_entity }
      end
    end
  end


  def update
    @room = Room.find(params[:id])
    @room.update!(room_params)
    redirect_to rooms_path
  end

  def show
  end

  def destroy
  end


  private

    def room_params
      params.require(:room).permit(:image, :name, :description, :location)
    end
end

