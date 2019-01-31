# == Schema Information
#
# Table name: session_tokens
#
#  id            :bigint(8)        not null, primary key
#  session_token :string           not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

require 'test_helper'

class SessionTokenTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
