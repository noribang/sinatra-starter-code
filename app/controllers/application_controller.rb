require 'pry'

require 'pry'

class ApplicationController < Sinatra::Base
    set default_content_type: "application/json"

    # read
    get '/users' do
        users = User.all
        users.to_json
    end

    get '/todos' do
        todos = Todo.all
        todos.to_json
    end

    # create
    post '/todos' do
        # create instance
        todo = Todo.create(
            body: params[:body],
            importance: params[:importance],
            user_id: params[:user_id]
        )
        # send response
        todo.to_json
    end

    # update
    patch '/users/:id' do
        # find it
        user = User.find(params[:id])
        # update user from params data in 
        # the body of the request 
        user.update(
            first_name: params[:first_name]
        )
        # send response
        user.to_json
    end

    # destroy
    delete '/todos/:id' do
        # find the todo using the ID
        todo = Todo.find(params[:id])
        # delete the todo
        todo.destroy
        # send a response with the deleted 
        # todo as JSON 
        todo.to_json
    end


end

# This controller will be the "entry point" to our Sinatra 
# app. All other controllers will inherit from ApplicationController

