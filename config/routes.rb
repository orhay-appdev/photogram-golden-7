Rails.application.routes.draw do
  get("/",{ :controller => "pictures", :action => "index"})
  get("/photos",{ :controller => "pictures", :action => "index"})
  get("/photos/new",{ :controller => "pictures", :action => "new_form"})
  get("/create_photo",{ :controller => "pictures", :action => "ceate_row"})
  get("/photos/:an_id_number",{ :controller => "pictures", :action => "show_detailes"})
  get("/photos/:some_id_number/edit",{ :controller => "pictures", :action => "edit_form"})
  get("/update_photo/:the_id_number",{ :controller => "pictures", :action => "update_row"})
  get("/delete_photo/:bye_id_number",{ :controller => "pictures", :action => "destroy_row"})
  
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
