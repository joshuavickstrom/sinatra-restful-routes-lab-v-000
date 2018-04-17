
class RecipesController < ApplicationController
  get '/recipes' do
    erb :"recipes/index"
  end

  get '/recipes/new' do
    erb :new
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
end
