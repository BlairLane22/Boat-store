class BoatsController < ApplicationController
  before_action :set_boat, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  # GET /boats
  # GET /boats.json
  def index
    @boats = Boat.all.order("created_at DESC")

    @highest_priced = Boat.order('price DESC').limit(1)
  end

  # GET /boats/1
  # GET /boats/1.json
  def show
    if user_signed_in? && current_user.id != @boat.user_id
      @boat.punch(request)
    elsif user_signed_in? == false
      @boat.punch(request)
    end
  end

  # GET /boats/new
  def new
    @boat = current_user.boats.build
  end

  # GET /boats/1/edit
  def edit
  end

  # POST /boats
  # POST /boats.json
  def create
    @boat = current_user.boats.build(boat_params)

    respond_to do |format|
      if @boat.save
        format.html { redirect_to @boat, notice: "#{@boat.title.capitalize} was successfully created." }
        format.json { render :show, status: :created, location: @boat }
      else
        format.html { render :new }
        format.json { render json: @boat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /boats/1
  # PATCH/PUT /boats/1.json
  def update
    respond_to do |format|
      if @boat.update(boat_params)
        format.html { redirect_to @boat, notice: "#{@boat.title.capitalize} was successfully updated." }
        format.json { render :show, status: :ok, location: @boat }
      else
        format.html { render :edit }
        format.json { render json: @boat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /boats/1
  # DELETE /boats/1.json
  def destroy
    @boat.destroy
    respond_to do |format|
      format.html { redirect_to boats_url, notice: "#{@boat.title.capitalize} was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def my_products
    @boats = Boat.all.order("created_at desc")
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_boat
      @boat = Boat.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def boat_params
      params.require(:boat).permit(:length, :brand, :model, :description, :condition, :color, :title, :price, :image, :category)
    end
end
