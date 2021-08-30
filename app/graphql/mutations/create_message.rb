module Mutations
    class CreateMessage < Mutations::BaseMutation
    	argument :params, Types::Input::MessageInputType, required: true
        
      field :message, Types::MessageType, null: false
  
      def resolve(params:)
        message_params = Hash params
  
        begin
          message = Message.create!(message_params).tap do |message|
            FantasticJourneyApiSchema.subscriptions.trigger(:message_added_to_room, {chat_room_id: message_params[:chat_room_id]}, message)
          end
          { message: message }
        rescue ActiveRecord::RecordInvalid => e
          GraphQL::ExecutionError.new("Invalid attributes for #{e.record.class}:"\
            " #{e.record.errors.full_messages.join(', ')}")
        end
      end
    end
  end