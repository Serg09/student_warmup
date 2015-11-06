class Pupil < ActiveRecord::Base
  validates :first_name, :last_name, :email, presence: true
  validates :gender, inclusion: %w(M F m f)
  validates :age, numericality: { greater_than: 12, less_than: 19 }
end
