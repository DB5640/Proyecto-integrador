document.addEventListener('DOMContentLoaded', (param1, parm2) => {
    const btnIngresar = document.querySelector(".botones #ingresar")
    btnIngresar.addEventListener('click', () => {
        console.log('le di click a ingresar')
        alert('ha ingresado correctamente');
        window.location = '/inicio.html';
    })
})