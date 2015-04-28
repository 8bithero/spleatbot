class Payment < ActiveRecord::Base
  belongs_to :user_tab

  scope :successful_payments, -> { Payment.where( success: true ) }
  scope :unsuccessful_payments, -> { Payment.where( success: false ) }

  def venue
    user_tab.tab.venue
  end
end
