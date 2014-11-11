class Offer < ActiveRecord::Base
belongs_to :user 
belongs_to :article

validates_presence_of :contenido,:precio
validates_numericality_of  :precio  
end
