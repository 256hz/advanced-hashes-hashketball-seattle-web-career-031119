require 'pry'

def game_hash
  #team, team_name, colors, players, number, shoe, points, rebounds, assists, blocks, slam_dunks) 
  {
    :home => {:team_name => "Brooklyn Nets", :colors => ["Black", "White"],
             :players => {"Alan Anderson" => {number: 0, shoe: 16, points: 22, rebounds: 12, assists: 12, steals: 3, blocks: 1, slam_dunks: 1},
                         "Reggie Evans"   => {number: 30, shoe: 14, points: 12, rebounds: 12, assists: 12, steals: 12, blocks: 12, slam_dunks: 7},
                         "Brook Lopez"    => {number: 11, shoe: 17, points: 17, rebounds: 19, assists: 10, steals: 3, blocks: 1, slam_dunks: 15},
                         "Mason Plumlee"  => {number: 1, shoe: 19, points: 26, rebounds: 12, assists: 6, steals: 3, blocks: 8, slam_dunks: 5},
                         "Jason Terry"    => {number: 31, shoe: 15, points: 19, rebounds: 2, assists: 2, steals: 4, blocks: 11, slam_dunks: 1}
                          }
                },
    
    :away => {:team_name => "Charlotte Hornets", :colors => ["Turquoise", "Purple"],
             :players => {"Jeff Adrien"   => {number: 4, shoe: 18, points: 10, rebounds: 1, assists: 1, steals: 2, blocks: 7, slam_dunks: 2},
                         "Bismak Biyombo" => {number: 0, shoe: 16, points: 12, rebounds: 4, assists: 7, steals: 7, blocks: 15, slam_dunks: 10},
                         "DeSagna Diop"   => {number: 2, shoe: 14, points: 24, rebounds: 12, assists: 12, steals: 4, blocks: 5, slam_dunks: 5},
                         "Ben Gordon"     => {number: 8, shoe: 15, points: 33, rebounds: 3, assists: 2, steals: 1, blocks: 1 ,slam_dunks: 0},
                         "Brendan Haywood"=> {number: 33, shoe: 15, points: 6, rebounds: 12, assists: 12, steals: 22, blocks: 5 ,slam_dunks: 12}
                          }
                }
    }
end

def big_shoe_size
  biggest_shoe = 0
  biggest_rebounds = 0
  game_hash.keys.each do |team|
    game_hash[team][:players].keys.each do |player|
      if game_hash[team][:players][player][:shoe] > biggest_shoe
        biggest_shoe = game_hash[team][:players][player][:shoe]
        biggest_rebounds = game_hash[team][:players][player][:rebounds]
      end
    end
  end
  biggest_rebounds
end

def player_stats(player_query)
  game_hash.keys.each do |team|
    if game_hash[team][:players].keys.include?(player_query)
      return game_hash[team][:players][player_query]
    end
  end
end
      
#puts game_hash

def num_points_scored(player_query)
  #game_hash = game_has
  points = 0
  game_hash.keys.each do |team|
    #puts game_hash[team][:players].keys
    #binding.pry
    if game_hash[team][:players].keys.include?(player_query)
      points = game_hash[team][:players][player_query][:points]
    end
  end
  points
end

def shoe_size(player_query)
  #size = 0
  game_hash.keys.each do |team|
    #puts game_hash[team][:players].keys
    #binding.pry
    if game_hash[team][:players].keys.include?(player_query)
      return game_hash[team][:players][player_query][:shoe]
    end
  end
  size
end

def team_colors(team_query)
  colors = []
  game_hash.keys.each do |team|
    if game_hash[team][:team_name] == team_query
      return game_hash[team][:colors]
    end
  end
end

def team_names
  names = []
  game_hash.keys.each do |team|
    names << game_hash[team][:team_name]
  end
  names
end

def player_numbers(team_query)
  jerseys = []
  game_hash.keys.each do |team|
    if game_hash[team][:team_name] == team_query
      #binding.pry
      game_hash[team][:players].keys.each do |player|
        jerseys << game_hash[team][:players][player][:number]
      end
    end
  end
  jerseys
end



