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
          notification = Notification.new(
            title: args[:notification][:title],
            body: args[:notification][:body]
          )

          message_object_args = {
            topic: args[:topic],
            notification: notification,
            data: args[:payload]
          }

          if args.key?(:webpush) && args[:webpush][:icon]
            message_object_args[:webpush] = Webpush.new(args[:webpush])
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

      class Webpush
        include Google::Apis::Core::Hashable

        attr_accessor :headers
        attr_accessor :notification

        def initialize(**args)
          update!(**args)
        end

        def update!(**args)
          @headers = args[:headers] if args.key?(:headers)
          @notification = WebNotification.new(icon: args[:icon])
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
