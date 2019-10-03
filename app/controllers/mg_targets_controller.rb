class MgTargetsController < ApplicationController
  def index
    @mg_targets = MgTarget.all

    render("mg_target_templates/index.html.erb")
  end

  def show
    @mg_target = MgTarget.find(params.fetch("id_to_display"))

    render("mg_target_templates/show.html.erb")
  end

  def new_form
    @mg_target = MgTarget.new

    render("mg_target_templates/new_form.html.erb")
  end

  def create_row
    @mg_target = MgTarget.new

    @mg_target.mg_id = params.fetch("mg_id")
    @mg_target.lift_id = params.fetch("lift_id")

    if @mg_target.valid?
      @mg_target.save

      redirect_back(:fallback_location => "/mg_targets", :notice => "Mg target created successfully.")
    else
      render("mg_target_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @mg_target = MgTarget.find(params.fetch("prefill_with_id"))

    render("mg_target_templates/edit_form.html.erb")
  end

  def update_row
    @mg_target = MgTarget.find(params.fetch("id_to_modify"))

    @mg_target.mg_id = params.fetch("mg_id")
    @mg_target.lift_id = params.fetch("lift_id")

    if @mg_target.valid?
      @mg_target.save

      redirect_to("/mg_targets/#{@mg_target.id}", :notice => "Mg target updated successfully.")
    else
      render("mg_target_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @mg_target = MgTarget.find(params.fetch("id_to_remove"))

    @mg_target.destroy

    redirect_to("/mg_targets", :notice => "Mg target deleted successfully.")
  end
end
