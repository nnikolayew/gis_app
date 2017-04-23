class AutorizationsController < ApplicationController
  before_action :set_autorization, only: [:show, :edit, :update, :destroy]

  # GET /autorizations
  # GET /autorizations.json
  def index
    @autorizations = Autorization.all
  end

  # GET /autorizations/1
  # GET /autorizations/1.json
  def show
  end

  # GET /autorizations/new
  def new
    @autorization = Autorization.new
  end

  # GET /autorizations/1/edit
  def edit
  end

  # POST /autorizations
  # POST /autorizations.json
  def create
    @autorization = Autorization.new(autorization_params)

    respond_to do |format|
      if @autorization.save
        format.html { redirect_to @autorization, notice: 'Autorization was successfully created.' }
        format.json { render :show, status: :created, location: @autorization }
      else
        format.html { render :new }
        format.json { render json: @autorization.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /autorizations/1
  # PATCH/PUT /autorizations/1.json
  def update
    respond_to do |format|
      if @autorization.update(autorization_params)
        format.html { redirect_to @autorization, notice: 'Autorization was successfully updated.' }
        format.json { render :show, status: :ok, location: @autorization }
      else
        format.html { render :edit }
        format.json { render json: @autorization.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /autorizations/1
  # DELETE /autorizations/1.json
  def destroy
    @autorization.destroy
    respond_to do |format|
      format.html { redirect_to autorizations_url, notice: 'Autorization was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_autorization
      @autorization = Autorization.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def autorization_params
      params.require(:autorization).permit(:number, :password)
    end
end
