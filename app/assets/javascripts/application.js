// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require bootstrap
//= require_tree .

var lanchonete = {}
lanchonete.pagamentoCartao = function() {
  var pg_id = "0356A63D7B814C8CB330668A34A48CD6";

  Iugu.setTesMode(true);
  ugu.setAccountID(pg_id);
  Iugu.setup();

  cc = Iugu.CreditCard($("#number").value,$("#mes").value, $("#ano").value, $("#nome").value,$("#sobrenome").value, $("#cvv").value)

  Iugu.createPaymentToken(cc, function(data){
    if (data.errors){
      alert("erro ao gerar");
      console.log(data.errors);

    }else {
      var token = data.id 
    }
  });
}
