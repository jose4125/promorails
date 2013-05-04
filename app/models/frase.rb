# == Schema Information
#
# Table name: frases
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  frase      :string(255)
#  valida     :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Frase < ActiveRecord::Base
  belongs_to :user

  attr_accessible :frase, :valida

  validates :frase, presence: true
end
