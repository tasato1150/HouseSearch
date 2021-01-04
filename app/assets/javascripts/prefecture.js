$(function() {

  var tokyo = document.getElementById("tokyo_municipality")
  var kanagawa = document.getElementById("kanagawa_municipality")
  var chiba = document.getElementById("chiba_municipality")
  var saitama = document.getElementById("saitama_municipality")
  var ibaraki = document.getElementById("ibaraki_municipality")
  var tochigi = document.getElementById("tochigi_municipality")
  var gunma = document.getElementById("gunma_municipality")

  tokyo.style.display = "none";
  kanagawa.style.display = "none";
  chiba.style.display = "none";
  saitama.style.display = "none";
  ibaraki.style.display = "none";
  tochigi.style.display = "none";
  gunma.style.display = "none";

  $('select[name="property[prefecture]"]').change(function() {

    var prefecture = $('select[name="property[prefecture]"] option:selected').attr("value");
    if(prefecture == 1) {
      document.getElementById("municipality_message").style.display = "none";
      tokyo.style.display = "block";
      kanagawa.style.display = "none";
      chiba.style.display = "none";
      saitama.style.display = "none";
      ibaraki.style.display = "none";
      tochigi.style.display = "none";
      gunma.style.display = "none";
    } else if(prefecture == 2) {
      document.getElementById("municipality_message").style.display = "none";
      tokyo.style.display = "none";
      kanagawa.style.display = "block";
      chiba.style.display = "none";
      saitama.style.display = "none";
      ibaraki.style.display = "none";
      tochigi.style.display = "none";
      gunma.style.display = "none";
    } else if(prefecture == 3) {
      document.getElementById("municipality_message").style.display = "none";
      tokyo.style.display = "none";
      kanagawa.style.display = "none";
      chiba.style.display = "block";
      saitama.style.display = "none";
      ibaraki.style.display = "none";
      tochigi.style.display = "none";
      gunma.style.display = "none";
    } else if(prefecture == 4) {
      document.getElementById("municipality_message").style.display = "none";
      tokyo.style.display = "none";
      kanagawa.style.display = "none";
      chiba.style.display = "none";
      saitama.style.display = "block";
      ibaraki.style.display = "none";
      tochigi.style.display = "none";
      gunma.style.display = "none";
    } else if(prefecture == 5) {
      document.getElementById("municipality_message").style.display = "none";
      tokyo.style.display = "none";
      kanagawa.style.display = "none";
      chiba.style.display = "none";
      saitama.style.display = "none";
      ibaraki.style.display = "block";
      tochigi.style.display = "none";
      gunma.style.display = "none";
    } else if(prefecture == 6) {
      document.getElementById("municipality_message").style.display = "none";
      tokyo.style.display = "none";
      kanagawa.style.display = "none";
      chiba.style.display = "none";
      saitama.style.display = "none";
      ibaraki.style.display = "none";
      tochigi.style.display = "block";
      gunma.style.display = "none";
    } else if(prefecture == 7) {
      document.getElementById("municipality_message").style.display = "none";
      tokyo.style.display = "none";
      kanagawa.style.display = "none";
      chiba.style.display = "none";
      saitama.style.display = "none";
      ibaraki.style.display = "none";
      tochigi.style.display = "none";
      gunma.style.display = "block";
    }
  })
})