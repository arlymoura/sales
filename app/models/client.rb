class Client < ApplicationRecord
  belongs_to :user
  enum status: [:active, :inactive]
  has_many :address

  has_many :subordinates, class_name: "Client",
                          foreign_key: "manager_id"

  belongs_to :manager, class_name: "Client"

end
