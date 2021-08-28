module Types
    module Input
      class ChatRoomInputType < Types::BaseInputObject
        argument :title, String, required: false
      end
    end
  end