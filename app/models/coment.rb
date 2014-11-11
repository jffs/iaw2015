class Coment < ActiveRecord::Base
belongs_to :user
belongs_to :article

validates_presence_of :contenido
end
