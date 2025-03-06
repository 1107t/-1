// import "@hotwired/turbo-rails"
import "jquery"
import "bootstrap"
import Rails from "@rails/ujs"

// グローバルスコープにjQueryを追加
window.jQuery = window.$ = jQuery
Rails.start()

// ドロップダウンの初期化
document.addEventListener("DOMContentLoaded", function() {
  // Bootstrap 4のドロップダウンを初期化
  $('[data-toggle="dropdown"]').dropdown();
});

// ページ読み込み後にドロップダウンを初期化
document.addEventListener("turbo:load", function() {
    $('.dropdown-toggle').dropdown();
  });
  
  // turboがない場合のフォールバック
  document.addEventListener("DOMContentLoaded", function() {
    $('.dropdown-toggle').dropdown();
  });


