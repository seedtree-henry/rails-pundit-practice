class ClassroomPolicy
  attr_reader :user, :classroom

  def initialize(user, classroom)
    @user = user
    @classroom = classroom
  end

  def index?
    user.admin?
  end

  def create?
    user.admin?
  end

  def show?
    user.admin? || user.teacher?
  end

  def edit?
    user.admin? || user.teacher?
  end

  def update?
    user.admin? || user.teacher?
  end
end
