Rails.application.routes.draw do
  get("/", { :controller => "application", :action => "homepage" })

  get("/director/eldest",{:controller=> "directors", :action=> "wisest" })
  get("/director/youngest",{:controller=> "directors", :action=> "youngest" })
  get("/directors",{:controller=> "directors", :action=> "index" })
  get("/director",{:controller=> "directors", :action=> "index" })
  get("/actor",{:controller=> "actors", :action=> "index" })
  get("/movie",{:controller=> "movies", :action=> "index" })
  get("/character",{:controller=> "characters", :action=> "index" })
end
