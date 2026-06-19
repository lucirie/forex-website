Rails.application.routes.draw do
  get "converter/index"
  get "up" => "rails/health#show", as: :rails_health_check
  root "converter#index"
end
