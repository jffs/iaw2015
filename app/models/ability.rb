class Ability < ActiveRecord::Base

include CanCan::Ability
 
  def initialize(user)
    user ||= User.new
    if user.role == "admin"
         can :manage, :all
       elsif user.role == "user"
           can [:show], [Article] 
           can [:new, :create, :show , :index, :update ,:edit, :destroy], [Comment]      
           can [:show , :update, :edit], [User]
       elsif current_user.id=="" 
            can [:show , :index], [Article] 
       end
     end
 

end