class OffensesController < ApplicationController

  include ApplicationHelper
  
  before_action :logged_in_user

  def index
    @all_captured_violators = Offense.all
    
    respond_to do |format|
      format.html
      #format.csv { send_data @all_captured_violators.to_csv}
      #format.xls #{ send_data @all_captured_violators.to_csv(col_sep: "\t")}
    end    
  end

  def destroy
    @offense = Offense.find(params[:id]).destroy
    redirect_to reports_path
  end

end
