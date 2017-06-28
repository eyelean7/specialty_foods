class SentencesController < ApplicationController
  before_action :find_story
  def new
    @sentence = @story.sentences.new
  end

  def create
    @sentence = @story.sentences.new(sentence_params)
    if @sentence.save
      redirect_to story_path(@story)
    else
      render :new
    end
  end

  def edit
    @sentence = Sentence.find(params[:id])
  end

  def update
    @sentence = Sentence.find(params[:id])
    if @sentence.update(sentence_params)
      redirect_to story_path(@story)
    else
      render :edit
    end
  end

  def destroy
    @sentence = Sentence.find(params[:id])
    @sentence.destroy
    redirect_to story_path(@story)
  end

private

  def sentence_params
    params.require(:sentence).permit(:content, :author)
  end
  def find_story
    @story = Story.find(params[:story_id])
  end
end
