module Queries
    class FetchChatRoom < Queries::BaseQuery
        
      type Types::ChatRoomType, null: false
      argument :id, ID, required: true
  
      def resolve(id:)
        ChatRoom.find(id)
      end
    end
end