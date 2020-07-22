class TradmarksController < ApplicationController
  before_action :set_tradmark, only: [:show, :edit, :update, :destroy]

  # GET /tradmarks
  # GET /tradmarks.json
  def index
    @tradmarks = Tradmark.all
    @api=Product.products_trademark
  end

  # GET /tradmarks/1
  # GET /tradmarks/1.json
  def show
  end

  # GET /tradmarks/new
  def new
    @tradmark = Tradmark.new
  end

  # GET /tradmarks/1/edit
  def edit
  end

  # POST /tradmarks
  # POST /tradmarks.json
  def create
    @tradmark = Tradmark.new(tradmark_params)

    respond_to do |format|
      if @tradmark.save
        format.html { redirect_to @tradmark, notice: 'Tradmark was successfully created.' }
        format.json { render :show, status: :created, location: @tradmark }
      else
        format.html { render :new }
        format.json { render json: @tradmark.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tradmarks/1
  # PATCH/PUT /tradmarks/1.json
  def update
    respond_to do |format|
      if @tradmark.update(tradmark_params)
        format.html { redirect_to @tradmark, notice: 'Tradmark was successfully updated.' }
        format.json { render :show, status: :ok, location: @tradmark }
      else
        format.html { render :edit }
        format.json { render json: @tradmark.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tradmarks/1
  # DELETE /tradmarks/1.json
  def destroy
    @tradmark.destroy
    respond_to do |format|
      format.html { redirect_to tradmarks_url, notice: 'Tradmark was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tradmark
      @tradmark = Tradmark.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tradmark_params
      params.require(:tradmark).permit(:id, :description)
    end
end
