class ClassroomPolicy
  attr_reader :user, :classroom

  def initialize(user, classroom)
    @user = user
    @classroom = classroom
  end

  def index?
    user.role == 'admin'
  end

  def create?
    user.role == 'admin'
  end

  def show?
    user.role == 'admin' || user.role == 'teacher'
  end

  def edit?
    user.role == 'admin' || user.role == 'teacher'
  end

  def update?
    user.role == 'admin' || user.role == 'teacher'
  end
end
