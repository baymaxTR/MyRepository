class SoccersController < ApplicationController
  def new
    @page_title = 'Add New Team'
    @soccer = Soccer.new
    @coach = Coach.new
    @sponsor = Sponsor.new
    @pitch = Pitch.new
  end

  def create
    @soccer = Soccer.new(soccer_prams)
    if @soccer.save
    flash[:notice] = 'Team Added'

    redirect_to soccers_path
  else
    render'new'
  end
  end

  def update
    @soccer = Soccer.find(params[:id])
    @soccer.update(soccer_prams)

    flash[:notice] = 'Team Updated'

    redirect_to soccers_path
  end

  def edit
    @soccer = Soccer.find(params[:id])
  end

  def destroy
    @soccer = Soccer.find(params[:id])
    @soccer.destroy

    flash[:notice] = 'Team Removed'

    redirect_to soccers_path
  end

  def index
    @soccers = Soccer.all
   end

  def show
    @soccer = Soccer.find(params[:id])
  end

  private
    def soccer_prams
      params.require(:soccer).permit(:title, :coach_id, :pitch_id, :sponsor_id, :founded, :trophy, :coverpath, :excerpt, :nation, :owner, :visit)
    end
end
