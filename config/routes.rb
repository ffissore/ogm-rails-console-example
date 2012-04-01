RubyConsole::Application.routes.draw do

  resources :helloworlds

  match "/console" => "console#show", :via => :get
  match "/console" => "console#exec", :via => :post

end
