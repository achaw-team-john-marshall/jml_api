require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

RSpec.describe QuestionnaireChoicesController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # QuestionnaireChoice. As you add validations to QuestionnaireChoice, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # QuestionnaireChoicesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all questionnaire_choices as @questionnaire_choices" do
      questionnaire_choice = QuestionnaireChoice.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:questionnaire_choices)).to eq([questionnaire_choice])
    end
  end

  describe "GET #show" do
    it "assigns the requested questionnaire_choice as @questionnaire_choice" do
      questionnaire_choice = QuestionnaireChoice.create! valid_attributes
      get :show, {:id => questionnaire_choice.to_param}, valid_session
      expect(assigns(:questionnaire_choice)).to eq(questionnaire_choice)
    end
  end

  describe "GET #new" do
    it "assigns a new questionnaire_choice as @questionnaire_choice" do
      get :new, {}, valid_session
      expect(assigns(:questionnaire_choice)).to be_a_new(QuestionnaireChoice)
    end
  end

  describe "GET #edit" do
    it "assigns the requested questionnaire_choice as @questionnaire_choice" do
      questionnaire_choice = QuestionnaireChoice.create! valid_attributes
      get :edit, {:id => questionnaire_choice.to_param}, valid_session
      expect(assigns(:questionnaire_choice)).to eq(questionnaire_choice)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new QuestionnaireChoice" do
        expect {
          post :create, {:questionnaire_choice => valid_attributes}, valid_session
        }.to change(QuestionnaireChoice, :count).by(1)
      end

      it "assigns a newly created questionnaire_choice as @questionnaire_choice" do
        post :create, {:questionnaire_choice => valid_attributes}, valid_session
        expect(assigns(:questionnaire_choice)).to be_a(QuestionnaireChoice)
        expect(assigns(:questionnaire_choice)).to be_persisted
      end

      it "redirects to the created questionnaire_choice" do
        post :create, {:questionnaire_choice => valid_attributes}, valid_session
        expect(response).to redirect_to(QuestionnaireChoice.last)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved questionnaire_choice as @questionnaire_choice" do
        post :create, {:questionnaire_choice => invalid_attributes}, valid_session
        expect(assigns(:questionnaire_choice)).to be_a_new(QuestionnaireChoice)
      end

      it "re-renders the 'new' template" do
        post :create, {:questionnaire_choice => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested questionnaire_choice" do
        questionnaire_choice = QuestionnaireChoice.create! valid_attributes
        put :update, {:id => questionnaire_choice.to_param, :questionnaire_choice => new_attributes}, valid_session
        questionnaire_choice.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested questionnaire_choice as @questionnaire_choice" do
        questionnaire_choice = QuestionnaireChoice.create! valid_attributes
        put :update, {:id => questionnaire_choice.to_param, :questionnaire_choice => valid_attributes}, valid_session
        expect(assigns(:questionnaire_choice)).to eq(questionnaire_choice)
      end

      it "redirects to the questionnaire_choice" do
        questionnaire_choice = QuestionnaireChoice.create! valid_attributes
        put :update, {:id => questionnaire_choice.to_param, :questionnaire_choice => valid_attributes}, valid_session
        expect(response).to redirect_to(questionnaire_choice)
      end
    end

    context "with invalid params" do
      it "assigns the questionnaire_choice as @questionnaire_choice" do
        questionnaire_choice = QuestionnaireChoice.create! valid_attributes
        put :update, {:id => questionnaire_choice.to_param, :questionnaire_choice => invalid_attributes}, valid_session
        expect(assigns(:questionnaire_choice)).to eq(questionnaire_choice)
      end

      it "re-renders the 'edit' template" do
        questionnaire_choice = QuestionnaireChoice.create! valid_attributes
        put :update, {:id => questionnaire_choice.to_param, :questionnaire_choice => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested questionnaire_choice" do
      questionnaire_choice = QuestionnaireChoice.create! valid_attributes
      expect {
        delete :destroy, {:id => questionnaire_choice.to_param}, valid_session
      }.to change(QuestionnaireChoice, :count).by(-1)
    end

    it "redirects to the questionnaire_choices list" do
      questionnaire_choice = QuestionnaireChoice.create! valid_attributes
      delete :destroy, {:id => questionnaire_choice.to_param}, valid_session
      expect(response).to redirect_to(questionnaire_choices_url)
    end
  end

end