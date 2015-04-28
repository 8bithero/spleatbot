class UserTab < ActiveRecord::Base
  belongs_to :user
  belongs_to :tab

  has_many :payments

  def successful_payments(date_from, date_to)
    payments.where( success: true, payment_date: date_from..date_to )
  end
  
  def unsuccessful_payments(date_from, date_to)
    payments.where( success: false, payment_date: date_from..date_to )
  end
end
