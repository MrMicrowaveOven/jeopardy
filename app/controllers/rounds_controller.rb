class RoundsController < ApplicationController
  before_action :set_round, only: [:show, :edit, :update]
  # GET /rounds/1
  # GET /rounds/1.json
  def show
    round = Round.find(params["id"])
    @round_props = { name: "Stranger" }
  end

  # GET /rounds/new
  def new
    @game = Game.find(params["game_id"])
    @round = @game.rounds.build
  end

  # GET /rounds/1/edit
  def edit
  end

  # POST /rounds
  # POST /rounds.json
  def create
    @game = Game.find(params["game_id"])
    @round = @game.rounds.new(round_params)

    respond_to do |format|
      if @round.save
        format.html { redirect_to @game, notice: 'Round was successfully created.' }
        format.json { render :show, status: :created, location: @game }
      else
        format.html { render :new }
        format.json { render json: @round.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rounds/1
  # PATCH/PUT /rounds/1.json
  def update
    respond_to do |format|
      if @round.update(round_params)
        format.html { redirect_to @round, notice: 'Round was successfully updated.' }
        format.json { render :show, status: :ok, location: @round }
      else
        format.html { render :edit }
        format.json { render json: @round.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rounds/1
  # DELETE /rounds/1.json
  def destroy
    @round = Round.find(params["id"])
    @game = @round.game
    @round.destroy
    respond_to do |format|
      format.html { redirect_to game_url(@game.id), notice: 'Round was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_round
      @round = Round.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def round_params
      params.require(:round).permit(:title, :game_id)
    end
end
