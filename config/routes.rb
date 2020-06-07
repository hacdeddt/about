Rails.application.routes.draw do
  root "home#index"
  get "about", to: "home#about", as: :about
  get "contact", to: "home#contact", as: :contact
  post "/send_email_contact", to: "home#send_email_contact"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
