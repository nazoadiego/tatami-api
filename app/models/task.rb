class Task < ApplicationRecord
  belongs_to :project

  attribute :completed, :boolean, default: false
end
