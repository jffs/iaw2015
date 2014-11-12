class User < ActiveRecord::Base
has_many :articles
has_many :offers


validates_presence_of :nombre, :apellido, :nick ,:contrasena, :correo, :telefono, message:  "no puede estar en blanco"
validates_uniqueness_of :nick , :correo , message: "ya existe"

mount_uploader :foto, FotoUploader 
end
