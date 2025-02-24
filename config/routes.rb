Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get("/travel_log", {:controller => "places", :action => "index"})
  # Defines the root path route ("/")
  # get("/", { :controller => "articles", :action => "index" })
  get("/places", {:controller=> "places", :action => "index" })
  get("/places/new", {:controller => "places", :action => "new" })
  post("/places", {:controller => "places", :action => "create" })
  get("/places/:id", {:controller => "places", :action => "show" })

  get("/places/:place_id/entries/new", { :controller => "entries", :action => "new" })
  post("/places/:place_id/entries", { :controller => "entries", :action => "create" })
  
end
