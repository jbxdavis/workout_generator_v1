class EquipmentRequirementsController < ApplicationController
  def index
    @equipment_requirements = EquipmentRequirement.page(params[:page]).per(10)

    render("equipment_requirement_templates/index.html.erb")
  end

  def show
    @equipment_requirement = EquipmentRequirement.find(params.fetch("id_to_display"))

    render("equipment_requirement_templates/show.html.erb")
  end

  def new_form
    @equipment_requirement = EquipmentRequirement.new

    render("equipment_requirement_templates/new_form.html.erb")
  end

  def create_row
    @equipment_requirement = EquipmentRequirement.new

    @equipment_requirement.lift_id = params.fetch("lift_id")
    @equipment_requirement.equipment_id = params.fetch("equipment_id")

    if @equipment_requirement.valid?
      @equipment_requirement.save

      redirect_back(:fallback_location => "/equipment_requirements", :notice => "Equipment requirement created successfully.")
    else
      render("equipment_requirement_templates/new_form_with_errors.html.erb")
    end
  end

  def create_row_from_lift
    @equipment_requirement = EquipmentRequirement.new

    @equipment_requirement.lift_id = params.fetch("lift_id")
    @equipment_requirement.equipment_id = params.fetch("equipment_id")

    if @equipment_requirement.valid?
      @equipment_requirement.save

      redirect_to("/lifts/#{@equipment_requirement.lift_id}", notice: "EquipmentRequirement created successfully.")
    else
      render("equipment_requirement_templates/new_form_with_errors.html.erb")
    end
  end

  def create_row_from_equipment
    @equipment_requirement = EquipmentRequirement.new

    @equipment_requirement.lift_id = params.fetch("lift_id")
    @equipment_requirement.equipment_id = params.fetch("equipment_id")

    if @equipment_requirement.valid?
      @equipment_requirement.save

      redirect_to("/equipment/#{@equipment_requirement.equipment_id}", notice: "EquipmentRequirement created successfully.")
    else
      render("equipment_requirement_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @equipment_requirement = EquipmentRequirement.find(params.fetch("prefill_with_id"))

    render("equipment_requirement_templates/edit_form.html.erb")
  end

  def update_row
    @equipment_requirement = EquipmentRequirement.find(params.fetch("id_to_modify"))

    @equipment_requirement.lift_id = params.fetch("lift_id")
    @equipment_requirement.equipment_id = params.fetch("equipment_id")

    if @equipment_requirement.valid?
      @equipment_requirement.save

      redirect_to("/equipment_requirements/#{@equipment_requirement.id}", :notice => "Equipment requirement updated successfully.")
    else
      render("equipment_requirement_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row_from_lift
    @equipment_requirement = EquipmentRequirement.find(params.fetch("id_to_remove"))

    @equipment_requirement.destroy

    redirect_to("/lifts/#{@equipment_requirement.lift_id}", notice: "EquipmentRequirement deleted successfully.")
  end

  def destroy_row_from_equipment
    @equipment_requirement = EquipmentRequirement.find(params.fetch("id_to_remove"))

    @equipment_requirement.destroy

    redirect_to("/equipment/#{@equipment_requirement.equipment_id}", notice: "EquipmentRequirement deleted successfully.")
  end

  def destroy_row
    @equipment_requirement = EquipmentRequirement.find(params.fetch("id_to_remove"))

    @equipment_requirement.destroy

    redirect_to("/equipment_requirements", :notice => "Equipment requirement deleted successfully.")
  end
end
