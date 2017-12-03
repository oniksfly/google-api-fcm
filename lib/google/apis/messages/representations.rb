module Google
  module Apis
    module Messages
      class Message
        class Representation < Google::Apis::Core::JsonRepresentation; end
        include Google::Apis::Core::JsonObjectSupport
      end

      class MessageObject
        class Representation < Google::Apis::Core::JsonRepresentation; end
        include Google::Apis::Core::JsonObjectSupport
      end

      class Notification
        class Representation < Google::Apis::Core::JsonRepresentation; end
        include Google::Apis::Core::JsonObjectSupport
      end



      class Message
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :message_object, as: 'message', class: Google::Apis::Messages::MessageObject, decorator: Google::Apis::Messages::MessageObject::Representation
        end
      end

      class MessageObject
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :topic, as: 'topic'
          property :notification, as: 'notification', class: Google::Apis::Messages::Notification, decorator: Google::Apis::Messages::Notification::Representation
        end
      end

      class Notification
        class Representation < Google::Apis::Core::JsonRepresentation
          property :title, as: 'title'
          property :body, as: 'body'
        end
      end
    end
  end
end