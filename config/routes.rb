Rails.application.routes.draw do
  #pular registros
  devise_for :admins, skip: [:registrations]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
