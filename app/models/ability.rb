class Ability < ActiveRecord::Base

include CanCan::Ability
 
  def initialize(user)
    user ||= User.new
    if user.role == "admin"
         can :manage, :all
       elsif user.role == "user"
           can [:new, :create, :show , :index, :update ,:edit, :destroy], [Article] 
           can [:new, :create, :show , :index, :update ,:edit, :destroy], [Offer]   
           can [:new, :create, :show , :index, :update ,:edit, :destroy], [Comment]      
           can [:show , :update, :edit], [User]
           can [:show , :index] , [Category]       
       elsif current_user.id=="" 
            can [:show , :index], [Article] 
       end
     end
 

end