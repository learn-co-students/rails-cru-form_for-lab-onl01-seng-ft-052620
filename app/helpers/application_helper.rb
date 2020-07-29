module ApplicationHelper
  def current_resource(resource)
    resource.find(params[:id])
  end

  def allowed_params(resource, *args)
    params.require(resource).permit(*args)
  end
end
