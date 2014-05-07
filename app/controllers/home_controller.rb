class HomeController < ApplicationController
  def index
    @job = Job.new
    @territory = Territory.all
    @job_type = Jobtype.all
    @server = Server.all
  end

  def tasks
  end
end
