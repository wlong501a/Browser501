/*calendar 함수*/
function get_Day(year,month) {
		var Last_Mon = new Array(31,29,31,30,31,30,31,31,30,31,30,31);
		var Mon2;
		
		//2월 윤년구하기
		if(year%4 == 0){
			Mon2 = true;
		}else {
			Mon2 =false;
		}
		// 변수 = (참/거짓)?  참값 : 거짓값;
		Last_Mon[1] = (Mon2)? 29 : 28;
		
		return Last_Mon[month];
	}
	
function drawCal(firstDay, lastDate, year, monthName) {
	
	
	
	}
	
function year_month(){
	
}