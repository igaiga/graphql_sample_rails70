module Resolvers
  class UsersResolver < GraphQL::Schema::Resolver
    description 'Find users'
    type [Types::UserType], null: false

    def resolve
      User.all
    end
  end
end
