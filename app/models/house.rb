class House < ApplicationRecord
  validates :house_name, presence: true
  validates :rent, presence: true
  validates :address, presence: true, uniqueness: true
  validates :house_age, presence: true
  validates :remarks, presence: true
  has_many :stations, dependent: :destroy
  accepts_nested_attributes_for :stations, update_only: true, reject_if: :all_blank
end
