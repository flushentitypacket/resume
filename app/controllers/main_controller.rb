class MainController < ApplicationController
  def index
    @message = 'hello world'
    @contact = Contact.new
    @cv = Cv.latest
  end
end
