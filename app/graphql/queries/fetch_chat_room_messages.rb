module Queries
    class FetchChatRoomMessages < Queries::BaseQuery
        
      type Types::ChatRoomType, null: false
      argument :entry_code, String, required: true
  
      def resolve(entry_code:)
        ChatRoom.find_by(:entry_code).messages.order(created_at: :asc)
      end
    end
end