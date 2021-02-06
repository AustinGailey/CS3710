class Course < ApplicationRecord
  belongs_to :department

  validates :department, presence:true
  validates :department_id, presence:true
  validates_associated :department
  validates :number, format: {
    with: /\A[0-9]+\z/,
    message: "allows digits 0-9"}
  validates :hours, format: {
    with: /\A[1-4]\z/,
    message: "allows digit 1-4"}
end
