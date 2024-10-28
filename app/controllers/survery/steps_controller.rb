class Survery::StepsController < ApplicationController
  inlcude Wicked::Wizard
  steps *Survey.form_steps
  def show
    @survey = Survey.find(params[:survey_id])
    render_wizard
  end

  def update
  end
end
