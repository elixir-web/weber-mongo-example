defmodule TestMongoApp.Main do

  import Weber.Http.Params

  def index([], _conn) do
    {:render, [], []}
  end

  def add([], conn) do
    name = param("name", conn)
    age = param("age", conn)
    User.new(name: name, age: age).save()
  	{:json, [result: "ok"], []}
  end

end
