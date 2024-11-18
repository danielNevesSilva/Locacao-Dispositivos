const calendario = document.querySelectorAll('#datasCont');

calendario.forEach((input) => {
  input.addEventListener('input', () => {
    const dataRetirada = new Date(calendario[0].value);
    const dataDevolucao = new Date(calendario[1].value);
    const diferencaDias = Math.abs((dataDevolucao.getTime() - dataRetirada.getTime()) / (1000 * 3600 * 24));

    let valorAPagar = 0;
    for (let i = 0; i < diferencaDias; i++) {
      valorAPagar += 50;
    }
    document.querySelector('h5 span').textContent = `R$ ${valorAPagar}`;
  });
});