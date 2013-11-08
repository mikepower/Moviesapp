module ApplicationHelper
	def signed_in?
       if session[:user_id].nil?
			return
       else
			@current_user = User.find_by_id(session[:user_id])
       end
  end

  def euro(amount) 			#method with a formal parameter, no need for a data type in Ruby
	number_to_currency(amount, :unit => "&euro:")   #This is an entity reference
  end
  
end
