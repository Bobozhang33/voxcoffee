<?php
    require_once("init.php");
    @$page=$_REQUEST["page"];
    if(!$page){
        $page=1;
    }else{
        $page=intval($page);
    }
    $output=[
        "count"=>0,
        "page"=>$page,
        "data"=>null,
    ];
    $sql="select count(*) from v_shop";
    $result=mysqli_query($conn,$sql);
    $row=mysqli_fetch_row($result);
    $output["count"]=intval($row[0]);
    $sql="select  sid,sname,phone,spic,address from v_shop where sid=$page";
    $result=mysqli_query($conn,$sql);
    $row=mysqli_fetch_assoc($result);
    $output["data"]=$row;
    echo json_encode($output);
?>