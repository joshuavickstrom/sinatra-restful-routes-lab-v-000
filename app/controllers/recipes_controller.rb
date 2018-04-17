
class RecipesController < ApplicationController
  get '/recipes' do
    erb :"recipes/index"
  end


  get '/recipes/:id' do
    @recipe = Recipe.find_by_id(params[:id])
    erb :"recipes/show"
  end

  delete '/recipes/:id/delete' do
    @recipe = Recipe.find_by_id(params[:id])
    @recipe.destroy
    redirect '/recipes'
  end

  get '/recipes/:id/edit' do
    @recipe = Recipe.find_by_id(params[:id])
    erb :"recipes/edit"
  end

  patch '/recipes/:id' do
    @recipe = Recipe.find_by_id(params[:id])
    erb :"recipes/show"
  end

  post '/recipes' do
    @recipe = Recipe.create(params)
    redirect to "/recipes/#{@recipe.id}"
  end
end
