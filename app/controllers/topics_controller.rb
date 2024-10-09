class TopicsController < ApplicationController
  def show
    @topic = Topic.find_by(name: params[:name])

    if @topic.nil?
      # Handle the case when the topic is not found
      redirect_to root_path, alert: "Topic not found"
    end
  end
end
