require 'sinatra/base'
module EtFakeCcd
  module Idam
    class UserTokenServer < Sinatra::Base
      post '/testing-support/lease' do
        content_type "text/plain"
        "eyJhbGciOiJIUzI1NiJ9.eyJqdGkiOiIyaWxub3Q2bWs3dGpvbDdnZzFlcGo4NXZxNSIsInN1YiI6IjM4IiwiaWF0IjoxNTQ4MjU1ODA5LCJleHAiOjE1NDgyNzM4MDksImRhdGEiOiJjYXNld29ya2VyLXB1YmxpY2xhdyxjYXNld29ya2VyLXB1YmxpY2xhdy1sb2EwIiwidHlwZSI6IkFDQ0VTUyIsImlkIjoiMzgiLCJmb3JlbmFtZSI6IkludGVncmF0aW9uIiwic3VybmFtZSI6IlRlc3QiLCJkZWZhdWx0LXNlcnZpY2UiOiJQcm9iYXRlIiwibG9hIjowLCJkZWZhdWx0LXVybCI6Imh0dHBzOi8vbG9jYWxob3N0OjkwMDAvcG9jL3Byb2JhdGUiLCJncm91cCI6InByb2JhdGUtcHJpdmF0ZS1iZXRhIn0.Y_JKGlLmIU4Ki5v6VXVCH8bzQMY_QQXH6r32ICNuNgs"
      end
    end
  end
end
