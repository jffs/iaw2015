class Offer < ActiveRecord::Base
  belongs_to :user
  belongs_to :article
  validates_numericality_of  :precio

end
