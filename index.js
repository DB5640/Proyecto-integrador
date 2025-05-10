document.addEventListener('DOMContentLoaded', (param1, parm2) => {
    const btnIngresar = document.querySelector(".botones #ingresar")
    btnIngresar.addEventListener('click', () => {
        console.log('le di click a ingresar')
        alert('ha ingresado correctamente');
        window.location = '/inicio.html';
    })
})

document.addEventListener('DOMContentLoaded', (param3, param4) => {
    const btnConsultar = document.querySelector(".botones #consultar")
    btnConsultar.addEventListener('click', () => {
        console.log('le di click a consultar')
        alert('El usuario ha sido verificado existosamente');
        window.location = '/inicio.html';
    })
})

document.addEventListener('DOMContentLoaded', (param5, param6) => {
    const btnEliminar = document.querySelector(".botones #eliminar")
    btnEliminar.addEventListener('click', () => {
        console.log('le di click a eliminar')
        alert('Tu cuenta ha sido eliminada');
        window.location = '/inicio.html';
    })
})

document.addEventListener('DOMContentLoaded', (param7, param8) => {
    const btnEditar = document.querySelector(".botones #editar")
    btnEditar.addEventListener('click', () => {
        console.log('le di click a editar')
        alert('Ahora puedes editar tu cuenta');
        window.location = '/inicio.html';
    })
})