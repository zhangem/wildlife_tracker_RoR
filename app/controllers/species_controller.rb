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

  def edit
    @species = Species.find(params[:id])
    render('species/edit.html.erb')
  end

  def update
    {:updated_species => {:name => params[:name], :kind => params[:kind]}}
    @species = Species.find(params[:id])
    if @species.update(params[:updated_species])
      render('species/success.html.erb')
    else
      render('species/edit.html.erb')
    end
  end

  def destroy
    @species_to_delete = Species.find(params[:id])
    @species_to_delete.destroy
    @species = Species.all
    render('species/index.html.erb')
  end
end
