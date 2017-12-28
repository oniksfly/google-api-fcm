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

      class Webpush
        class Representation < Google::Apis::Core::JsonRepresentation; end
        include Google::Apis::Core::JsonObjectSupport
      end

      class WebNotification
        class Representation < Google::Apis::Core::JsonRepresentation; end
        include Google::Apis::Core::JsonObjectSupport
      end

      class Message
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :message_object, as: 'message',
            class: Google::Apis::Messages::MessageObject,
            decorator: Google::Apis::Messages::MessageObject::Representation
        end
      end

      class MessageObject
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :topic, as: 'topic'
          property :data, as: 'data'
          property :notification, as: 'notification',
            class: Google::Apis::Messages::Notification,
            decorator: Google::Apis::Messages::Notification::Representation
          property :webpush, as: 'webpush',
            class: Google::Apis::Messages::Webpush,
            decorator: Google::Apis::Messages::Webpush::Representation
        end
      end

      class Notification
        class Representation < Google::Apis::Core::JsonRepresentation
          property :title, as: 'title'
          property :body, as: 'body'
        end
      end

      class Webpush
        class Representation < Google::Apis::Core::JsonRepresentation
          property :headers, as: 'headers'
          property :notification, as: 'notification',
            class: Google::Apis::Messages::WebNotification,
            decorator: Google::Apis::Messages::WebNotification::Representation
        end
      end

      class WebNotification
        class Representation < Google::Apis::Core::JsonRepresentation
          property :icon, as: 'icon'
        end
      end
    end
  end
end
