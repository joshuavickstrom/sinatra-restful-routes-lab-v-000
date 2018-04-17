
class RecipesController < ApplicationController
  get '/recipes' do
    erb :"recipes/index"
  end

  get '/recipes/:id' do
    erb :"recipes/show"
  end
end
