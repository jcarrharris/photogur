class PicturesController < ApplicationController

  def index
    @pictures = pictures.all
  end

  def show
    @pictures = picture.find(params[:id])
  end

  def new
  	@picture = Picture.new
  end

  def create
  	#Make a new pic with the given params
  	@picture = Picture.new(params[:picture])
  	if @picture.save
  		#if the save for the pic was successful, go to index.html.erb
  		redirect_to pictures_url
  	else
  		#otherwise render the view associated with the action :new
  		render :new
  	end

  	def edit
  		@picture = Picture.find(params[:id])
  		end

  	def update 
  		@picture = Picture.find(params[:id])

  		if @Picture.update_attributes(params[:picture])
  			redirect_to "/pictures/#{@pictures.id}"
  		else 
  			render :edit
  		end
  	end

  	def destroy
  		@picture = Picture.find(params[:id])
  		@picture.destroy
  		redirect_to pictures_url
	end
end