require 'subdomain'

Example::Application.routes.draw do
  
  constraints(NotDav) do
    get "home/index"
    devise_for :users
    root :to => "home#index"
  end  
  
  constraints :subdomain => 'webdav' do
    mount DAV4Rack::Handler.new(
     :root => File.join(Rails.root, 'public', 'system', 'userfiles'),
     :root_uri_path => '/',
     :resource_class => Example::MyResource
    ), :at => '/'
  end
     
end
