class Ability
 
  include CanCan::Ability
 
  def initialize(user)
    user ||= User.new # guest user
    if user.role? :admin
      can :manage, :all
      #can :update, User do |user2|
      #  user2.try(:id) == user.id
      #end    
    elsif user.role? :dpd
      can :manage, [Curso]
      can :manage, [Persona]
      can :manage, [InstitucionOferente]
      can :manage, [Escuela]
      can :manage, [Titulo]
    end
  end
end
