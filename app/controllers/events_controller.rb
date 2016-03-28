class EventsController < ApplicationController

	before_action :authenticate_user!, :except => [:index]
	before_action :set_event, only: [:edit, :show, :update, :destroy]

def index
	@event = Event.new
	@events = Event.all
	@events = Event.page(params[:page]).per(5)
end

def create
	@event = Event.new(event_params)
	@event.user = current_user
	@event.save
	redirect_to events_path
end



def show
	@comment = Comment.new
	@comments = @event.comments
end

def edit
	
end

def update
	@event.update(event_params)
	redirect_to events_path
end

def destroy
	@event.destroy
	redirect_to events_path(:page => params[:page])
end


private	
def set_event
	@event = Event.find(params[:id])
end


def event_params
	params.require(:event).permit(:content, :title,:category_id)
end


end
