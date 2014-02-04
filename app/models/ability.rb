class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)
    if user.role? :admin
      can :manage, :all
      
    elsif user.role? :user
      can :manage, Song do |song|
        song.user == user
      end  

      can :create, Song
      can :read, :all

      can :manage, User do |user_object|
        user_object == user
      end

    else
      can :create, User
      can :read, :all
    end
  end
end

