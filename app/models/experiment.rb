class Experiment < ApplicationRecord
  belongs_to :requester,
             class_name: 'User',
             inverse_of: :experiments

  validates :requester, :name, :description, presence: true
end
