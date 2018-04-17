
class RecipesController < ApplicationController
  get '/recipes' do
    erb :"recipes/index"
  end

  get '/recipes/:id' do
    @recipe = Recipe.find_by_id(params[:id])
    erb :"recipes/show"
  end

  get '/recipes/:id/delete' do

  end
end
