<?php
	use Carbon\Carbon;
    use Carbon\CarbonInterval;
    include('../config/config.php'); //connect db
    require('../../carbon/autoload.php'); //sử dụng carbon lấy ra thứ ngày tháng
    if(isset($_POST['thoigian'])){
    	$thoigian = $_POST['thoigian']; //lấy ra thời gian
	}else{
		$thoigian='';
		$subdays = Carbon::now('Asia/Ho_Chi_Minh')->subdays(365)->toDateString();	//365 ngày
	}

   
    if($thoigian=='7ngay'){
    	$subdays = Carbon::now('Asia/Ho_Chi_Minh')->subdays(7)->toDateString(); //7 ngày
	}elseif($thoigian=='28ngay'){
    	$subdays = Carbon::now('Asia/Ho_Chi_Minh')->subdays(28)->toDateString(); //28 ngày
	}elseif($thoigian=='90ngay'){
    	$subdays = Carbon::now('Asia/Ho_Chi_Minh')->subdays(90)->toDateString(); //90 ngày
	}elseif($thoigian=='365ngay'){
		$subdays = Carbon::now('Asia/Ho_Chi_Minh')->subdays(365)->toDateString();	 //365 ngày
	}
	
	

    $now = Carbon::now('Asia/Ho_Chi_Minh')->toDateString(); //lấy time hiện tại

    $sql = "SELECT * FROM tbl_thongke WHERE ngaydat BETWEEN '$subdays' AND '$now' ORDER BY ngaydat ASC" ; //lấy dử liệu giữa ngày hiện tại và ngày cách đó 7 28 90 365
    $sql_query = mysqli_query($mysqli,$sql); //truy vấn

    while($val = mysqli_fetch_array($sql_query)){ //dữ liệu là mảng gồm các phần tử phái dưới
    	$chart_data[] = array(
	        'date' => $val['ngaydat'],
	        'order' => $val['donhang'],
	        'sales' => $val['doanhthu'],
	        'quantity' => $val['soluongban']

    	);
    }
  	// print_r($chart_data);
    echo $data = json_encode($chart_data); //echo dữ liệu dạng JSON
   
?>