class TaskSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :completed

  belongs_to :project
end
