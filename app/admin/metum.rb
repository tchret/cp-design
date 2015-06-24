ActiveAdmin.register Metum do
  menu false

  # Override with new redirect
  collection_action :update, :method => :put do
    Metum.instance.update_attributes!(params.require(:metum).permit(:slogan, :site_banner, :about))
    redirect_to admin_root_path, {:notice => "Successfully updated settings!"}
  end
end
