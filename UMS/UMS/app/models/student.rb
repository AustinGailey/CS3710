class Student < ApplicationRecord
  has_and_belongs_to_many :sections

  validates :name, 
        length: {minimum:2},
        format: {
            with: /\A[a-zA-Z ]+\z/,
            message: "only allows characters in the set a-zA-Z"}
  validates :identifier, :inclusion => {
          :in => 900000000..900999999,
          :message => "Enter identifier between 900000000 and 900999999"
  }
  validates_associated :sections
end
