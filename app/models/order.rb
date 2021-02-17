class Order < ApplicationRecord
  enum pay_type: {
    "Check" => 0,
    "Credit card" => 1,
    "Purchase order" => 2
  }

  PAYMENT_TYPES = [ "Check", "Credit card", "Purchase order" ]

end
