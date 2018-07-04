class TeachersController < ApplicationController
  before_action :authenticate_user!

  def myClassrooms
    @classrooms = Classroom.where(user_id: current_user.id)
  end

end
