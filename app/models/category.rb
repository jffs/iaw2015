class Category < ActiveRecord::Base
has_many :articles, dependent: :destroy
validates_uniqueness_of :nombre 
end
