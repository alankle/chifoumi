#require 'rails_helper'
require 'spec_helper'

include GameEngine

describe GameEngine do
  it 'paper > rock' do
    GameEngine.player('ponky')
    GameEngine.player_move('rock')
    GameEngine.seed(1)
    expect(GameEngine.play[:result]).to eq('Bot wins')
  end

  it 'paper == paper' do
    GameEngine.player('ponky')
    GameEngine.player_move('paper')
    GameEngine.seed(1)
    expect(GameEngine.play[:result]).to eq('Tie')
  end

  it 'paper < scissors' do
    GameEngine.player('ponky')
    GameEngine.player_move('scissors')
    GameEngine.seed(1)
    expect(GameEngine.play[:result]).to eq('ponky wins')
  end
end
