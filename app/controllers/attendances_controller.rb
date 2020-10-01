class AttendancesController < ApplicationController
    def new 
        @event_attended = current_user.attendances.build
    end

    def create 
        @event_attended = current_user.attendances.build
        @event_attended.attended_event_id = params[:event_id]
        @event_attended.save
        redirect_to root_path
    end
end
