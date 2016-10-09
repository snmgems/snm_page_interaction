// According to Rails, in order to include assets from a gem/engine into a Rails app, class called Engine subclased from Rails::Engine must exist. Rails will take care of the rest.

var SnmPageInteraction = SnmPageInteraction || {};
SnmPageInteraction = (function($, window, document, snm){
  snm.interaction ={
    //Required height and with need to increase
    increaseImageSizeByHeightWidth: function(height, width){
      $.each($("body img"), function(data){
        $(this).height(($(this).height() + height));
        $(this).width(($(this).width() + width));
      })
    },
    pageInteractionInitialize: function(page){
      SnmPageInteraction.page = page;
      SnmPageInteraction.interaction.collectPageInteractionData();
      window.setTimeout(function(){
        SnmPageInteraction.interaction.pageInteraction();
        SnmPageInteraction.interaction.pageInteractionInitialize(SnmPageInteraction.page);
      }, 10000)
    },
    pageInteraction: function(){
      interactionData = {
        page: SnmPageInteraction.page,
        clientx: 10,
        clienty: 20,
        pagex: 50,
        pagey: 60,
        offsetx: 10,
        offsety: 20,
        screenx: 50,
        screeny: 60
      };
      $.ajax({
        method: "POST",
        url: "/snm_page_interactions",
        data: {snm_page_interaction: interactionData},
        complete: function(response){
          console.log(response);
        }
      })
    },
    collectPageInteractionData: function(){
      $(document).on("mousemove", function(data){
        console.log("clientX: "+ data.clientX + "clientY: " + data.clientY)
      })
    }
  };
  return snm;
})(jQuery, this, this.document, SnmPageInteraction);