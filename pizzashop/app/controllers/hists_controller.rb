class HistsController < ApplicationController

	def addHistory
	  @user = User.find(session[:user_id])
	  @order_items = OrderItem.all
	  @order_items.each do |order_item|
		@hist = @user.hists.create([order_time:order_item.updated_at, pizza_id:order_item.pizza_id, quantity:order_item.quantity, unit_price:order_item.unit_price, total_price:order_item.total_price])
	  end

	  redirect_to user_path(@user)
	end

end