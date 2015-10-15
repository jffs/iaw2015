class Subcategory < ActiveRecord::Base
has_many :articles, dependent: :destroy
belongs_to :categories
validates_uniqueness_of :nombre 
end
