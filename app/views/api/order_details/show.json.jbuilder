json.order_detail do
  if order_detail.isConfirm == 0
    json.id @order_detail.id
    json.client_id @order_detail.client_id
    json.dish_id @order_detail.dish_id
  end
end
