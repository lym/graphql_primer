# Defines a new GraphQL type
Types::LinkType = GraphQL::ObjectType.define do
  # This type is named `link`
  name 'Link'

  # it has the following links
  field :id, !types.ID
  field :url, !types.String
  field :description, !types.String
end
