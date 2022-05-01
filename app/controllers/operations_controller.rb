class OperationsController < ApplicationController
  def index
    @operations = Operation.all.page(params[:page])
  end
end
