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
def num_points_scored(player_in_question)
  total_points_scored = nil
  # binding.pry
game_hash.map do |key, value|
  value.each do |info, name|
    # binding.pry
  if info == :players
    name.map do |player_hash|
      player_hash.map do |key, value|
      if value == player_in_question
        player_hash.map do |points, points_scored|
if points == :points
  total_points_scored = points_scored
# binding.pry
end
end
end
end
end
end
end
end
total_points_scored
end

def shoe_size(player_in_question)
  total_points_scored = nil
  # binding.pry
game_hash.map do |key, value|
  value.each do |info, name|
    
  if info == :players
    name.map do |player_hash|
      player_hash.map do |key, value|
      if value == player_in_question
        player_hash.map do |points, points_scored|
if points == :shoe
  total_points_scored = points_scored
# binding.pry
end
end
end
end
end
end
end
end
total_points_scored
end

def team_colors(team)
  team_colors = []
  game_hash.each do |h_a, team_hash|
    team_hash.each do |atts, stats|
    if stats == team
      team_hash.each do |atts1, stats1|
        if atts1 == :colors
          team_colors << stats1
        end
    end
    end
  end
end
team_colors.flatten
end
def team_names
end

def team_names
  team_names = []
  game_hash.each do |h_a, team_hash|
    team_hash.each do |atts, stats|
    if atts == :team_name
      team_names << stats
      
    end
    end
  end
  p team_names
end

def player_numbers(team)
  player_numbers =[]
  game_hash.each do |h_a, team_hash|
  p team_hash
  team_hash.each do |k,v|
if v == team
  
   team_hash.each do |t_stats, player_stats|
    if player_stats.class == Array
      
      player_stats.each do |player_array|
       if player_array.class == Hash
        player_array.each do |p_stat, p_att|
          if p_stat == :number
            player_numbers<<p_att
          end
        end
       end
      end
      end
    end
    end
end

   end
player_numbers
  end
  
  def player_stats(player)
  player_deets = {}
  game_hash.each do |h_a, team_hash|
    
    team_hash.each do |player_hash, player_info|
     if player_info.class != String
    
    player_info.each do |player_stat, player_att|
      if player_stat.class != String
        player_stat.each do |k,v|
      if v == player
        
player_deets = player_stat
player_deets
      end
    end
  end
end
  
end

end
end
player_deets
end
def find_the_largest_shoe
  largest_shoe = nil
  largest_shoe_array = []
  game_hash.each do |h_a, team_hash|
   team_hash.each do |k,player_arrays|
    
      if player_arrays.class == Array
       
        player_arrays.each do |k, v|
         if k.class == Hash
          k.each do |player_stat, player_att|
            if player_stat == :shoe
              largest_shoe_array << player_att
            end
          end
         end
            
        end
      end
    end
    end
  largest_shoe = largest_shoe_array.sort.last
    
end
  def big_shoe_rebounds
  most_rebounds = nil
  game_hash.each do |h_a, team_hash|
   team_hash.each do |k,player_arrays|
    
      if player_arrays.class == Array
       
        player_arrays.each do |k, v|
         if k.class == Hash
          k.each do |player_stat, player_att|
            if player_att == find_the_largest_shoe &&
               player_stat == :shoe
               k.each do |player_stat1, player_att1|
              if player_stat1 == :rebounds
                most_rebounds = player_att1
            end
          end
         end
            
        end
      end
    end
    end
  end
end
    most_rebounds
end

# Write code here