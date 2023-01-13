<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admincp</title>
    <link rel="stylesheet" type="text/css" href="css/styleadmincp.css">
    <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/morris.js/0.5.1/morris.css">
</head>
<?php
    session_start();
    if(!isset($_SESSION['dangnhap'])){
        header('Location:login.php');
    }
?>
<body>
    <h3 class="title_admin">Hế lô Admin ^^</h3>
    <div class="wrapper">
    <?php
            include("config/config.php");
            include("modules/header.php");
            include("modules/menu.php");
            include("modules/main.php");
            include("modules/footer.php");
    ?>
    </div>

    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
    <script src="//cdn.ckeditor.com/4.20.1/standard/ckeditor.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/morris.js/0.5.1/morris.min.js"></script>
    <script>
        CKEDITOR.replace('thongtinlienhe');
        CKEDITOR.replace('tomtat');
        CKEDITOR.replace('noidung');
    </script>
     <script type="text/javascript">
        $(document).ready(function(){
            thongke();
             var char = new Morris.Bar({ //biêu đồ thống ke
             parseTime: false,
               hideHover: 'auto',
              // ID of the element in which to draw the chart.
              element: 'chart',
               lineColors: ['#819C79', '#fc8710','#FF6541', '#A4ADD3', '#766B56'], //màu đường link hoặc cột
              // Chart data records -- each entry in this array corresponds to a point on
              // the chart.
             
                xkey: 'date',
              ykeys: ['order','sales','quantity'], //các cột tiêu đề
            labels: ['Đơn hàng','Doanh số','Số lượng bán ra']//các cột giá trị
            
            });
        $('.select-date').change(function(){
            var thoigian = $(this).val();
            // alert(thoigian);
            if(thoigian=='7ngay'){ //thời gian theo ngày 
                var text = '7 ngày qua';
            }else if(thoigian=='28ngay'){
                var text = '28 ngày qua';
            }else if(thoigian=='90ngay'){
                var text = '90 ngày qua';
            }else{
                var text = '365 ngày qua';
            }
             $.ajax({
                    url:"modules/thongke.php", //gửi dữ liệu trang thống kê
                    method:"POST",
                    dataType:"JSON", //trả về kiểu JSON
                    data:{thoigian:thoigian},
                    success:function(data)
                        {
                            char.setData(data); //đổ dữ liệu vào biểu đồ
                            $('#text-date').text(text);
                        }   
                });
        })
            function thongke(){
                var text = '365 ngày qua'; //mặc định dữ liệu thống kê theo 365 ngày
                $.ajax({
                    url:"modules/thongke.php",
                    method:"POST",
                    dataType:"JSON",

                    success:function(data)
                        {
                            char.setData(data);
                            $('#text-date').text(text);
                        }   
                });
            }
        })
       
    </script>
</body>
</html>