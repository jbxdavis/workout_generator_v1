class UserInventoriesController < ApplicationController
  def index
    @user_inventories = UserInventory.all

    render("user_inventory_templates/index.html.erb")
  end

  def show
    @user_inventory = UserInventory.find(params.fetch("id_to_display"))

    render("user_inventory_templates/show.html.erb")
  end

  def new_form
    @user_inventory = UserInventory.new

    render("user_inventory_templates/new_form.html.erb")
  end

  def create_row
    @user_inventory = UserInventory.new

    @user_inventory.user_id = params.fetch("user_id")
    @user_inventory.equipment_id = params.fetch("equipment_id")

    if @user_inventory.valid?
      @user_inventory.save

      redirect_back(:fallback_location => "/user_inventories", :notice => "User inventory created successfully.")
    else
      render("user_inventory_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @user_inventory = UserInventory.find(params.fetch("prefill_with_id"))

    render("user_inventory_templates/edit_form.html.erb")
  end

  def update_row
    @user_inventory = UserInventory.find(params.fetch("id_to_modify"))

    @user_inventory.user_id = params.fetch("user_id")
    @user_inventory.equipment_id = params.fetch("equipment_id")

    if @user_inventory.valid?
      @user_inventory.save

      redirect_to("/user_inventories/#{@user_inventory.id}", :notice => "User inventory updated successfully.")
    else
      render("user_inventory_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row_from_user
    @user_inventory = UserInventory.find(params.fetch("id_to_remove"))

    @user_inventory.destroy

    redirect_to("/users/#{@user_inventory.user_id}", notice: "UserInventory deleted successfully.")
  end

  def destroy_row_from_equipment
    @user_inventory = UserInventory.find(params.fetch("id_to_remove"))

    @user_inventory.destroy

    redirect_to("/equipment/#{@user_inventory.equipment_id}", notice: "UserInventory deleted successfully.")
  end

  def destroy_row
    @user_inventory = UserInventory.find(params.fetch("id_to_remove"))

    @user_inventory.destroy

    redirect_to("/user_inventories", :notice => "User inventory deleted successfully.")
  end
end
