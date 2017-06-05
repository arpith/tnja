class SubscriptionsController < ApplicationController
  def index
    now = DateTime.now
    this_year = now.beginning_of_year..now
    # User has not made any payments or has not paid this year
    @defaulters = User.includes(:payments).where(payments: {user_id: nil})
                      .or(User.includes(:payments).where.not(payments: {date: this_year}))
    @current_user = current_user
  end
end
