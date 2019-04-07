Rails.application.routes.draw do
  root 'dashboard#show'

  namespace 'api' do
    namespace 'v1' do

      get '/player_characters' to: 'player_characters#index'
      get '/player_characters/:id' to: 'player_characters#show' #gets one player_character by id, later implementations will have by name

      get '/races', to: 'races#index' #gets all races
      get '/races/:id', to: 'races#show' #gets one race by id, later implementations will have by name
      # add subraces

      get '/char_classes', to: 'char_classes#index' #gets all char_classes
      get '/char_classes/:id', to: 'char_classes#show' #gets one char_class by id, later implementations will have by name
      # add subclasses

      get '/spells', to: 'spells#index' #gets all spells
      get '/spells/:id', to: 'spells#show' #gets one spell by id, later implementations will have by name
      # add sort by school
      # add sort by level
      # add sort by class
      # add sort by ritual?
      # add sort by components
      # add sort by casting time
      # add sort by concentration?

      get '/adventuring_items', to: 'adventuring_items#index' #gets all adventuring_items
      get '/adventuring_items/:id', to: 'adventuring_items#show' #gets one adventuring_item by id, later implementations will have by name
      # add sort by type
      # add sort by rarity

    end
  end
end
