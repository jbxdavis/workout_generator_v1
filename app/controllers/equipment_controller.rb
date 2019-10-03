class EquipmentController < ApplicationController
  def index
    @equipment = Equipment.all

    render("equipment_templates/index.html.erb")
  end

  def show
    @equipment_requirement = EquipmentRequirement.new
    @user_inventory = UserInventory.new
    @equipment = Equipment.find(params.fetch("id_to_display"))

    render("equipment_templates/show.html.erb")
  end

  def new_form
    @equipment = Equipment.new

    render("equipment_templates/new_form.html.erb")
  end

  def create_row
    @equipment = Equipment.new

    @equipment.name = params.fetch("name")

    if @equipment.valid?
      @equipment.save

      redirect_back(:fallback_location => "/equipment", :notice => "Equipment created successfully.")
    else
      render("equipment_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @equipment = Equipment.find(params.fetch("prefill_with_id"))

    render("equipment_templates/edit_form.html.erb")
  end

  def update_row
    @equipment = Equipment.find(params.fetch("id_to_modify"))

    @equipment.name = params.fetch("name")

    if @equipment.valid?
      @equipment.save

      redirect_to("/equipment/#{@equipment.id}", :notice => "Equipment updated successfully.")
    else
      render("equipment_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @equipment = Equipment.find(params.fetch("id_to_remove"))

    @equipment.destroy

    redirect_to("/equipment", :notice => "Equipment deleted successfully.")
  end
end
