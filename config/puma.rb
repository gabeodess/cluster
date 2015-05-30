run_sidekiq_in_this_thread = ENV['SIDEKIQ_CONCURRENCY']
workers Integer(ENV['WEB_CONCURRENCY'] || 2)
threads_count = Integer(ENV['MAX_THREADS'] || 5)
threads threads_count, threads_count

preload_app!

rackup      DefaultRackup
port        ENV['PORT']     || 3000
environment ENV['RACK_ENV'] || 'development'

on_worker_boot do
  # Worker specific setup for Rails 4.1+
  # See: https://devcenter.heroku.com/articles/deploying-rails-applications-with-the-puma-web-server#on-worker-boot
  ActiveRecord::Base.establish_connection
  
  if run_sidekiq_in_this_thread
    @resque_pid ||= spawn("bundle exec sidekiq -e production -c 1 -C config/sidekiq.yml")
    Rails.logger.info("Spawned sidekiq #{@request_pid}")
  end
  
end