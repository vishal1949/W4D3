# == Schema Information
#
# Table name: users
#
#  id              :bigint(8)        not null, primary key
#  user_name       :string           not null
#  password_digest :string           not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ApplicationRecord
     validates :user_name, presence: true, uniqueness: true
     validates :password_digest, presence: true 



    def password=(password)
        @password = password 
        self.password_digest = BCrypt::Password.create(password)
    end
    # def user_name=(username)
    #     self.user_name = username
    # end
    def password
        @password 
    end
    
    def is_password?(password)
        BCrypt::Password.new(self.password_digest).is_password?(password)
    end
    


    def reset_session_token!
        self.session_token = SecureRandom::urlsafe_base64
        self.save!
        self.session_token
    end
    
    def self.find_by_credentials(user_name, password)
        user = User.find_by(user_name: user_name)
        return user if user && user.is_password?(password)
        nil
    end
end
 