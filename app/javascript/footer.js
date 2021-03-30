

const txts = document.getElementsByClassName('text');
let txtIndex = -2;

  function changeTxt() {
    txtIndex++;

    let currentNum = txtIndex % txts.length;
    let nextNum = (txtIndex + 1) % txts.length;
    let current = txts[currentNum];
    let next = txts[nextNum];

    setTimeout(function () {
      current.classList.remove('is-active');
    }, 3000);
    setTimeout(function () {
      current.style.display = 'none';
      next.style.display = 'block';
    }, 5100);

    setTimeout(function () {
      next.classList.add('is-active');
    }, 5200);
  };

  function showNextTxt() {
    setInterval(changeTxt, 6000);
  }

  changeTxt();
  document.addEventListener('DOMContentLoaded', showNextTxt, false);




