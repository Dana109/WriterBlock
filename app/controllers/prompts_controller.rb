class PromptsController < ApplicationController
  def new
	@prompt = Prompt.new
  end

  def create
	@prompt = Prompt.new
	@prompt.content = params[:prompt][:content]
	@prompt.user = params[:prompt][:user]
	@prompt.published_on = params[:prompt][:published_on]
	@prompt.save!
	redirect_to :actions => :show
  end

  def edit
	@prompt = Prompt.find(params[:id])
  end

  def update
	@prompt = Prompt.find(params[:id])
	@prompt.content = params[:prompt][:content]
	@prompt.user = params[:prompt][:user]
	@prompt.published_on = params[:prompt][:published_on]
	@prompt.save!
	redirect_to :actions => :index
  end

  def destroy
 	@prompt = Prompt.find(params[:id])
	@prompt.destroy
	redirect_to :action => :index
  end

  def index
	@prompt = Prompt.all
  end
end
