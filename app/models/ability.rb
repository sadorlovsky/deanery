class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)

    if user.role.admin?
      can :manage, :all
    else
      can :manage, [Group, Student, Discipline, Teacher]
      can [:show, :update], User, id: user.id
    end

  end

  def worker
  end

  def admin
    worker
  end
end
