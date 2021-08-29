module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.
    field :fetch_messages, resolver: Queries::FetchMessages
    field :fetch_chat_room, resolver: Queries::FetchChatRoom
    field :fetch_chat_room_messages, resolver: Queries::FetchChatRoomMessages

  end
end
