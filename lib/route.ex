defmodule Route do

  import Weber.Route
  require Weber.Route

  route on("GET", "/", :TestMongoApp.Main, :index)
    |>  on("POST", "/add", :TestMongoApp.Main, :add)
    |>  on("GET", "/list", :TestMongoApp.List, :list)
    |>  on("GET", "/find", :TestMongoApp.List, :find)

end
