class CommentsController < ApplicationController
	def create
		@event = Event.find(params[:event_id])
		@comment = @event.comments.create(comment_params)
		@comment.user = current_user
		redirect_to event_path(@event)
	end

def destory
	@comments.destroy
	redirect_to event_comment_path
end

private

def comment_params
	params.require(:comment).permit(:body)
end


end