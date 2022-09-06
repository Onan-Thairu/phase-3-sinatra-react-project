class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/blockers" do
    blockers = Blocker.all
    blockers.to_json
  end

  post "/blockers" do
    blocker = Blocker.create(
      username: params[:username],
      description: params[:description],
      tag: params[:tag],
      solution: params[:solution],
      user_id: params[:user_id]
    )
    blocker.to_json
  end

  get "/blockers/:tag" do
    Blocker.where("tag = ?", params[:tag]).to_json
  end

end
