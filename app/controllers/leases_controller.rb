class LeasesController < ApplicationController
  
  def create
    lease = Lease.create!(lease_params)
    render json: lease, status: :created
  end


  def destroy
    Lease.find(params[:id]).destroy
    head :no_content
  end


  private

  def lease_params
    params.permit(:rent, :apartment_id, :tenant_id)
  end


end
