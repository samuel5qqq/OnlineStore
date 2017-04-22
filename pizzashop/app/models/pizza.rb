class Pizza < ApplicationRecord
  validates :name, presence: true
  validates_numericality_of :price, :on => :create
  validates :category, presence: true
    
  mount_uploader :image, ImageUploader
    
  has_many :order_items

  default_scope { where(active: true) }
end
