function iniciar_sesion() {
    let user = document.getElementById('txt-user').value;
    let pass = document.getElementById('txt-pass').value;
    if (user.length == 0 || pass.length == 0) {
        return Swal.fire("Mensaje de Advertencia", "Los campos estan vacios", "warning");
    }
    $.ajax({
        url: 'controller/usuario/controller_iniciar_sesion.php',
        type: 'POST',
        data: {
            u: user,
            c: pass
        }
    }).done(function (resp) {
        let data = JSON.parse(resp);
        if (data.length > 0) {
            if (data[0][5] == "INACTIVO") {
                return Swal.fire('Mensaje de Advertencia', 'El usuario <b>' + user + '</b> se encuentra incativo', 'warning');
            }
            $.ajax({
                url: 'controller/usuario/controller_crear_sesion.php',
                type: 'POST',
                data: {
                    idusuario: data[0][0],
                    usuario: data[0][1],
                    rol: data[0][6],
                    nombres: data[0][11],
                    area: data[0][10],
                    idpriarea: data[0][9],
                    fotoempleado: data[0][12]
                }
            }).done(function (r) {
                let timerInterval;
                Swal.fire({
                    title: 'Bienvenido al sistema!',
                    html: 'Seras redirecionado en <b></b> milliseconds.',
                    timer: 2000,
                    timerProgressBar: true,
                    didOpen: () => {
                        Swal.showLoading()
                        const b = Swal.getHtmlContainer().querySelector('b')
                        timerInterval = setInterval(() => {
                            b.textContent = Swal.getTimerLeft()
                        }, 100)
                    },
                    willClose: () => {
                        clearInterval(timerInterval)
                    }
                }).then((result) => {
                    /* Read more about handling dismissals below */
                    if (result.dismiss === Swal.DismissReason.timer) {
                        location.reload();
                    }
                })
            })
        } else {
            Swal.fire('Mensaje de Error', 'Contraseña o usuario incorrecto', 'error');
        }

    });


}