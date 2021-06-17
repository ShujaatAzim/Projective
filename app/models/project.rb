class Project < ApplicationRecord
  has_many :tasks
ApplicationRecord  belongs_to :user
end
