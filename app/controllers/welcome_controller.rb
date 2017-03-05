
class WelcomeController < ApplicationController
  def index
    @examinations = Examination.all
    @study = params[:study]
   # @mean_exposure = Examination.average(:exposure, :conditions => ['study == ?', @study]) if @study


    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @examinations }
    end
  end
end
