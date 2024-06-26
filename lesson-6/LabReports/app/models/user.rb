# frozen_string_literal: true

class User < ApplicationRecord
  has_many :lab_reports, dependent: :destroy
  belongs_to :account

  validates :email, presence: true, uniqueness: true, format: {with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/},
    length: {maximum: 150}
  validates :first_name, presence: true, length: {maximum: 100}
  validates :last_name, presence: true, length: {maximum: 100}
end
