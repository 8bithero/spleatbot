class VenueRow
  @@instance_collector = []
  attr_accessor :name, :transactions, :value

  def initialize(payment_hash)
    @@instance_collector << self
    self.name         = payment_hash[:venue_name]
    self.value        = payment_hash[:value]
    self.transactions = 1
  end

  def self.all
    @@instance_collector
  end

  def self.find_by_venue_name(venue_name)
    VenueRow.all.find { |vrow| vrow.name == venue_name }
  end
end