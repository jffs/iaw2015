class User < ActiveRecord::Base
has_many :articles
has_many :offers


validates_presence_of :nombre, :apellido, :nick ,:contrasena, :correo, :telefono
validates_uniqueness_of :nick , :correo 
validates_numericality_of :telefono

validates_length_of :contrasena, minimum: 6
mount_uploader :foto, FotoUploader 
end
