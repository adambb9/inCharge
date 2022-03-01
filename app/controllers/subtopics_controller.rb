class SubtopicsController < ApplicationController
  def index
    @subtopics = Subtopic.where(topic_id: params[:topic_id])
  end

end
