<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Error</title>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script>
    document.addEventListener('DOMContentLoaded', function() {
        var errorMsg = '${messageError}';
        if (errorMsg && errorMsg !== '') {
            Swal.fire({
                icon: 'error',
                title: 'Oops...',
                text: errorMsg,
                footer: '<a href="#">Why do I have this issue?</a>',
                confirmButtonText: 'OK'
            }).then((result) => {
                if (result.isConfirmed) {
                    window.history.back();
                }
            });
        }
    });
    </script>
</head>
<body>

</body>
</html>
