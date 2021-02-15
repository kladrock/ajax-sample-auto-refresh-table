<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "https://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <!--Import jQuery before export.js-->
    <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
    
    <!--Data Table-->
    <script type="text/javascript"  src=" https://cdn.datatables.net/1.10.13/js/jquery.dataTables.min.js"></script>
    <script type="text/javascript"  src=" https://cdn.datatables.net/buttons/1.2.4/js/dataTables.buttons.min.js"></script>
    
    <!--Export table button CSS-->
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.13/css/jquery.dataTables.min.css">
    <link rel="stylesheet" href="css/style.css">
    
<script src="js/load.js" type="text/javascript"></script>
</head>
<body>

<div class="container">
    <div class="panel">
        <table id="example" class="display" cellspacing="0" width="100%">
            <thead>
            <tr>
                <th>Train Name</th>
                <th>Train Number</th>
                <th>Departure</th>
                <th>Destination</th>
                <th>Arrival</th>
                <th>Trip Time</th>
            </tr>
            </thead>
        </table>
    </div>
</div>
</body>
</html>