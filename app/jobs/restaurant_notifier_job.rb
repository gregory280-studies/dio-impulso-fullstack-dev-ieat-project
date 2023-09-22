class RestaurantNotifierJob < ApplicationJob
  queue_as :default

  def perform(user)
    puts "Hello from sidekiq!"
    puts "Pedido criado pelo #{user.email}"
  end
end
