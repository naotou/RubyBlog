class ProdectsController < ApplicationController
  before_action :set_prodect, only: [:show, :edit, :update, :destroy]

  # GET /prodects
  # GET /prodects.json
  def index
    @prodects = Prodect.all
  end

  # GET /prodects/1
  # GET /prodects/1.json
  def show
  end

  # GET /prodects/new
  def new
    @prodect = Prodect.new
  end

  # GET /prodects/1/edit
  def edit
  end

  # POST /prodects
  # POST /prodects.json
  def create
    @prodect = Prodect.new(prodect_params)

    respond_to do |format|
      if @prodect.save
        format.html { redirect_to @prodect, notice: 'Prodect was successfully created.' }
        format.json { render :show, status: :created, location: @prodect }
      else
        format.html { render :new }
        format.json { render json: @prodect.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prodects/1
  # PATCH/PUT /prodects/1.json
  def update
    respond_to do |format|
      if @prodect.update(prodect_params)
        format.html { redirect_to @prodect, notice: 'Prodect was successfully updated.' }
        format.json { render :show, status: :ok, location: @prodect }
      else
        format.html { render :edit }
        format.json { render json: @prodect.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prodects/1
  # DELETE /prodects/1.json
  def destroy
    @prodect.destroy
    respond_to do |format|
      format.html { redirect_to prodects_url, notice: 'Prodect was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prodect
      @prodect = Prodect.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def prodect_params
      params.require(:prodect).permit(:name, :price, :desc)
    end
end
