class PitchesController < ApplicationController
  def new
    @page_title='Add New Stadium'
    @pitch = Pitch.new
  end

  def create
    @pitch = Pitch.new(pitch_prams)
    if @pitch.save
      flash[:notice] = "Stadium Created"

      redirect_to pitches_path
    else
      render 'new'
    end
  end

  def update
    @pitch = Pitch.find(params[:id])
    @pitch.update(pitch_prams)

    flash[:notice] = 'Stadium Updated'

    redirect_to pitches_path
  end

  def edit
    @pitch = Pitch.find(params[:id])
  end

  def destroy
    @pitch = Pitch.find(params[:id])
    @pitch.destroy

    flash[:notice] = 'Stadium Removed'

    redirect_to pitches_path
  end

  def index
    @pitches = Pitch.all
  end

  def show
    @pitch = Pitch.find(params[:id])
    @pitches = Pitch.all
    @soccers = @pitch.soccers
  end

  private
    def pitch_prams
      params.require(:pitch).permit(:name)
    end
end
