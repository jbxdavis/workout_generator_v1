class MuscleGroupsController < ApplicationController
  def index
    @muscle_groups = MuscleGroup.all

    render("muscle_group_templates/index.html.erb")
  end

  def show
    @muscle_group = MuscleGroup.find(params.fetch("id_to_display"))

    render("muscle_group_templates/show.html.erb")
  end

  def new_form
    @muscle_group = MuscleGroup.new

    render("muscle_group_templates/new_form.html.erb")
  end

  def create_row
    @muscle_group = MuscleGroup.new

    @muscle_group.name = params.fetch("name")

    if @muscle_group.valid?
      @muscle_group.save

      redirect_back(:fallback_location => "/muscle_groups", :notice => "Muscle group created successfully.")
    else
      render("muscle_group_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @muscle_group = MuscleGroup.find(params.fetch("prefill_with_id"))

    render("muscle_group_templates/edit_form.html.erb")
  end

  def update_row
    @muscle_group = MuscleGroup.find(params.fetch("id_to_modify"))

    @muscle_group.name = params.fetch("name")

    if @muscle_group.valid?
      @muscle_group.save

      redirect_to("/muscle_groups/#{@muscle_group.id}", :notice => "Muscle group updated successfully.")
    else
      render("muscle_group_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @muscle_group = MuscleGroup.find(params.fetch("id_to_remove"))

    @muscle_group.destroy

    redirect_to("/muscle_groups", :notice => "Muscle group deleted successfully.")
  end
end
