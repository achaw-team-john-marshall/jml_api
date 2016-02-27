Rails.application.routes.draw do

  scope '/api' do
    resources :questionnaire_choices, except: [:new, :edit]
    resources :questions, except: [:new, :edit]
  end

end
