module Types
  class SubscriptionType < BaseObject
    field :message_added_to_room, Types::MessageType, null: true do
      argument :chat_room_id, ID, required: true
    end

    def message_added_to_room(chat_room_id:)
      object
    end
  end
end