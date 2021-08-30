module Types
  class SubscriptionType < BaseObject
    field :message_added_to_room, Types::MessageType, null: false do
      argument :room_id, ID, required: true
    end

    def message_added_to_room(room_id:)
      puts 'OBJECTTTT', object.inspect
      object
    end
  end
end