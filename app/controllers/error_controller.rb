class ErrorController < ApplicationController
  
  def not_found
    respond_to do |format|
      format.html { render :file => "#{Rails.root}/public/404.html", :status => :not_found,  }
      format.xml  { head :not_found }
      format.any  { head :not_found }
    end
    
    # render :text => 'Not Found', :status => '404'
    
    # def not_found
    #   raise ActionController::RoutingError.new('Not Found')
    # end
  end
end
