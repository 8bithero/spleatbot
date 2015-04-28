class VenueRow
  @@instance_collector = []
  attr_accessor :name, :transactions, :value

  def initialize(payment_hash)
    @@instance_collector << self
    self.name         = payment_hash[:venue_name]
    self.value        = payment_hash[:value]
    self.transactions = 1
  end

  # def name
  #   name
  # end

  def self.all
    @@instance_collector
  end

  def self.find_by_venue_name(venue_name)
    VenueRow.all.find { |vrow| vrow.name == venue_name }
  end
  # def initialize(params)
  #   @card = params[:card]
  #   @amount = params[:amount]
  #   @email = params[:email]
  # end

  
  # private

  

  # def external_charge_service
  #   Stripe::Charge
  # end

  # def external_customer_service
  #   Stripe::Customer
  # end

  # def charge_attributes
  #   {
  #     amount: amount,
  #     card: card
  #   }
  # end

  # def customer_attributes
  #   {
  #     email: email,
  #     card: card
  #   }
  # end
end