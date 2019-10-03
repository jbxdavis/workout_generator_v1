Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root :to => "lifts#index"
  # Routes for the Template resource:

  # CREATE
  get("/templates/new", { :controller => "templates", :action => "new_form" })
  post("/create_template", { :controller => "templates", :action => "create_row" })

  # READ
  get("/templates", { :controller => "templates", :action => "index" })
  get("/templates/:id_to_display", { :controller => "templates", :action => "show" })

  # UPDATE
  get("/templates/:prefill_with_id/edit", { :controller => "templates", :action => "edit_form" })
  post("/update_template/:id_to_modify", { :controller => "templates", :action => "update_row" })

  # DELETE
  get("/delete_template/:id_to_remove", { :controller => "templates", :action => "destroy_row" })

  #------------------------------

  # Routes for the Equipment requirement resource:

  # CREATE
  get("/equipment_requirements/new", { :controller => "equipment_requirements", :action => "new_form" })
  post("/create_equipment_requirement", { :controller => "equipment_requirements", :action => "create_row" })
  post("/create_equipment_requirement_from_equipment", { :controller => "equipment_requirements", :action => "create_row_from_equipment" })
  post("/create_equipment_requirement_from_lift", { :controller => "equipment_requirements", :action => "create_row_from_lift" })

  # READ
  get("/equipment_requirements", { :controller => "equipment_requirements", :action => "index" })
  get("/equipment_requirements/:id_to_display", { :controller => "equipment_requirements", :action => "show" })

  # UPDATE
  get("/equipment_requirements/:prefill_with_id/edit", { :controller => "equipment_requirements", :action => "edit_form" })
  post("/update_equipment_requirement/:id_to_modify", { :controller => "equipment_requirements", :action => "update_row" })

  # DELETE
  get("/delete_equipment_requirement/:id_to_remove", { :controller => "equipment_requirements", :action => "destroy_row" })
  get("/delete_equipment_requirement_from_equipment/:id_to_remove", { :controller => "equipment_requirements", :action => "destroy_row_from_equipment" })
  get("/delete_equipment_requirement_from_lift/:id_to_remove", { :controller => "equipment_requirements", :action => "destroy_row_from_lift" })

  #------------------------------

  # Routes for the Equipment resource:

  # CREATE
  get("/equipment/new", { :controller => "equipment", :action => "new_form" })
  post("/create_equipment", { :controller => "equipment", :action => "create_row" })

  # READ
  get("/equipment", { :controller => "equipment", :action => "index" })
  get("/equipment/:id_to_display", { :controller => "equipment", :action => "show" })

  # UPDATE
  get("/equipment/:prefill_with_id/edit", { :controller => "equipment", :action => "edit_form" })
  post("/update_equipment/:id_to_modify", { :controller => "equipment", :action => "update_row" })

  # DELETE
  get("/delete_equipment/:id_to_remove", { :controller => "equipment", :action => "destroy_row" })

  #------------------------------

  # Routes for the User inventory resource:

  # CREATE
  get("/user_inventories/new", { :controller => "user_inventories", :action => "new_form" })
  post("/create_user_inventory", { :controller => "user_inventories", :action => "create_row" })
  post("/create_user_inventory_from_equipment", { :controller => "user_inventories", :action => "create_row_from_equipment" })

  # READ
  get("/user_inventories", { :controller => "user_inventories", :action => "index" })
  get("/user_inventories/:id_to_display", { :controller => "user_inventories", :action => "show" })

  # UPDATE
  get("/user_inventories/:prefill_with_id/edit", { :controller => "user_inventories", :action => "edit_form" })
  post("/update_user_inventory/:id_to_modify", { :controller => "user_inventories", :action => "update_row" })

  # DELETE
  get("/delete_user_inventory/:id_to_remove", { :controller => "user_inventories", :action => "destroy_row" })
  get("/delete_user_inventory_from_equipment/:id_to_remove", { :controller => "user_inventories", :action => "destroy_row_from_equipment" })
  get("/delete_user_inventory_from_user/:id_to_remove", { :controller => "user_inventories", :action => "destroy_row_from_user" })

  #------------------------------

  # Routes for the Muscle group resource:

  # CREATE
  get("/muscle_groups/new", { :controller => "muscle_groups", :action => "new_form" })
  post("/create_muscle_group", { :controller => "muscle_groups", :action => "create_row" })

  # READ
  get("/muscle_groups", { :controller => "muscle_groups", :action => "index" })
  get("/muscle_groups/:id_to_display", { :controller => "muscle_groups", :action => "show" })

  # UPDATE
  get("/muscle_groups/:prefill_with_id/edit", { :controller => "muscle_groups", :action => "edit_form" })
  post("/update_muscle_group/:id_to_modify", { :controller => "muscle_groups", :action => "update_row" })

  # DELETE
  get("/delete_muscle_group/:id_to_remove", { :controller => "muscle_groups", :action => "destroy_row" })

  #------------------------------

  # Routes for the Mg target resource:

  # CREATE
  get("/mg_targets/new", { :controller => "mg_targets", :action => "new_form" })
  post("/create_mg_target", { :controller => "mg_targets", :action => "create_row" })
  post("/create_mg_target_from_muscle_group", { :controller => "mg_targets", :action => "create_row_from_muscle_group" })
  post("/create_mg_target_from_lift", { :controller => "mg_targets", :action => "create_row_from_lift" })

  # READ
  get("/mg_targets", { :controller => "mg_targets", :action => "index" })
  get("/mg_targets/:id_to_display", { :controller => "mg_targets", :action => "show" })

  # UPDATE
  get("/mg_targets/:prefill_with_id/edit", { :controller => "mg_targets", :action => "edit_form" })
  post("/update_mg_target/:id_to_modify", { :controller => "mg_targets", :action => "update_row" })

  # DELETE
  get("/delete_mg_target/:id_to_remove", { :controller => "mg_targets", :action => "destroy_row" })
  get("/delete_mg_target_from_mg/:id_to_remove", { :controller => "mg_targets", :action => "destroy_row_from_mg" })
  get("/delete_mg_target_from_lift/:id_to_remove", { :controller => "mg_targets", :action => "destroy_row_from_lift" })

  #------------------------------

  # Routes for the Favorite resource:

  # CREATE
  get("/favorites/new", { :controller => "favorites", :action => "new_form" })
  post("/create_favorite", { :controller => "favorites", :action => "create_row" })
  post("/create_favorite_from_lift", { :controller => "favorites", :action => "create_row_from_lift" })

  # READ
  get("/favorites", { :controller => "favorites", :action => "index" })
  get("/favorites/:id_to_display", { :controller => "favorites", :action => "show" })

  # UPDATE
  get("/favorites/:prefill_with_id/edit", { :controller => "favorites", :action => "edit_form" })
  post("/update_favorite/:id_to_modify", { :controller => "favorites", :action => "update_row" })

  # DELETE
  get("/delete_favorite/:id_to_remove", { :controller => "favorites", :action => "destroy_row" })
  get("/delete_favorite_from_lift/:id_to_remove", { :controller => "favorites", :action => "destroy_row_from_lift" })
  get("/delete_favorite_from_user/:id_to_remove", { :controller => "favorites", :action => "destroy_row_from_user" })

  #------------------------------

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
