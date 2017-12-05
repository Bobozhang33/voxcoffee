// 3F店面切换
var page;
function loadShop(page){
    $.ajax({
        type:"GET",
        url:"data/shop_list.php",
        data:{page:page},
        success:function(shop) {
            var p=shop.data;
            var html="";
            html+= `
				<div class="f3-dd"><img src="${p.spic}"></div>
				<div class="f3-dc">
					<h4>VOX.COFFEE${p.sname}</h4>
					<div class="f3-d1">
						北京朝阳的小伙伴们总算是盼到了朝思暮想的唯咖啡。<br>
						你们有口福啦! <br>
						再也不用看小唯整天和唯咖啡“秀恩爱”了，<br>
						你们也可以秀咯！
					</div>
					<p class="f3-d2">电话：${p.phone}</p>
					<p class="f3-d2">地址：${p.address}</p>
					<div class="f3-btn">
						<div class="f3-prev"></div>
						<div class="f3-next"></div>
					</div>
				</div>
                `;

            $(".f3").html(html);
            var num=parseInt(p.sid);
            var str="";
            if(num-1>0){
                str=`<a href="${num-1}">◀</a>`;
            }else{
                str=`<a href="${shop.count}">◀</a>`
            }
            var str2="";
            if(num+1<=shop.count){
                str2=`<a href="${num+1}">▶</a>`;
            }else{
                str2=`<a href="${1}">▶</a>`;
            }
            $(".f3-prev").html(str);
            $(".f3-next").html(str2);
        },
        error:function(){
            alert("网络出现故障，请检查！")
        }
    });
}
loadShop(1);
$(".f3").on("click","div a",function(e){
    e.preventDefault();
    var page=$(this).attr("href");
    loadShop(page);
});
$(".f3").on('click','img',function(){
    location.assign('08_shop.html')
})


