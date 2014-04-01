class SpeciesController < ApplicationController

  def index
    @species = Species.all
    render('species/index.html.erb')
  end

  def create
    {:new_species => {:name => params[:name], :kind => params[:kind]}}
    @species = Species.create(params[:new_species])
    render('species/success.html.erb')
  end

  def new
    @species = Species.new
    render('species/new.html.erb')
  end

end
