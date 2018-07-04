class UserPolicy < Struct.new(:user, :other_user)

  def index?
    user.role == 'admin'
  end

  def edit?
    user.role == 'admin'
  end

  def update?
    user.role == 'admin'
  end


end
