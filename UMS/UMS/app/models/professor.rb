class Professor < ApplicationRecord
    validates :name,
        length: {minimum:2},
        format: {
            with: /\A[a-zA-Z ]+\z/,
            message: "only allows characters in the set a-zA-Z"}

    validates :office,
        length: {minimum:2},
        format: {
            with: /\A[a-zA-Z ]+[0-9]*\z/,
            message: "only allows characters in the set a-zA-Z followed by optional 0-9"}
end
