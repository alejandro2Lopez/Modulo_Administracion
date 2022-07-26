json.array! @order_details do |order_detail|
  if order_detail.isConfirm == 0
    json.id order_detail.id
    json.name order_detail.dish.name
    json.cost order_detail.dish.cost
  end
end
