module Queries
    class FetchChatRoom < Queries::BaseQuery
        
      type Types::ChatRoomType, null: false
      argument :entry_code, String, required: true
  
      def resolve(entry_code:)

        begin
          ChatRoom.find_by!(entry_code: entry_code)
        rescue ActiveRecord::RecordNotFound => e
          GraphQL::ExecutionError.new("Chatroom does not exist")
        end
      end
    end
end