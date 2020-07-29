module GenresHelper
  include ApplicationHelper
  
  def allowed_params(*args)
    super(:genre, *args)
  end
end
