class StoriesController < ApplicationController
  def new
    @story = Story.new
  end

  def create
    @story = Story.new(story_params)
       if @story.save
            redirect_to @story
        else
            render 'new'
        end
  end

  def show
    @story = Story.find(params[:id])
  end

  def edit
    @story = Story.find(params[:id])
  end

  def update
    @story = Story.find(params[:id])
      if @story.update_attributes(story_params)
        redirect_to @story
      else
        render "edit"
      end
  end

  def destroy
    @story = Story.find(params[:id])
    @story.destroy
    redirect_to '/'
  end

private
  def story_params
     params.require(:story).permit(:title, :html)
  end

end
