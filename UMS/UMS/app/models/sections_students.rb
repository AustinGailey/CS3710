class SectionsStudents < ApplicationRecord
  belongs_to :section
  belongs_to :student

  validates_associated :section
  validates_associated :student
end
