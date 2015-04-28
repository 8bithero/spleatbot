class Venue < ActiveRecord::Base
	has_many :tabs

  def total_transactions(date_from, date_to, success)
    tabs.map { |tab| tab.transactions(date_from, date_to, success) }.flatten
  end

  def total_successful_transactions(date_from, date_to)
    tabs.map { |tab| tab.successful_transactions(date_from, date_to) }.flatten
  end

  def total_unsuccessful_transactions(date_from, date_to)
    tabs.map { |tab| tab.unsuccessful_transactions(date_from, date_to) }.flatten
  end
end
