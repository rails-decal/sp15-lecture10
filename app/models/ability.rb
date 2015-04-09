class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new
    if user.admin?
      can :manage, :all
    else
      can :read, :all
    end
    alias_action :create, :update, :destroy, to: :crud
    can :crud, Quit, user_id: user.id
  end
end
