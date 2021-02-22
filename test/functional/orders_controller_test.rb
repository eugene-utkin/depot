test "should create order" do
  assert_difference('Order.count') do
    post :create, order: { address: @order.address, email: @order.email,
      name: @order.name, pay_type: @order.pay_type }
  end
  assert_redirected_to store_path
end 