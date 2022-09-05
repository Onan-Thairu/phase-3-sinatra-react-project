class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/blockers" do
    blockers = Blocker.all
    blockers.to_json
  end

end
