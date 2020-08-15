require 'pry'

# Write your code below game_hash
def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        {
          player_name: "Bismack Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10
        },
        {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        {
          player_name: "Kemba Walker",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end

# This method will return the points scored by each player on each team

def num_points_scored(player_name)
  game_hash.each do |location, team_data|
    team_data[:players].each do |attributes|
      if attributes[:player_name] == player_name
        return attributes[:points]
      end
    end
  end
end

# This method will return the shoe size of each player

def shoe_size(player_name)
  game_hash.each do |location, team_data|
    team_data[:players].each do |attributes|
      if attributes[:player_name] == player_name
        return attributes[:shoe]
      end
    end
  end
end

# This method will return the colors of each team

def team_colors(team_name)
  game_hash.each do |location, team_data|
    if team_data[:team_name] == team_name
      return team_data[:colors].to_a 
    end
  end
end

# This method will call for each team name

def team_names
  game_hash.map do |location, team_data|
    team_data[:team_name]
  end
end

# This method will return each player's numbers

def player_numbers(team_name)
  results = []
  
  game_hash.each do |location, team_data|
    if team_data[:team_name] == team_name
      team_data.each do |attributes, data|
        if attributes == :players
          data.each do |data_item|
            results << data_item[:number]
          end
        end
      end
    end
  end
  return results
end

# This method will return each player's stats 

def player_stats(player_name)
  game_hash.each do |location, team_data|
    team_data.each do |attributes, data|
      if attributes == :players
        data.each do |data_item|
          if player_name == data_item[:player_name]
            return data_item
          end
        end
      end
    end
  end
end

# This method will return the amount of rebounds for the largest shoe size.

# Home: Mason, shoe: 19, rebound: 11, hash[3]

def big_shoe_rebounds
  # Set two objects to equal integer values of 0 to be called/changed by the method
  biggest_shoe_size = 0
  number_of_rebounds = 0
  
  game_hash.each do |location, team_data|
    team_data[:players].each do |attributes| # Calls the stats of each player within the :players array 
      if attributes[:shoe] > biggest_shoe_size # Finds and calls the largest integer value in the shoe key
        biggest_shoe_size = attributes[:shoe] # Sets value for biggest_shoe_size to equal the shoe value
        number_of_rebounds = attributes[:rebounds] # Sets value for number_of_rebounds to equal the rebounds value
      end
    end
  end
  return number_of_rebounds
end

