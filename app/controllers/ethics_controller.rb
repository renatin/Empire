class EthicsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_ethic, only: [:show, :edit, :update, :destroy]

  # GET /ethics
  # GET /ethics.json
  def index
    @ethics = Ethic.all
  end

  # GET /ethics/1
  # GET /ethics/1.json
  def show
  end

  # GET /ethics/new
  def new
    @ethic = Ethic.new
  end

  # GET /ethics/1/edit
  def edit
  end

  # POST /ethics
  # POST /ethics.json
  def create
    @ethic = Ethic.new(ethic_params)

    respond_to do |format|
      if @ethic.save
        format.html { redirect_to @ethic, notice: 'Ethic was successfully created.' }
        format.json { render :show, status: :created, location: @ethic }
      else
        format.html { render :new }
        format.json { render json: @ethic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ethics/1
  # PATCH/PUT /ethics/1.json
  def update
    respond_to do |format|
      if @ethic.update(ethic_params)
        format.html { redirect_to @ethic, notice: 'Ethic was successfully updated.' }
        format.json { render :show, status: :ok, location: @ethic }
      else
        format.html { render :edit }
        format.json { render json: @ethic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ethics/1
  # DELETE /ethics/1.json
  def destroy
    @ethic.destroy
    respond_to do |format|
      format.html { redirect_to ethics_url, notice: 'Ethic was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ethic
      @ethic = Ethic.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ethic_params
      params.require(:ethic).permit(:desc)
    end
end
