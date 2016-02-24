Rails.application.routes.draw do

  resources :questionnaire_choices, except: [:new, :edit]
  scope '/api' do
    resources :questions, except: [:new, :edit]
  end

end
