require 'open3'
class JobsWorker
  include Sidekiq::Worker

  def perform(job_id, server_id)
    job = Job.find(job_id)
    server = Server.find(server_id)
    if job.is_running == false
      job.is_running = true
      job.save!
      puts "Current deploy with version #{job.version} is starting in the server [ #{server.name} ]"
      Open3.popen3("ssh -p #{server.port} -2 -4 -o ConnectTimeout=3 #{server.login}@#{server.ip} #{server.gptlauncher_path}/launcher.py --job #{job.jobtype.name} --config #{server.name} --territory #{job.territory.name} --version #{job.version} &> /tmp/gpt_launcher.err") {|input,out,err,wait_thr|
        logger.info "Exit Status: #{wait_thr.value}"
        logger.info "STDOUT: #{out.read}"
        logger.error "STDERR: #{err.read}"
        job.fail_reason = err.read
        if wait_thr.value == 0
          puts "Current deploy with version #{job.version} just finished in the server #{server.name}"
          job.is_finished_correctly = true
        else
          job.is_finished_correctly = false
        end
      }
    end
    job.save!
    return 0
  end
end