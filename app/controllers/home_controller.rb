class HomeController < ApplicationController
  def index
    render({ :template => "/home" })
  end
  def square_new
    @the_num = params.fetch("user_number").to_f
    @the_result = @the_num ** 
    render({ :template => "/square_new" })
  end
  def square_results
    render({ :template => "/square_results" })
  end
end
