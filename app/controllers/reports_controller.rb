class ReportsController < ApplicationController
  def index
  end

  def results
    @venue_rows = ReportService.build.results(params[:date_from].to_date, params[:date_to].to_date)
    @venue_rows.sort_by!{|vr| -vr.value }

    respond_to do |format|
      flash[:notice] = "Successfully generated report"
      format.js # results.js.erb 
    end
  end
end
