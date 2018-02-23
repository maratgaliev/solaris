class Post < ApplicationRecord
  searchable do
    text :title
    text :body
  end
end
