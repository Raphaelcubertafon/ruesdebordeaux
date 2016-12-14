class RuesController < ApplicationController
  before_action :set_rue, only: [:show, :edit, :update, :destroy]

  # GET /rues
  # GET /rues.json
  def index
    @rues = Rue.all
  end

  # GET /rues/1
  # GET /rues/1.json
  def show
  end

  # GET /rues/new
  def new
    @rue = Rue.new
  end

  # GET /rues/1/edit
  def edit
  end

  # POST /rues
  # POST /rues.json
  def create
    @rue = Rue.new(rue_params)

    respond_to do |format|
      if @rue.save
        format.html { redirect_to @rue, notice: 'Rue was successfully created.' }
        format.json { render :show, status: :created, location: @rue }
      else
        format.html { render :new }
        format.json { render json: @rue.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rues/1
  # PATCH/PUT /rues/1.json
  def update
    respond_to do |format|
      if @rue.update(rue_params)
        format.html { redirect_to @rue, notice: 'Rue was successfully updated.' }
        format.json { render :show, status: :ok, location: @rue }
      else
        format.html { render :edit }
        format.json { render json: @rue.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rues/1
  # DELETE /rues/1.json
  def destroy
    @rue.destroy
    respond_to do |format|
      format.html { redirect_to rues_url, notice: 'Rue was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rue
      @rue = Rue.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rue_params
      params.require(:rue).permit(:rue, :histoire)
    end
end
