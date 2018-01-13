class CartController < ApplicationController
  def show
  end

  def create
    @amount = 1000
    customer = Stripe::Customer.create(
      email: params[:stripeEmail],
      source: params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      customer: customer.id,
      amount: @amount,
      description: 'Payment for food',
      currency: 'sek'
    )

  end
end
