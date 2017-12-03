# Google API Client for FCM
Extension for original [google-api-client](https://github.com/google/google-api-ruby-client) with implementation of 
[Firebase Cloud Messaging Server API](https://firebase.google.com/docs/cloud-messaging/server) via HTTP V1 protocol. 

## Installation
Add this line to your application's Gemfile:
```ruby
gem 'google-api-fcm'
```

And then execute:

```
$ bundle
```

## Usage
```ruby
require 'google/apis/messages'

# More Google Auth examples you can find in original gem
scope = Google::Apis::Messages::AUTH_MESSAGES
authorization = Google::Auth.get_application_default(scope)


service = Google::Apis::Messages::MessagesService.new(project_id: 'PROJECT-ID')
service.authorization = authorization

# Build notification message
message = Google::Apis::Messages::Message.new(
  topic: 'news', 
  title: 'Breaking news', 
  body: 'Hell has frozen over'
)
service.notify_topic(message) # Finally send the message to FCM
```