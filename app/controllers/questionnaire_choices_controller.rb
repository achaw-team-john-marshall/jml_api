class QuestionnaireChoicesController < ApplicationController
  before_action :set_questionnaire_choice, only: [:show, :update, :destroy]

  # GET /questionnaire_choices
  # GET /questionnaire_choices.json
  def index
    @questionnaire_choices = QuestionnaireChoice.all

    render json: @questionnaire_choices
  end

  # GET /questionnaire_choices/1
  # GET /questionnaire_choices/1.json
  def show
    render json: @questionnaire_choice
  end

  # POST /questionnaire_choices
  # POST /questionnaire_choices.json
  def create
    @questionnaire_choice = QuestionnaireChoice.new(questionnaire_choice_params)

    if @questionnaire_choice.save
      render json: @questionnaire_choice, status: :created, location: @questionnaire_choice
    else
      render json: @questionnaire_choice.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /questionnaire_choices/1
  # PATCH/PUT /questionnaire_choices/1.json
  def update
    @questionnaire_choice = QuestionnaireChoice.find(params[:id])

    if @questionnaire_choice.update(questionnaire_choice_params)
      head :no_content
    else
      render json: @questionnaire_choice.errors, status: :unprocessable_entity
    end
  end

  # DELETE /questionnaire_choices/1
  # DELETE /questionnaire_choices/1.json
  def destroy
    @questionnaire_choice.destroy

    head :no_content
  end

  private

    def set_questionnaire_choice
      @questionnaire_choice = QuestionnaireChoice.find(params[:id])
    end

    def questionnaire_choice_params
      params.require(:questionnaire_choice).permit(:body, :visible, :position)
    end
end
