class MainController < ApplicationController
  def index
    @message = 'hello world'
    @contact = Contact.new
  end
end
