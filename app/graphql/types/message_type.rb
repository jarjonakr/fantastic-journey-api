module Types
  class MessageType < Types::BaseObject
    field :id, ID, null: false
    field :body, String, null: true
    field :username, String, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :chat_room_id, Integer, null: true
  end
end
