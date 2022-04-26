module Resolvers
  class BookResolver < GraphQL::Schema::Resolver
    description 'Find a book by ID'
    type Types::BookType, null: false

    argument :id, ID, required: true

    def resolve(id:)
      Book.find(id)
    end
  end
end
