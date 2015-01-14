class Chuit < ActiveRecord::Base
  belongs_to :usuario
  validates :text, :length =>{:maximum =>140}
end
