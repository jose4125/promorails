# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  nombre     :string(255)
#  apellido   :string(255)
#  cedula     :integer
#  ciudad     :string(255)
#  fan        :string(255)
#  acepta_t   :boolean          default(FALSE)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ActiveRecord::Base
  attr_accessible :acepta_t, :apellido, :cedula, :ciudad, :fan, :nombre

  validates :nombre, :apellido, :cedula, :ciudad, :fan, presence: true
  validates :cedula, uniqueness: true

end
