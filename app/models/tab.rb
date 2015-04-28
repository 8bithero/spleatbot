class Tab < ActiveRecord::Base
  belongs_to :venue
  has_many :user_tabs

  # def transactions(date_from, date_to, success)
  #   if success == true
  #     user_tabs.map {|ut| ut.successful_payments}.flatten

  #   elsif success == false
  #     user_tabs.map {|ut| ut.unsuccessful_payments}.flatten

  #   else
  #     user_tabs.map {|ut| ut.payments}.flatten
  #   end
  # end

  def transactions(date_from, date_to)
    user_tabs.map { |ut| ut.payments(date_from, date_to) }.flatten
  end

  def successful_transactions(date_from, date_to)
    user_tabs.map { |ut| ut.successful_payments(date_from, date_to) }.flatten
  end

  def unsuccessful_transactions(date_from, date_to)
    user_tabs.map { |ut| ut.unsuccessful_payments(date_from, date_to) }.flatten
  end
end
