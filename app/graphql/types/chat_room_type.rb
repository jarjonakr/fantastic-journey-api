module Types
  class ChatRoomType < Types::BaseObject
    field :id, ID, null: true
    field :title, String, null: true
    field :entry_code, String, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
