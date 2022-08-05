class RidersController < ApplicationController

    get '/riders' do
      riders = Rider.all 
      riders.to_json
    end

    # READ
    get '/riders/:id' do
      rider = Rider.find(params[:id])
      rider.to_json
    end

    #CREATE
    post "/riders" do 
        Rider.create(params).to_json
    end

    #UPDATE
    patch "/riders/:id" do 
      #Find the record using the .find method or find_by(attr)
      rider = Rider.find(params[:id])
      rider.update(params)
    end

    #DELETE
    delete "/riders/:id" do
      rider = Rider.find(params[:id])
      rider.destroy
    end

    

end