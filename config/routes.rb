Rails.application.routes.draw do

  scope '/api' do
    resources :questions, except: [:new, :edit]
  end

end
