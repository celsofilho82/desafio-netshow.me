class VideoPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def my_videos?
    return true
  end

  def new?
    return true
  end
  
  def show?
    return true
  end

  def create?
    return true
  end

  def update?
    record.user == current_user
  end

  def destroy?
    record.user == current_user
  end

end
