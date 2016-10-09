require 'rails/generators'
require 'rails/generators/migration'
require 'rails/generators/active_record'


module Configure
  module Generators
      class InstallGenerator < ::Rails::Generators::Base
        include Rails::Generators::Migration
        extend ActiveRecord::Generators::Migration

        source_root File.expand_path("../../../templates", __FILE__)

        def self.next_migration_number( dirname )
          next_migration_number = current_migration_number(dirname) + 1
          if ActiveRecord::Base.timestamped_migrations
            [Time.now.utc.strftime("%Y%m%d%H%M%S%6N"), "%.20d" % next_migration_number].max
          else
            "%.3d" % next_migration_number
          end
        end

        # def create_model_and_migration
        #   puts "Creating model"
        #   copy_file 'models/snmpageinteraction.rb' , 'app/models/snmpageinteraction.rb'
        #   puts "Creating migration"
        #   migration_template "db/migrate/create_snmpageinteractions.rb", "db/migrate/create_snmpageinteractions.rb"
        # end
        # gem use only
        # def create_controllers
        #   puts "Creating controllers"
        #   copy_file 'controllers/snm_page_interactions_controller.rb', 'app/controllers/snm_page_interactions_controller.rb'
        # end

        # gem use only
        # def create_routes
        #   puts "Creating routes"
        #   route "post 'snm_page_interactions'"
        # end

        def finished
#Instructions as heredoc string         
instructions = <<-INSTRUCTION

  Yay! installation almost completed - The following steps are remain need to manually configure

  1) Run 'RAILS_ENV=environment rake db:migrate'

  2) Include snm_page_interaction.js into your application.js  
    
     //= require snm_page_interaction/snm_page_interaction

  3) On the page you want capture/record user interaction - put following code inside 'DOM ready'

     SnmPageInteraction.interaction.pageInteractionInitialize(PAGENAME);

        Here ==> PAGENAME is the name of page you are going to capture user interaction
                 PAGENAME must be uniq amongst pages you are going to capture/record of user interaction


INSTRUCTION

          puts instructions
        end  
      end
  end
end