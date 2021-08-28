class ChatRoom < ApplicationRecord
    has_many :messages
    has_secure_token :entry_code
end
