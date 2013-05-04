class Session < ActiveRecord::Base
  attr_accessible :nombre, :cedula

  validates :nombre, :cedula, presence: true
end
