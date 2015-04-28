class ReportService

  def self.build
    new  
  end


  def results(date_from, date_to)
    venue_rows = []    
    transactions = Payment.successful_payments.where(:payment_date => date_from..date_to)

    transactions.each do |record|
      venue = venue_rows.select {|row| row.name == record.venue.name }.first

      if venue
        venue.transactions += 1
        venue.value += record.value

      else
        data = { venue_name: record.venue.name, value: record.value }
        venue_rows << VenueRow.new(data)

      end
    end

    venue_rows
    
  end
end