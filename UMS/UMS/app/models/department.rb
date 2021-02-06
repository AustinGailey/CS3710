class Department < ApplicationRecord
  has_many :courses

  validates :name, 
        length: {minimum:2},
        format: {
            with: /\A[a-zA-Z]+\z/,
            message: "only allows characters in the set a-zA-Z"}
end
