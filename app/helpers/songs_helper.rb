module SongsHelper
  include ApplicationHelper
  
  def allowed_params(*args)
    super(:song, *args)
  end
end
