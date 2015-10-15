class Article < ActiveRecord::Base

has_many :coments
belongs_to :category
belongs_to :user
mount_uploader :foto, FotoUploader
validates_presence_of :nombre, :descripcion, :precio, :foto, :ubicacion

def self.search(search)
	where("nombre like ?", "%#{search}%") 
end

end