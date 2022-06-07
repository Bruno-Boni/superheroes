class Api::V1::UniversesController < ApplicationController
  before_action :set_universe, only: %i[ show update destroy ]

  # GET /universes
  def index
    @universes = Universe.all

    render json: @universes
  end

  # GET /universes/1
  def show
    render json: @universe
  end

  # POST /universes
  def create
    @universe = Universe.new(universe_params)

    if @universe.save
      render json: @universe, status: :created, location: @universe
    else
      render json: @universe.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /universes/1
  def update
    if @universe.update(universe_params)
      render json: @universe
    else
      render json: @universe.errors, status: :unprocessable_entity
    end
  end

  # DELETE /universes/1
  def destroy
    @universe.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_universe
      @universe = Universe.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def universe_params
      params.require(:universe).permit(:name)
    end
end
