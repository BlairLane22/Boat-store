class SailboatsController < ApplicationController
  before_action :set_sailboat, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  # GET /sailboats
  # GET /sailboats.json
  def index
    @sailboats = Sailboat.all.order("created_at desc")
  end

  # GET /sailboats/1
  # GET /sailboats/1.json
  def show
  end

  # GET /sailboats/new
  def new
    @sailboat = current_user.sailboats.build
  end

  # GET /sailboats/1/edit
  def edit
  end

  # POST /sailboats
  # POST /sailboats.json
  def create
    @sailboat = current_user.sailboats.build(sailboat_params)

    respond_to do |format|
      if @sailboat.save
        format.html { redirect_to @sailboat, notice: "#{@sailboat.title.capitalize} was successfully created." }
        format.json { render :show, status: :created, location: @sailboat }
      else
        format.html { render :new }
        format.json { render json: @sailboat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sailboats/1
  # PATCH/PUT /sailboats/1.json
  def update
    respond_to do |format|
      if @sailboat.update(sailboat_params)
        format.html { redirect_to @sailboat, notice: "#{@sailboat.title.capitalize} was successfully updated." }
        format.json { render :show, status: :ok, location: @sailboat }
      else
        format.html { render :edit }
        format.json { render json: @sailboat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sailboats/1
  # DELETE /sailboats/1.json
  def destroy
    @sailboat.destroy
    respond_to do |format|
      format.html { redirect_to sailboats_url, notice: "#{@sailboat.title.capitalize} was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def my_products
    @sailboats = Sailboat.all.order("created_at desc")
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sailboat
      @sailboat = Sailboat.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sailboat_params
      params.require(:sailboat).permit(:length, :brand, :model, :description, :condition, :color, :title, :price, :image)
    end
end
