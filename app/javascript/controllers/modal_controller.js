import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    console.log("Modal controller connected");
  }

  close(event) {
    event.preventDefault();
    console.log("Close modal action triggered");
    
    // モーダルの閉じる動作を実装
    const modalFrame = document.getElementById('modal');
    if (modalFrame) {
      // Turbo Frameの内容を空にする
      modalFrame.innerHTML = '';
    }
    
    // もしモーダルがBootstrapのjQueryベースのモーダルなら
    try {
      const modal = document.querySelector('.modal');
      if (modal && window.jQuery) {
        $(modal).modal('hide');
      }
    } catch (e) {
      console.log("jQuery modal hide failed:", e);
    }
    
    // modal-backdropがある場合に削除
    const backdrop = document.querySelector('.modal-backdrop');
    if (backdrop) {
      backdrop.remove();
    }
    
    // bodyからmodal-openクラスを削除
    document.body.classList.remove('modal-open');
  }
}