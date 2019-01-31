# == Schema Information
#
# Table name: session_tokens
#
#  id            :bigint(8)        not null, primary key
#  session_token :string           not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class SessionToken < ApplicationRecord
    validates :session_token, uniqueness: true 
end
