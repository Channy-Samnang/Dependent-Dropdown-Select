<?php
require_once './conn.php';
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> Dependent Select</title>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js" ></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</head>
<body>
    <div class="container" style="width: 1000px;" >
        <center>
            <h1><u> Dynamic Dependent Select in PHP </u></h1>
        </center>
        <br/>
        <select class="form-select" id="selectID" aria-label="Default select example">
        <option selected disabled value="">Select Car's Brands</option>
        <?php
        $result = mysqli_query($conn, "SELECT * FROM brand_tbl");
        while($row = mysqli_fetch_array($result)){
            ?>
            <option value="<?php echo $row['ID']; ?>"> <?php echo $row['Brand_Name']; ?> </option>
            <?php
        };
        ?>
        </select>
        <br/>
        <select class="form-select" id="show" aria-label="Default select example">
        
        </select>
    </div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script>
        $(document).ready(function(){
            $('#selectID').on('change', function(){
                var BrandID = $('#selectID').val();
                //alert(Stdid);
                $.ajax({
                    type: 'POST',
                    url: 'fetch.php',
                    data: {id:BrandID}, // Fix the typo here
                    success:function(data){
                        $('#show').html(data);
                    }
                });
            });
        });
    </script>
    
    
</body>
</html>