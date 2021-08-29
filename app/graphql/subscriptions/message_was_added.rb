class Subscriptions::MessageWasAdded < Subscriptions::BaseSubscription
   # `room_id` loads a `room`
   argument :room_id, ID, required: true, loads: Types::RoomType

   # It's passed to other methods as `room`
   def subscribe(room:)
    # Return the room in the initial response
    {
      room: room
    }
   end
 
   def update(room:)
     # ...
   end
end