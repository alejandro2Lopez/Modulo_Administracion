class OrderDetail < ApplicationRecord
    belongs_to :dish
    belongs_to :client

    enum state: { on_time: 0, over_time: 1, delayed: 2, canceled: 3, delivered: 4 }
end
