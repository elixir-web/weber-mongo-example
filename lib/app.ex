defmodule TestMongoApp do

  require Weber.Templates.ViewsLoader

  def start(_type, _args) do
    # setup mongoex
    Mongoex.Server.setup(address: 'localhost', port: 27017, database: :test_mongo_app)
    Mongoex.Server.start
    # Set resources
    Weber.Templates.ViewsLoader.set_up_resources(File.cwd!)
    # compile all views
    Weber.Templates.ViewsLoader.compile_views(File.cwd!)
    # start weber application
    Weber.run_weber

  end

  def stop(_state) do
    :ok
  end

end
