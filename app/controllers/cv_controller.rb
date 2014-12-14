class CvController < ApplicationController
  respond_to :html, :json

  def index
    @cv = Cv.latest
    respond_with(@cv)
  end
end
