class Article < ActiveRecord::Base
include PgSearch
has_many :coments
belongs_to :category
belongs_to :user
mount_uploader :foto, FotoUploader
validates_presence_of :nombre, :descripcion, :precio, :foto, :ubicacion
pg_search_scope :search_by_title, :against => [:nombre , :descripcion],
				 :using => {
                    :tsearch => {:any_word => true}
                  }
pg_search_scope :search_by_location, :against => :ubicacion
pg_search_scope :search_by_priceMin, :against => :precio
pg_search_scope :search_by_priceMax, :against => :precio

def self.search(search)
	Article.search_by_title(search)	
end

end