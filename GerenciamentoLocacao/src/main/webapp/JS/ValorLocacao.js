const calendario = document.querySelectorAll('#datasCont');

calendario.forEach((input) => {
  input.addEventListener('input', () => {
    const dataRetirada = new Date(calendario[0].value);
    const dataDevolucao = new Date(calendario[1].value);

    if (isNaN(dataRetirada.getTime()) || isNaN(dataDevolucao.getTime())) {
      return;
    }

    const diferencaDias = Math.abs((dataDevolucao.getTime() - dataRetirada.getTime()) / (1000 * 3600 * 24));

    let valorAPagar = 0;
    for (let i = 0; i < diferencaDias; i++) {
      valorAPagar += 50;
    }
    document.querySelector('h5 span').textContent = `R$ ${valorAPagar}`;

    const imagemQRCode = document.getElementById('imagemQRCode');
    if (diferencaDias > 0) {
      imagemQRCode.style.display = 'block';
    } else {
      imagemQRCode.style.display = 'none';
    }
  });
});
