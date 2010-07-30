class SubscriptionController < ApplicationController
  
  def create    
    Subscription.create(:name=>params[:name], :email=> params[:email], :phone_number=> params[:phone_number], :property_id => params[:property_id])
    render :nothing => true
  end
end
