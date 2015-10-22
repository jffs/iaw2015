class Category < ActiveRecord::Base
has_many :articles, dependent: :destroy
validates_uniqueness_of :nombre 
class << self
def primerasdosnovacias
	cant=0
	aux =0
	cate=["",""]
	categorias = Category.where(eliminado: false)
	while (categorias.length >= aux && cant < 2) do
		if (Article.where(category_id: categorias[aux].id).length != 0)
			cate[cant]=categorias[aux]
			cant += 1

		end 
		aux += 1
	end
	return cate
end
end

end
