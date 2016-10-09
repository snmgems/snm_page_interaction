welcome = <<INSTRUCTION
  Yay! installation almost completed - The following steps are remain need to manually configure

  1) Run 'RAILS_ENV=environment rake db:migrate'

  2) Include snm_page_interaction.js into your application.js  
    
     //= require snm_page_interaction/snm_page_interaction

  3) On the page you want capture/record use interaction - put following code inside 'DOM ready'

     SnmPageInteraction.interaction.pageInteractionInitialize(SnmPageInteraction.page); 
INSTRUCTION