Rails.application.routes.draw do
  get '/messages' => 'messages#show'
  post '/messages' => 'messages#create'
  get '/bios/:name '=> 'bios#show'
end
