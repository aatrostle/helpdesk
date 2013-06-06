Helpdesk::Application.routes.draw do
  resources :tickets
  root to: 'tickets#index'

  match '/update_ticket' =>  'incomingmails#update', :via => :post, :as => :update_ticket
end
