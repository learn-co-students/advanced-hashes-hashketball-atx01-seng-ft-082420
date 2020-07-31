# Write your code below game_hash
require "pry"

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

#Write code here

#Build a method, team_colors, that takes in an argument of the team name and returns an Array of that team's colors.

def team_colors(team_name)
  if team_name == "Brooklyn Nets"
    return ["Black", "White"]
    else return ["Turquoise", "Purple"]
  end
end

def team_names
  team_names =  []
  team_names.push(game_hash[:away][:team_name])
  team_names.push(game_hash[:home][:team_name])
  team_names
end

#This works, but is not very efficient
# def shoe_size(player_name)
# case player_name  
  
# # using when 
# when game_hash[:home][:players][0].values[0]  
#   return game_hash[:home][:players][0].values[2] 
# when game_hash[:home][:players][1].values[0]  
#   return game_hash[:home][:players][1].values[2] 
# when game_hash[:home][:players][2].values[0]  
#   return game_hash[:home][:players][2].values[2] 
# when game_hash[:home][:players][3].values[0]  
#   return game_hash[:home][:players][3].values[2] 
# when game_hash[:home][:players][4].values[0]  
#   return game_hash[:home][:players][4].values[2] 
# when  game_hash[:away][:players][0].values[0]  
#   return game_hash[:away][:players][0].values[2] 
# when  game_hash[:away][:players][1].values[0]  
#   return game_hash[:away][:players][1].values[2] 
# when game_hash[:away][:players][2].values[0]  
#   return game_hash[:away][:players][2].values[2] 
# when game_hash[:away][:players][3].values[0]  
#   return game_hash[:away][:players][3].values[2] 
# when game_hash[:away][:players][4].values[0]  
#   return game_hash[:away][:players][4].values[2] 
# end  
#   end

# def shoe_size(player_name)
#   game_hash.map do |team_type, team_info_hash|
#     team_info_hash.map do |team_info_category, team_info_array|
     
#     if team_info_array.class == Array
       
#       team_info_array.map do |element|
         
#         if element.class == Hash
#         if element.values[0] == player_name
#           return element.values[2]
#             end
#           end
#         end
#       end
#     end
#   end
# end

def shortcut_to_player_aoh
 game_hash.map do |team_type, team_info_hash|
    team_info_hash[:players]
  end.flatten
end
        
         
def shoe_size(player_name)
  player_array = shortcut_to_player_aoh
  
  player_array.map do |player|
        
        if player[:player_name] == player_name
          return player[:shoe]
            end
          end
        end
    
    def num_points_scored(player_name)
player_array = shortcut_to_player_aoh
  
  player_array.map do |player|
        
        if player[:player_name] == player_name
          return player[:points]
            end
          end
        end

# looping through is way less efficient
# def num_points_scored(player_name)
 
#   game_hash.map do |team_type, team_info_hash|
#     team_info_hash.map do |team_info_category, team_info_array|
     
#     if team_info_array.class == Array
       
#       team_info_array.map do |element|
         
#         if element.class == Hash
#         if element.values[0] == player_name
#           return element.values[3]
#             end
#           end
#         end
#       end
#     end
#   end
# end


# def player_stats(player_name)
#   game_hash.map do |team_type, team_info_hash|
#     team_info_hash.map do |team_info_category, team_info_array|
     
#     if team_info_array.class == Array
       
#       team_info_array.map do |element|
         
#         if element.class == Hash
#         if element.values[0] == player_name
#             return element
#             end
#           end
#         end
#       end
#     end
#   end
# end


def player_stats(player_name)
  player_array = shortcut_to_player_aoh
  
  player_array.map do |player|
        
        if player[:player_name] == player_name
          return player
            end
          end
        end
        
   def player_numbers(team_name)
    player_numbers_array = []
    
    game_hash.map do |team_type, team_info_hash|
      
      if team_info_hash[:team_name] == team_name
        team_info_hash[:players].map do |player_hash| 
       
          player_numbers_array.push(player_hash[:number])
          end
        end
      end
      player_numbers_array
    end
    
    def big_shoe_rebounds
       $big_shoe = 10
       $big_man = "Lenny"
    
    game_hash.map do |team_type, team_info_hash|
    
    team_info_hash[:players].map do |player_hash| 
       
         if player_hash[:shoe] > $big_shoe
          $big_shoe = player_hash[:shoe] 
         if player_hash[:shoe] = $big_shoe
          $big_man = player_hash[:rebounds]
            end
        end
     end
   end
   $big_man
 end
      