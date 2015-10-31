class LuxuryCoffeesController < ApplicationController
  before_action :set_luxury_coffee, only: [:show, :edit, :update, :destroy]

  # GET /luxury_coffees
  # GET /luxury_coffees.json
  def index
    @luxury_coffees = LuxuryCoffee.all
  end

  # GET /luxury_coffees/1
  # GET /luxury_coffees/1.json
  def show
  end

  # GET /luxury_coffees/new
  def new
    @luxury_coffee = LuxuryCoffee.new
  end

  # GET /luxury_coffees/1/edit
  def edit
  end

  # POST /luxury_coffees
  # POST /luxury_coffees.json
  def create
    @luxury_coffee = LuxuryCoffee.new(luxury_coffee_params)

    respond_to do |format|
      if @luxury_coffee.save
        format.html { redirect_to @luxury_coffee, notice: 'Luxury coffee was successfully created.' }
        format.json { render :show, status: :created, location: @luxury_coffee }
      else
        format.html { render :new }
        format.json { render json: @luxury_coffee.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /luxury_coffees/1
  # PATCH/PUT /luxury_coffees/1.json
  def update
    respond_to do |format|
      if @luxury_coffee.update(luxury_coffee_params)
        format.html { redirect_to @luxury_coffee, notice: 'Luxury coffee was successfully updated.' }
        format.json { render :show, status: :ok, location: @luxury_coffee }
      else
        format.html { render :edit }
        format.json { render json: @luxury_coffee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /luxury_coffees/1
  # DELETE /luxury_coffees/1.json
  def destroy
    @luxury_coffee.destroy
    respond_to do |format|
      format.html { redirect_to luxury_coffees_url, notice: 'Luxury coffee was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_luxury_coffee
      @luxury_coffee = LuxuryCoffee.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def luxury_coffee_params
      params.require(:luxury_coffee).permit(:name, :description, :intensity, :price, :image)
    end
end
