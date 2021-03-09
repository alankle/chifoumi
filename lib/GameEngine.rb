module GameEngine
  def self.seed(seed_num)
    @seed = seed_num
  end

  def self.player(player_name)
    @player = player_name.downcase
  end

  def self.player_move(move)
    @player_move = move.downcase
  end

  def self.game_rules
    {
      'rock': ['scissors'],
      'paper': ['rock'],
      'scissors': ['paper']
    }
  end

  def self.bot_move
    randomizer = @seed ? Random.new(@seed) : Random.new(Random.new_seed)
    move = %w[rock paper scissors]
    move.sample(random: randomizer)
  end

  def self.play
    bot_moved = bot_move
    result = if game_rules[bot_moved.to_sym].include? @player_move
               'Bot wins'
             elsif game_rules[@player_move.to_sym].include? bot_moved
               "#{@player} wins"
             else
               'Tie'
             end
    { result: result, bot_moved: bot_moved }
  end

  def self.play_json
    result_play = play
    {
      moves: [
        { name: @player, move: @player_move },
        { name: 'Bot', move: result_play[:bot_moved] }
      ],
      result: result_play[:result]
    }
  end
end
