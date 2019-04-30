class User < ApplicationRecord
    has_many :contacts
    has_secure_password

    def token
        JWT.encode({ user_id: self.id }, 'asdf')
    end

end
