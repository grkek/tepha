module Tepha
  module Models
    module Events
      class Activity
        include JSON::Serializable

        @[JSON::Field(key: "id")]
        property id : String

        @[JSON::Field(key: "objectType")]
        property object_type : String

        @[JSON::Field(key: "url")]
        property url : String

        @[JSON::Field(key: "published")]
        property published : String

        @[JSON::Field(key: "verb")]
        property verb : String

        @[JSON::Field(key: "target")]
        property target : Target
      end
    end
  end
end
