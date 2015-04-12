class DashboardsController < ApplicationController
  def show
    @sales = Invoice.sales
  end
end
