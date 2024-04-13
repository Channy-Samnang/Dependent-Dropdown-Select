<?php
    require_once './conn.php';

    $id = $_POST['id'];

    $sql = "SELECT * FROM model_tbl WHERE Brand_ID = $id";
    $result = mysqli_query($conn,$sql);

    $out = '<option selected disabled value="">Select Model</option>';
    while($row = mysqli_fetch_assoc($result)){
        // $out .= '<option>'.$row['Model_Name'].'</option>';
        $out .= '<option value="'.$row['ID'].'">'.$row['Model_Name'].'</option>';
    }
    echo $out;

?>

