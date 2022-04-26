module Resolvers
  class BooksResolver < GraphQL::Schema::Resolver
    description 'Find books'
    type [Types::BookType], null: false

    def resolve
      Book.all
    end
  end
end
