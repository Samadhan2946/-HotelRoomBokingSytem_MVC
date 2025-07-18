<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Success</title>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script>
    document.addEventListener('DOMContentLoaded', function() {
        var successMsg = '${messageSuccess}';
        if (successMsg && successMsg !== '') {
            Swal.fire({
                icon: 'success',
                title: 'Success!',
                text: successMsg,
                confirmButtonText: 'OK'
            }).then((result) => {
                if (result.isConfirmed) {
                    // Redirect to customer list after success message
                    window.location.href = '${pageContext.request.contextPath}/staff/staffList';
                }
            });
        }
    });
    </script>
</head>
<body>
</body>
</html>
