module ArtistsHelper 
  include ApplicationHelper
  
  def allowed_params(*args)
    super(:artist, *args)
  end
end
