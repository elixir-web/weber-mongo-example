defmodule TestMongoApp.List do
  
  import Weber.Http.Params

  def list([], _conn) do
    {:render, []}
  end
  
  def find([], conn) do
    name = param("name", conn)
    user = User.find({:name, name})
    {:json, [result: user.age]}
  end

end
