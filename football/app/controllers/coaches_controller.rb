class CoachesController < ApplicationController
  def new
    @page_title='Add New Coach'
    @coach = Coach.new
  end

  def create
    @coach = Coach.new(coach_prams)
    if @coach.save
      flash[:notice] = "Coach Created"

      redirect_to coaches_path
    else
      render 'new'
    end
  end

  def update
    @coach = Coach.find(params[:id])
    if @coach.update(coach_prams)

    flash[:notice] = 'Coach Updated'

    redirect_to coaches_path
  else 
          render 'new'
  end
  end

  def edit
    @coach = Coach.find(params[:id])
  end

  def destroy
    @coach = Coach.find(params[:id])
    @coach.destroy

    flash[:notice] = 'Coach Removed'

    redirect_to coaches_path
  end

  def index
    @coaches = Coach.all
  end

  def show
    @coach = Coach.find(params[:id])
    @coaches = Coach.all
    @soccers = @coach.soccers
  end

  private
    def coach_prams
      params.require(:coach).permit(:first_name, :last_name)
    end
end
