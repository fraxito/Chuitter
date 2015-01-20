class Usuario < ActiveRecord::Base
  has_many :chuits
  validates :nombre, presence: true, uniqueness: true
end
