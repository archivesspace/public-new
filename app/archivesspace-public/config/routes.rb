Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/', to: 'welcome#show' #'index#index'
  get '/welcome', to: 'welcome#show'
  post '/cite', to: 'cite#show'
  get 'objects/search' => 'objects#search'
  post 'objects/search' => 'objects#search'
  get 'objects' => 'objects#index'
  post 'objects' => 'objects#index'
  get 'accessions/search' => 'accessions#search'
  post 'accessions/search' => 'accessions#search'
  get 'accessions' => 'accessions#index'
  post 'accessions' => 'accessions#index'
  get 'classifications/search' => 'classifications#search'
  post 'classifications/search' => 'classifications#search'
  get 'classifications' => 'classifications#index'
  post 'classifications' => 'classifications#index'
  get 'fill_request' => 'requests#make_request'
  post 'fill_request' => 'requests#make_request'
  get 'subjects/search' => 'subjects#search'
  post 'subjects/search' => 'subjects#search'
  get "subjects/:id" => 'subjects#show'
  get 'subjects' => 'subjects#index'
  post 'subjects' => 'subjects#index'
  get 'agents/search' => 'agents#search'
  post 'agents/search' => 'agents#search'
  get "agents/:eid/:id" => 'agents#show'
  get 'agents' => 'agents#index'

  get 'repositories/resources' => 'resources#index'
  get  "repositories/:rid/accessions/:id" => 'accessions#show'
  post "repositories/:rid/archival_objects/:id/request" => 'objects#request_showing'
  get "repositories/:rid/archival_objects/:id/request" => 'objects#request_showing'
  get  "repositories/:rid/classifications/:id" => 'classifications#show'
  get  "repositories/:rid/classification_terms/:id" => 'classifications#term'
  get  "repositories/:repo_id/resources/:id/search"  => 'resources#search'
  get "repositories/:rid/resources/:id"  => 'resources#show'
  get "repositories/:rid/:obj_type/:id" => 'objects#show'
  get  "repositories/:rid/classifications/" => 'classifications#index'
  post  "repositories/:rid/classifications/" => 'classifications#index'
  get "repositories/:rid/resources" => 'resources#index'
  post "repositories/:rid/resources" => 'resources#index' 
  get  "repositories/:rid/search" => 'search#search'
  post "repositories/:rid/search" => 'search#search'
  get "repositories/:rid/agents" => 'agents#index'
  post "repositories/:rid/agents" => 'agents#index'
  get "repositories/:rid/subjects" => 'subjects#index'
  post "repositories/:rid/subjects" => 'subjects#index'
  get "repositories/:rid/objects" => 'objects#index'
  post "repositories/:rid/objects" => 'objects#index'
  post "repositories/:rid/records" => 'objects#index'
  get "repositories/:id" => 'repositories#show'
  post "repositories/:id" => 'repositories#show'
  
  get '/repositories', to: 'repositories#index'
  get '/search', to: 'search#search'
end
