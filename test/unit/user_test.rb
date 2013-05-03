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

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
