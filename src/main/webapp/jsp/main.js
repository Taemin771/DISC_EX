const toggleBtn = document.querySelector('.navbar_toogleBtn');
const menu = document.querySelector('.page_menu');
const icons = document.querySelector('.buttons');

toggleBtn.addEventListener('click', () => {
  menu.classList.toggle('active');
  icons.classList.toggle('active');
});

if (matchMedia("screen and (max-width: 820px)").matches) {
  function dp_menu1(){
      let click = document.getElementById("drop-content1");
      if(click.style.display === "none"){
          click.style.display = "block";
      }else{
          click.style.display = "none";

      }
  }
  function dp_menu2(){
      let click = document.getElementById("drop-content2");
      if(click.style.display === "none"){
          click.style.display = "block";
      }else{
          click.style.display = "none";

      }
  }
  function dp_menu3(){
      let click = document.getElementById("drop-content3");
      if(click.style.display === "none"){
          click.style.display = "block";
      }else{
          click.style.display = "none";
      }
  }
}
window.onresize = function(){ document.location.reload(); };
