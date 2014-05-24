class CharactersController < ApplicationController
  def new
	@character = Character.new
  end

  def create
	@character = Character.new
	@character.name = params[:character][:name]
	@character.age = params[:character][:age]
    @character.place = params[:character][:place]
    @character.gender = params[:character][:gender]
    @character.bio = params[:character][:bio]
    @character.published_on = DateTime.now
    @character.user = params[:character][:user]
	@character.save!
	redirect_to :actions => :index
  end

  def edit
	@character = Character.find(params[:id])
  end

  def update
  	@character = Character.find(params[:id])

	@character.name = params[:character][:name]
	@character.age = params[:character][:age]
    @character.place = params[:character][:place]
    @character.gender = params[:character][:gender]
    @character.bio = params[:character][:bio]
    @character.user = params[:character][:user]
	@character.save!
	redirect_to :actions => :show
  end

  def delete
	@character = Character.find(params[:id])
	@character.destroy
	redirect_to :action => :index
  end

  def index
	@character = Character.all
  end
  
  def show
	@character = Character.find(params[:id])
  end
end
