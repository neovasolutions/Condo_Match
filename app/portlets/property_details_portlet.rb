class PropertyDetailsPortlet < Portlet
  require 'twitter'
  # Mark this as 'true' to allow the portlet's template to be editable via the CMS admin UI.
  enable_template_editor false
     
  def render
    # Your Code Goes Here
    @property=Property.find(params[:id])
  end
    
end