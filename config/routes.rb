Rails.application.routes.draw do
  # Routes for the Lift resource:

  # CREATE
  get("/lifts/new", { :controller => "lifts", :action => "new_form" })
  post("/create_lift", { :controller => "lifts", :action => "create_row" })

  # READ
  get("/lifts", { :controller => "lifts", :action => "index" })
  get("/lifts/:id_to_display", { :controller => "lifts", :action => "show" })

  # UPDATE
  get("/lifts/:prefill_with_id/edit", { :controller => "lifts", :action => "edit_form" })
  post("/update_lift/:id_to_modify", { :controller => "lifts", :action => "update_row" })

  # DELETE
  get("/delete_lift/:id_to_remove", { :controller => "lifts", :action => "destroy_row" })

  #------------------------------

  devise_for :users
  # Routes for the User resource:

  # READ
  get("/users", { :controller => "users", :action => "index" })
  get("/users/:id_to_display", { :controller => "users", :action => "show" })

  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
