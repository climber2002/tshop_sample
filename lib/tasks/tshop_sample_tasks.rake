# desc "Explaining what the task does"
# task :tshop_sample do
#   # Task goes here
# end

namespace :tshop_sample do
  
  desc 'Hello world'
  task :hello_world => :environment do
    puts "Hello world from TShop Sample!!!"
  end

  desc 'Load sample data'
  task :load => :environment do
    if ARGV.include?("db:migrate")
      puts %Q{
Please run db:migrate separately from spree_sample:load.

Running db:migrate and spree_sample:load at the same time has been known to
cause problems where columns may be not available during sample data loading.

Migrations have been run. Please run "rake spree_sample:load" by itself now.
      }
      exit(1)
    end

    TshopSample::Engine.load_samples
  end
end
