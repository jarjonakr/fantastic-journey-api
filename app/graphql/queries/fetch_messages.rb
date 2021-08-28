module Queries
    class FetchMessages < Queries::BaseQuery
  
      type [Types::MessageType], null: false
  
      def resolve
        Message.all.order(created_at: :desc)
      end
    end
end