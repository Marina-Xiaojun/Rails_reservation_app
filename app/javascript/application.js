// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

// ログイン後、自分の名前をクリックしたとき
document.addEventListener("turbo:load", () => {
  const button = document.querySelector(".user-menu button");
  const menu = document.querySelector(".user-menu-box");

  if (button && menu) {
    button.addEventListener("click", () => {
      if (menu.style.display === "block") {
        menu.style.display = "none";
      } else {
        menu.style.display = "block";
      }
    });
  }
});