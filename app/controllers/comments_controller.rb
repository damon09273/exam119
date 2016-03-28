class CommentsController < ApplicationController
	# 如何在噴錯誤中進行值的測試，例如想得知目前current的值


	def index
		

	end



	def create
		@event = Event.find(params[:event_id])
		@comment = @event.comments.create(comment_params)
		@comment.user = current_user
		@comment.save

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