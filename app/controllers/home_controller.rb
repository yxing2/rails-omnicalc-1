class HomeController < ApplicationController
  def index
    render({ :template => "/home" })
  end

  def square_new
    render({ :template => "/square_new" })
  end

  def square_results
    @the_num = params.fetch("user_number").to_f
    @the_result = @the_num ** 2
  render({ :template => "/square_results" })
  end

  def square_root_new
    render({ :template => "/square_root_new" })
  end

  def square_root_results
    @the_num = params.fetch("square_root_number").to_f
    @the_result = @the_num ** 0.5
    render({ :template => "/square_root_results" })
  end

  def payment_new
    render({ :template => "/payment_new" })
  end

  def payment_results
    @apr = params.fetch("apr").to_f
    @r = @apr/100/12
    @num_year = params.fetch("num_year").to_f
    @n = @num_year*12
    @pv = params.fetch("principal").to_f
    @payment = (@r*@pv)/(1-(1+@r)**(-@n))
    render({ :template => "/payment_results" })
  end

  def random_new
    render({ :template => "/random_new" })
  end

  def random_results
    @the_min = params.fetch("minimum").to_f
    @the_max = params.fetch("maximum").to_f
    @the_result = rand * (@the_max - @the_min) + @the_min
    render({ :template => "/random_results" })
  end










end
