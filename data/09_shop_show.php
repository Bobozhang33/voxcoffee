<?php
    require("init.php");
    @$pno=$_REQUEST["pno"];
    if(!$pno){
        $pno=1;
    }else{
        $pno=intval($pno);
    }
    $pageSize=3;
   $output = ["recodeCount"=>0,
        "pageCount"=>0,
        "pno"=>$pno,
        "data"=>null,
        "pageSize"=>$pageSize,
    ];
    $sql="select count(*) from v_shop_display";
    $result=mysqli_query($conn,$sql);
    $row=mysqli_fetch_row($result);
    $output["recodeCount"]=intval($row[0]);
    $output["pageCount"]=ceil($output["recodeCount"]/$output["pageSize"]);
    $start=($output["pno"]-1)*$output["pageSize"];
    $count=$output["pageSize"];
    $sql="select * from v_shop_display,v_shop_images where shop_id=s_id group by shop_id limit $start,$count";
    $result=mysqli_query($conn,$sql);
    $rows=mysqli_fetch_all($result,MYSQLI_ASSOC);
    $output["data"]=$rows;
    echo json_encode($output);
?>