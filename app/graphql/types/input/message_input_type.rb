module Types
    module Input
      class MessageInputType < Types::BaseInputObject
        argument :body, String, required: true
      end
    end
  end