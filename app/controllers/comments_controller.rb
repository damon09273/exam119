class CommentsController < ApplicationController
	
	before_action :authenticate_user!
  # before_action :set_topic


	def create
		@event = Event.find(params[:event_id])
		@comment = @event.comments.new(comment_params)
		@comment.user = current_user

		if @comment.save
			redirect_to event_path(@event)
		else
			render "topic/show"
		# @event = Event.find(params[:event_id])
		end
	end

	def destroy
		@comment = Comment.find(params[:id])
		@comment.destroy
		redirect_to event_path(params[:event_id])
	end


private

def comment_params
	params.require(:comment).permit(:body)
end


end