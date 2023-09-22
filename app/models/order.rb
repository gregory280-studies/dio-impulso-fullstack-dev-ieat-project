class Order < ApplicationRecord
  belongs_to :product
  belongs_to :user
  enum status: { pending: 0, done: 1 }

  after_create :notify_restaurant

  def notify_restaurant
    RestaurantNotifierJob.perform_later
  end
end
