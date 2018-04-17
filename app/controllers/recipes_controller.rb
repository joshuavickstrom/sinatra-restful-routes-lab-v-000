
class RecipesController < ApplicationController
  get '/recipes' do
    erb :index
  end
end
