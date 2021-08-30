module Mutations
    class CreateMessage < Mutations::BaseMutation
    	argument :params, Types::Input::MessageInputType, required: true
        
      field :message, Types::MessageType, null: false
  
      def resolve(params:)
        message_params = Hash params
  
        begin
          message = Message.create!(message_params).tap do |message|
            puts 'checking chat room id', message_params.inspect, message_params[:chat_room_id]
            thing = FantasticJourneyApiSchema.subscriptions.trigger(:message_added_to_room, {room_id: message_params[:chat_room_id]}, message)
            puts 'THING', thing
            thing
          end
          puts 'MESSAGE', message
          { message: message }
        rescue ActiveRecord::RecordInvalid => e
          GraphQL::ExecutionError.new("Invalid attributes for #{e.record.class}:"\
            " #{e.record.errors.full_messages.join(', ')}")
        end
      end
    end
  end