class Tab < ActiveRecord::Base
  belongs_to :venue
  has_many :user_tabs

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
