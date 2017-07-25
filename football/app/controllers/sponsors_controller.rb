class SponsorsController < ApplicationController
  def new
    @page_title='Add New Sponsor'
    @sponsor = Sponsor.new
  end

  def create
    @sponsor = Sponsor.new(sponsor_prams)
    if @sponsor.save
      flash[:notice] = "Sponsor Created"

      redirect_to sponsors_path
    else
      render 'new'
    end
  end

  def update
    @sponsor = Sponsor.find(params[:id])
    @sponsor.update(sponsor_prams)

    flash[:notice] = 'Sponsor Updated'

    redirect_to sponsors_path
  end

  def edit
    @sponsor = Sponsor.find(params[:id])
  end

  def destroy
    @sponsor = Sponsor.find(params[:id])
    @sponsor.destroy

    flash[:notice] = 'Sponsor Removed'

    redirect_to sponsors_path
  end

  def index
    @sponsors = Sponsor.all
  end

  def show
    @sponsor = Sponsor.find(params[:id])
    @sponors = Sponsor.all
    @soccers = @sponsor.soccers
  end

  private
    def sponsor_prams
      params.require(:sponsor).permit(:name)
    end
end
