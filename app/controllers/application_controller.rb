class ApplicationController < Sinatra::Base
    configure do
        set :views, 'app/views'
        
    end

    get "/" do 
        erb :hello
    end

    post "/users" do
        User.create(params)

        redirect "/users"
    end

    get "/users" do
        @users = User.all
        erb :index
    end 

    get "/users/new" do
        erb :new
    end 
end