namespace :test_db do
  desc "Leaves application like new"
  task :reset => :environment do
    Rake::Task['db:drop:all'].invoke
    Rake::Task['db:create:all'].invoke
    Rake::Task['db:migrate'].invoke
    Rake::Task['db:seed'].invoke
  end
end