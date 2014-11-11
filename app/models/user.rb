class User < ActiveRecord::Base
has_many :articles
has_many :offers

validates_presence_of :nombre,:apellido,:telefono,:correo,:contrasena,:nick
validates_uniqueness_of :nick,:correo
validates_confirmation_of :correo, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
validates_length_of :contrasena, minimum: 6	
end
