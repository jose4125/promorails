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

  after_create :frase_correcta

  attr_accessible :frase, :valida

  validates :frase, presence: true

  private

    def frase_correcta

      frase_ingresada = self.frase
      frase_correcta = 'hola mundo'

      correcta = (frase_ingresada == frase_correcta) ? true : false
      
      self.update_attributes(valida: correcta)
      self.save

    end
end
