module Tepha
  module Models
    module Events
      class Type
        include JSON::Serializable

        @[JSON::Field(key: "eventType")]
        property event_type : String
      end
    end
  end
end
