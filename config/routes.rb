Rails.application.routes.draw do
 namespace :api do
   get '/pets' => 'pets#index'
 end
end
