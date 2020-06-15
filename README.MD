# Google API Client for FCM

Extension for original [google-api-client](https://github.com/google/google-api-ruby-client) with implementation of 
[Firebase Cloud Messaging Server API](https://firebase.google.com/docs/cloud-messaging/server) via HTTP V1 protocol.

## Note
FCM support was added to original [google-api-client](https://github.com/googleapis/google-api-ruby-client) according [docs](https://googleapis.dev/ruby/google-api-client/latest/Google/Apis/FcmV1.html). 

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'google-api-fcm'
```

And then execute:

```shell
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
```

```ruby
# Build notification message (with topic)
message = Google::Apis::Messages::Message.new(
  topic: 'news',
  notification: {
    title: 'Breaking news',
    body: 'Hell has frozen over'
  }
)
```

or

```ruby
# Build notification message (with token)
message = Google::Apis::Messages::Message.new(
  token: 'bk3RNwTe3H0:CI2k_HHwgIpoDKCIZvvDMExUdFQ3P1',
  notification: {
    title: 'Breaking news',
    body: 'Hell has frozen over'
  }
)
```

```ruby
# Finally send the message to FCM
service.notify(message)
```

## Set analytics label

The analytics label can be set when sending the message, in order to mark the message for analytics purposes

```ruby
message = Google::Apis::Messages::Message.new(
  token: 'bk3RNwTe3H0:CI2k_HHwgIpoDKCIZvvDMExUdFQ3P1',
  notification: {
    title: 'Breaking news',
    body: 'Hell has frozen over'
  },
  fcm_options: {
    analytics_label: 'test-label'
  }
)
```
