class Api::V1::ChifoumiController < ApplicationController
  # skip_before_action :verify_authenticity_token
  
  include GameEngine

  def new
    GameEngine.player params[:name]
    GameEngine.player_move params[:move]
    result_play = GameEngine.play_json
    if save_play(result_play).has_key? :OK
      render json: result_play
    else
      render json: { error: 'Unable to save Score' }, status: 400
    end
  end

  private

  def save_play(result)
    moves = result[:moves]
    winner = result[:result]
    player_move = moves[0]
    bot_move = moves[1]

    score = Score.new

    score.playername = player_move[:name]
    score.playermove = player_move[:move]
    score.botname = bot_move[:name]
    score.botmove = bot_move[:move]
    score.result = winner

    if score.save
      { OK: 'Score Save' }
    else
      { error: 'Unable to save Score' }
    end
  end

  def chifoumi_params
    params.permit(:name, :move)
  end
end
