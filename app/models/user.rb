class User < ActiveRecord::Base
  rolify  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
has_many :articles
has_many :offers

ROLES = %w[admin moderator user banned]
#validates_presence_of :nombre, :apellido, :nick ,:contrasena, :correo, :telefono
#validates_uniqueness_of :nick , :correo 
#validates_numericality_of :telefono
#validates_length_of :contrasena, minimum: 6
#validar el formato de correo 
mount_uploader :foto, FotoUploader 

    

end
