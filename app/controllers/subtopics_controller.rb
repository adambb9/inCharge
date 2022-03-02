class SubtopicsController < ApplicationController
  before_action :set_subtopic, only: [:show]
  def index
    @subtopics = Subtopic.where(topic_id: params[:topic_id])
  end

  def show
  end

  private

  def set_topic
    @topictopic = Subtopic.find(params[:topic_id])
  end

  def set_subtopic
    @subtopic = Subtopic.find(params[:subtopic_id])
  end
end
