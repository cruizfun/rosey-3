Rails.application.routes.draw do

  match("/", { :controller => "posts", :action => "community_index", :via => "get"})

  # Routes for the Headshot resource:

  # CREATE
  match("/insert_headshot", { :controller => "headshots", :action => "create", :via => "post"})
          
  # READ
  match("/headshots", { :controller => "headshots", :action => "index", :via => "get"})
  
  match("/headshots/:id_from_path", { :controller => "headshots", :action => "show", :via => "get"})
  
  # UPDATE
  
  match("/modify_headshot/:id_from_path", { :controller => "headshots", :action => "update", :via => "post"})
  
  # DELETE
  match("/delete_headshot/:id_from_path", { :controller => "headshots", :action => "destroy", :via => "get"})

  #------------------------------

  # Routes for the Vote resource:

  # CREATE
  match("/insert_vote", { :controller => "votes", :action => "create", :via => "post"})
          
  # READ
  match("/votes", { :controller => "votes", :action => "index", :via => "get"})
  
  match("/votes/:id_from_path", { :controller => "votes", :action => "show", :via => "get"})
  
  # UPDATE
  
  match("/modify_vote/:id_from_path", { :controller => "votes", :action => "update", :via => "post"})
  
  # DELETE
  match("/delete_vote/:id_from_path", { :controller => "votes", :action => "destroy", :via => "get"})

  #------------------------------

  # Routes for the Outfit resource:

  # CREATE
  match("/insert_outfit", { :controller => "outfits", :action => "create", :via => "post"})
          
  # READ
  match("/outfits", { :controller => "outfits", :action => "index", :via => "get"})
  
  match("/outfits/:id_from_path", { :controller => "outfits", :action => "show", :via => "get"})
  
  # UPDATE
  
  match("/modify_outfit/:id_from_path", { :controller => "outfits", :action => "update", :via => "post"})
  
  # DELETE
  match("/delete_outfit/:id_from_path", { :controller => "outfits", :action => "destroy", :via => "get"})

  #------------------------------

  # Routes for the Post resource:

  # CREATE
  match("/new_post", { :controller => "posts", :action => "upload", :via => "get"})
  match("/insert_post", { :controller => "posts", :action => "create", :via => "post"})
          
  # READ
  match("/feed", { :controller => "posts", :action => "community_index", :via => "get"})
  match("/feed/:user_username", { :controller => "posts", :action => "user_index", :via => "get"})
  
  # UPDATE
  
  match("/modify_post/:id_from_path", { :controller => "posts", :action => "update", :via => "post"})
  
  # DELETE
  match("/delete_post/:id_from_path", { :controller => "posts", :action => "destroy", :via => "get"})

  #------------------------------

  # Routes for signing up

  match("/sign_up", { :controller => "users", :action => "new_registration_form", :via => "get"})
  
  # Routes for signing in
  match("/sign_in", { :controller => "user_sessions", :action => "new_session_form", :via => "get"})
  
  match("/user_verify_credentials", { :controller => "user_sessions", :action => "add_cookie", :via => "post"})
  
  # Route for signing out
  
  match("/sign_out", { :controller => "user_sessions", :action => "remove_cookies", :via => "get"})
  
  # Route for creating account into database 

  match("/post_user", { :controller => "users", :action => "create", :via => "post" })
  
  # Route for editing account
  
  match("/update_profile", { :controller => "users", :action => "update", :via => "post"})
  match("/edit_user", { :controller => "users", :action => "edit_registration_form", :via => "get"})
  
  # Route for removing an account
  
  match("/cancel_user_account", { :controller => "users", :action => "destroy", :via => "get"})


  #------------------------------

  # ======= Add Your Routes Above These =============
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
end
