class ClaimsController < ApplicationController

    def create 
        @claim = Claim.new(
            user: current_user,
            content: params[:claim][:content],
            company: Company.find(params[:company_id]))        
        @claim.save
        respond_to :js        
    end

   

end
