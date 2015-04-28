module ReportsHelper
  def generate_report
    ReportService.build.call(Date.yesterday, Date.today)
    @venue_rows = VenueRow.all
  end
end
