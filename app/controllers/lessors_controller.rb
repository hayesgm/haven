class LessorsController < ApplicationController
  before_action :set_lessor, only: [:show, :edit, :update, :destroy]

  # GET /lessors
  def index
    @lessors = Lessor.all
  end

  # GET /lessors/1
  def show
  end

  # GET /lessors/new
  def new
    @lessor = Lessor.new
  end

  # GET /lessors/1/edit
  def edit
  end

  # POST /lessors
  def create
    @lessor = Lessor.new(lessor_params)

    if @lessor.save
      redirect_to @lessor, notice: 'Lessor was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /lessors/1
  def update
    if @lessor.update(lessor_params)
      redirect_to @lessor, notice: 'Lessor was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /lessors/1
  def destroy
    @lessor.destroy
    redirect_to lessors_url, notice: 'Lessor was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lessor
      @lessor = Lessor.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def lessor_params
      params.require(:lessor).permit(:name, :street_address, :secondary_address, :city, :region, :postal_code)
    end
end
