class BillboardsController < ApplicationController
  def index
    @billboards = Billboard.all
  end

  def show
    @billboard = Billboard.find(params[:id])
  end

  def new
    @billboard = Billboard.new
    render partial: "form"
  end

  def create
    @billboard = Billboard.new(billboard_params)

    if @billboard.save
      redirect_to billboard_path(@billboard)
    else
      render partial: "form"
    end
  end

  def edit
    render partial: "form"
  end

  def update
    if @billboard.update(billboard_params)
      redirect_to billboard_path(@billboard)
    else
      render partial: "form"
    end
  end

  def destroy
    @billboard.destroy
    redirect_to billboard_path
  end

  private

    def set_billboard
      @billboard = Billboard.find(params[:id])
    end

    def billboard_params
      params.require(:billboard).permit(:name)
    end
end
