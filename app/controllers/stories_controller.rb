class StoriesController < ApplicationController
  def new
	@story = Story.new
  end

  def create
	@story = Story.new
	@story.title = params[:story][:title]
	@story.genre = params[:story][:genre]
	@story.published_on = DateTime.now
	@story.content = params[:story][:content]
	@story.user = params[:story][:user]
	@story.save!
	redirect_to :actions => :show
  end

  def edit
	@story = Story.find(params[:id])
  end

  def update
	@story = Story.find(params[:id])
	@story.title = params[:story][:title]
	@story.genre = params[:story][:genre]
	@story.published_on = DateTime.now
	@story.content = params[:story][:content]
	@story.user = params[:story][:user]
	@story.save!
	redirect_to :actions => :show
  end

  def destroy
	@story = Story.find(params[:id])
	@story.destroy
	redirect_to :action => :index
  end

  def show
	@story = Story.find(params[:id])
  end

  def index
	@story = Story.all
  end
end
