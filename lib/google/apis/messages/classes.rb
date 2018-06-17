module Google
  module Apis
    module Messages
      class Message
        include Google::Apis::Core::Hashable

        attr_accessor :message_object

        def initialize(**args)
          update!(**args)
        end

        def initialize_build(**args)
          if args[:notification]
            notification = Notification.new(
              title: args[:notification][:title],
              body: args[:notification][:body]
            )
          end

          message_object_args = {
            topic: args[:topic],
            data: args[:payload]
          }

          if notification
            message_object_args[:notification] = notification
          end

          if args.key?(:android)
            message_object_args[:android] = args[:android]
          end

          if args.key?(:apns)
            message_object_args[:apns] = args[:apns]
          end

          if args.key?(:webpush)
            message_object_args[:webpush] = args[:webpush]
          end

          @message_object = MessageObject.new(message_object_args)
        end

        def update!(**args)
          if args.key?(:message_object)
            @message_object = args[:message_object]
          else
            initialize_build(**args)
          end
        end
      end

      class MessageObject
        include Google::Apis::Core::Hashable

        attr_accessor :topic
        attr_accessor :notification
        attr_accessor :data
        attr_accessor :android
        attr_accessor :apns
        attr_accessor :webpush

        def initialize(**args)
          update!(**args)
        end

        # Update properties of this object
        def update!(**args)
          @topic = args[:topic] if args.key?(:topic)
          @notification = args[:notification] if args.key?(:notification)
          if args.key?(:data) && args[:data].is_a?(Hash)
            @data = { 'payload' => JSON.dump(args[:data]) }
          end

          @android = args[:android] if args.key?(:android)
          @apns = args[:apns] if args.key?(:apns)
          @webpush = args[:webpush] if args.key?(:webpush)
        end
      end

      class Notification
        include Google::Apis::Core::Hashable

        attr_accessor :title
        attr_accessor :body

        def initialize(**args)
          update!(**args)
        end

        # Update properties of this object
        def update!(**args)
          @title = args[:title] if args.key?(:title)
          @body = args[:body] if args.key?(:body)
        end
      end

      class WebNotification
        include Google::Apis::Core::Hashable

        attr_accessor :icon

        def initialize(**args)
          update!(**args)
        end

        def update!(**args)
          @icon = args[:icon] if args.key?(:icon)
        end
      end
    end
  end
end
