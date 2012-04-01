class ConsoleController < ApplicationController

  def show

  end

  def exec
    begin
      params[:output] = eval(params[:script])
    rescue Exception => e
      params[:output] = e.message
      p e.backtrace
    end

    respond_to do |format|
      format.html { render "show" }
      format.text { render :text => "#{params[:output]}\n" }
    end
  end

end
