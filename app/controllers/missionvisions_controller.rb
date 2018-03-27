class MissionvisionsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_missionvision, only: [:show, :edit, :update, :destroy]

  # GET /missionvisions
  # GET /missionvisions.json
  def index
    @missionvisions = Missionvision.all
  end

  # GET /missionvisions/1
  # GET /missionvisions/1.json
  def show
  end

  # GET /missionvisions/new
  def new
    @missionvision = Missionvision.new
  end

  # GET /missionvisions/1/edit
  def edit
  end

  # POST /missionvisions
  # POST /missionvisions.json
  def create
    @missionvision = Missionvision.new(missionvision_params)

    respond_to do |format|
      if @missionvision.save
        format.html { redirect_to @missionvision, notice: 'Missionvision was successfully created.' }
        format.json { render :show, status: :created, location: @missionvision }
      else
        format.html { render :new }
        format.json { render json: @missionvision.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /missionvisions/1
  # PATCH/PUT /missionvisions/1.json
  def update
    respond_to do |format|
      if @missionvision.update(missionvision_params)
        format.html { redirect_to @missionvision, notice: 'Missionvision was successfully updated.' }
        format.json { render :show, status: :ok, location: @missionvision }
      else
        format.html { render :edit }
        format.json { render json: @missionvision.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /missionvisions/1
  # DELETE /missionvisions/1.json
  def destroy
    @missionvision.destroy
    respond_to do |format|
      format.html { redirect_to missionvisions_url, notice: 'Missionvision was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_missionvision
      @missionvision = Missionvision.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def missionvision_params
      params.require(:missionvision).permit(:picvision, :descvision, :picmission, :descmission)
    end
end
