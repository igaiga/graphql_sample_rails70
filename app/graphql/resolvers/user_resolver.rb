module Resolvers
  class UserResolver < GraphQL::Schema::Resolver
    description 'Find a user by ID'
    type Types::UserType, null: false

    argument :id, ID, required: true

    def resolve(id:)
      User.find(id)
    end
  end
end
