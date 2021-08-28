module Types
    module Input
      class MessageInputType < Types::BaseInputObject
        argument :chat_room_id, ID, required: true
        argument :body, String, required: true
        argument :username, String, required: true
      end
    end
  end