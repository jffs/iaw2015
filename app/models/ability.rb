class Ability < ActiveRecord::Base

include CanCan::Ability
 
  def initialize(user)
    user ||= User.new
    if user.role == "admin"
         can :manage, :all
       elsif user.role == "user"
           can [:new, :create, :show , :index, :update ,:edit, :destroy], [Article] 
           can [:new, :create, :show , :index, :update ,:edit, :destroy], [Offer]      
           can [:show , :index, :update, :edit], [User]
           can [:show , :index] , [Category]       
       else
            can [:show , :index], [Article] 
       end
     end
 

end