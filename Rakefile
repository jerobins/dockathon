task :default => [:build]

task :build do
  begin
    sh 'docker image rm dockathon'
  rescue => e
    # continue if does not exist
  end
  sh 'docker build --rm -t dockathon .'
end

