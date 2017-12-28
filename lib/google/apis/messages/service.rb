require 'google/apis/core/base_service'
require 'google/apis/core/json_representation'
require 'google/apis/core/hashable'
require 'google/apis/errors'

module Google
  module Apis
    module Messages
      class MessagesService < Google::Apis::Core::BaseService

        # @return [String]
        # Your project ID from Google Firebase Console https://console.firebase.google.com/
        attr_accessor :project_id

        # @param project_id: [String]
        def initialize(project_id:)
          @project_id = project_id

          super('https://fcm.googleapis.com/', 'v1/projects/{projectId}/')
        end

        # Notify topic subscribers with message
        # @see https://firebase.google.com/docs/cloud-messaging/send-message
        #
        # @param message [Google::Apis::Messages::Message]
        def notify_topic(message, options: nil, &block)
          command = make_simple_command(:post, 'messages:send', options)
          command.request_representation = Google::Apis::Messages::Message::Representation
          command.request_object = message

          execute_or_queue_command(command, &block)
        end

        protected

        def apply_command_defaults(command)
          command.params['projectId'] = project_id
        end
      end
    end
  end
end
