function LoadShopList(pno){
    $.ajax({
        type:"GET",
        url:"data/09_shop_show.php",
        data:{pno:pno},
        success:function(shop){
            console.log(shop.pageCount);
            var html="";
            for(var s of shop.data){
                html+=`
                    <div class="row shop-name">
                        <div class="col-md-5 col-md-offset-3">
                            VOX.COFFEE${s.sname}
                        </div>
                    </div>
                    <div class="row shop-address">
                        <div class="col-md-5 col-md-offset-3">
                            地址：${s.shop_add}
                        </div>
                    </div>
                    <div class="row shop-pic">
                        <div class="col-md-2 col-md-offset-3">
                            <img src="${s.img_way1}" alt="" class="img-responsive">
                        </div>
                        <div class="col-md-2">
                            <img src="${s.img_way2}" alt="" class="img-responsive">
                        </div>
                        <div class="col-md-2">
                            <img src="${s.img_way3}" alt="" class="img-responsive">
                        </div>
                    </div>
                    <div class="row shop-pic">
                        <div class="col-md-2 col-md-offset-3">
                            <img src="${s.img_way4}" alt="" class="img-responsive">
                        </div>
                        <div class="col-md-2">
                            <img src="${s.img_way5}" alt="" class="img-responsive">
                        </div>
                        <div class="col-md-2">
                            <img src="${s.img_way6}" alt="" class="img-responsive">
                        </div>
                    </div>
                `
            }
            $("#best-shop").html(html);
            var html = "";

            if(shop.pno-1>0){
                html += `<li><a href="${shop.pno-1}">上一页</a></li>`;
            }
            //判断是否显示上上一页
            if(shop.pno-2>0){
                html += `<li><a href="${shop.pno-2}">${shop.pno-2}</a></li>`;
            }
            //判断是否显示上一页
            if(shop.pno-1>0){
                html += `<li><a href="${shop.pno-1}">${shop.pno-1}</a></li>`;
            }
            html += `<li class="active"><a href="${shop.pno}">${shop.pno}</a></li>`;
            //判断是否显示下一页
            if(shop.pno+1<=shop.pageCount){
                html += `<li><a href="${shop.pno+1}">${shop.pno+1}</a></li>`;
            }
            //判断是否显示下下一页
            if(shop.pno+2<=shop.pageCount){
                html += `<li><a href="${shop.pno+2}">${shop.pno+2}</a></li>`;
            }
            if(shop.pno+1<=shop.pageCount){
                html += `<li><a href="${shop.pno+1}">下一页</a></li>`;
            }
            $("#pagination").html(html);

        },
        error:function(){
            alert("网络出现故障，请检查")
        }
    })
}
LoadShopList(1);
$("#pagination").on("click","li a",function(e){
    //a:阻止事件默认行为 a
    e.preventDefault();
    //b:获取当前页码
    var pno = $(this).attr("href");
    //c:调用函数
    LoadShopList(pno);
});