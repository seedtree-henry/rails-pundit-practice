class UserPolicy < Struct.new(:user, :other_user)

  def index?
    user.admin?
  end

  def edit?
    user.admin?
  end

  def update?
    user.admin?
  end


end
