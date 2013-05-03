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

require 'test_helper'

class FraseTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
