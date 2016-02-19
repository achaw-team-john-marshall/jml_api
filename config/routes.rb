Rails.application.routes.draw do

  resources :options, except: [:new, :edit]
  scope '/api' do
    resources :questions, except: [:new, :edit]
  end

end
