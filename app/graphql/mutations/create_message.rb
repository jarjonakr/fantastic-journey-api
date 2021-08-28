module Mutations
    class CreateMessage < Mutations::BaseMutation
    	argument :params, Types::Input::MessageInputType, required: true
        
      field :message, Types::MessageType, null: false
  
      def resolve(params:)
        message_params = Hash params
  
        begin
          message = Message.create!(message_params)
  
          { message: message }
        rescue ActiveRecord::RecordInvalid => e
          GraphQL::ExecutionError.new("Invalid attributes for #{e.record.class}:"\
            " #{e.record.errors.full_messages.join(', ')}")
        end
      end
    end
  end