class SightingsController < ApplicationController

  def index
    @sightings = Sighting.all
    render('sightings/index.html.erb')
  end

  def new
    @sighting = Sighting.new
    @species = Species.new
    render('sightings/new.html.erb')
  end

  def create
    @sighting = Sighting.new(params[:new_sighting])
    if @sighting.save
      render('sightings/success.html.erb')
    else
      render('sightings/new.html.erb')
    end
  end

  def show
    @sighting = Sighting.find(params[:id])
    render('sightings/show.html.erb')
  end

  def edit
    @sighting = Sighting.find(params[:id])
    render('sightings/edit.html.erb')
  end

  def update
    @sighting = Sighting.find(params[:id])
    if @sighting.update(params[:updated_sighting])
      render('sightings/success.html.erb')
    else
      render('sightings/edit.html.erb')
    end
  end

  def destroy
    @sighting_to_delete = Sighting.find(params[:id])
    @sighting_to_delete.destroy
    @sightings = Sighting.all
    render('sightings/index.html.erb')
  end

end
