class LiftsController < ApplicationController
  def index
    @q = Lift.ransack(params[:q])
    @lifts = @q.result(:distinct => true).includes(:favorites, :mg_targets, :equipment_requirements, :required_equipment, :mgs_targeted, :users_favorited).page(params[:page]).per(10)

    render("lift_templates/index.html.erb")
  end

  def show
    @equipment_requirement = EquipmentRequirement.new
    @mg_target = MgTarget.new
    @favorite = Favorite.new
    @lift = Lift.find(params.fetch("id_to_display"))

    render("lift_templates/show.html.erb")
  end

  def new_form
    @lift = Lift.new

    render("lift_templates/new_form.html.erb")
  end

  def create_row
    @lift = Lift.new

    @lift.cooldown_hours = params.fetch("cooldown_hours")
    @lift.name = params.fetch("name")

    if @lift.valid?
      @lift.save

      redirect_back(:fallback_location => "/lifts", :notice => "Lift created successfully.")
    else
      render("lift_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @lift = Lift.find(params.fetch("prefill_with_id"))

    render("lift_templates/edit_form.html.erb")
  end

  def update_row
    @lift = Lift.find(params.fetch("id_to_modify"))

    @lift.cooldown_hours = params.fetch("cooldown_hours")
    @lift.name = params.fetch("name")

    if @lift.valid?
      @lift.save

      redirect_to("/lifts/#{@lift.id}", :notice => "Lift updated successfully.")
    else
      render("lift_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @lift = Lift.find(params.fetch("id_to_remove"))

    @lift.destroy

    redirect_to("/lifts", :notice => "Lift deleted successfully.")
  end
end
