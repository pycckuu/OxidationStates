class OxidationStatesController < ApplicationController
  before_action :set_oxidation_state, only: [:show, :edit, :update, :destroy]

  # GET /oxidation_states
  # GET /oxidation_states.json
  def index
    @oxidation_states = OxidationState.all
  end

  # GET /oxidation_states/1
  # GET /oxidation_states/1.json
  def show
  end

  # GET /oxidation_states/new
  def new
    @oxidation_state = OxidationState.new
  end

  # GET /oxidation_states/1/edit
  def edit
  end

  # POST /oxidation_states
  # POST /oxidation_states.json
  def create
    @oxidation_state = OxidationState.new(oxidation_state_params)

    respond_to do |format|
      if @oxidation_state.save
        format.html { redirect_to @oxidation_state, notice: 'Oxidation state was successfully created.' }
        format.json { render action: 'show', status: :created, location: @oxidation_state }
      else
        format.html { render action: 'new' }
        format.json { render json: @oxidation_state.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /oxidation_states/1
  # PATCH/PUT /oxidation_states/1.json
  def update
    respond_to do |format|
      if @oxidation_state.update(oxidation_state_params)
        format.html { redirect_to @oxidation_state, notice: 'Oxidation state was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @oxidation_state.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /oxidation_states/1
  # DELETE /oxidation_states/1.json
  def destroy
    @oxidation_state.destroy
    respond_to do |format|
      format.html { redirect_to oxidation_states_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_oxidation_state
      @oxidation_state = OxidationState.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def oxidation_state_params
      params[:oxidation_state]
    end
end
