/*calendar 함수*/
function get_Day(year, month) {
	var Last_Mon = new Array(31, 29, 31, 30, 31, 0,  31, 31, 30, 1, 30,  31);
	var Mon2;

	//2월 윤년구하기
	if (year % 4 == 0) {
		Mon2 = true;
	} else {
		Mon2 = false;
	}
	// 변수 = (참/거짓)?  참값 : 거짓값;
	Last_Mon[1] = (Mon2) ? 29 : 28;

	return Last_Mon[month];
}

function drawCal(firstDay, lastDate, year, monthName) {
	var text = "";
	text += "<table><th colspan='7'><font color=orange size= +3>";
	text += year + " 년" + monthName + " 월" + "</font></th>";

	var weekDay = new Array("일", "월", "화", "수", "목", "금", "토");
	text += "<tr ALIGN=center VALIGN=center>";

	var openCol = "<td WIDTH=45 HEIGHT=40><font color=darkblue> ";
	var closeCol = "</FONT></TD>"

	for (var dayNum = 0; dayNum < weekDay.length; dayNum++) {
		text += openCol + weekDay[dayNum] + closeCol;
	}
	text += "</tr>"

	for (var row = 1; row <= Math.ceil((lastDate + firstDay - 1) / 7); row++) {
		text += "<tr ALIGN=right VALIGN=top>";

		for (var col = 1; col <= 7; col++) {
			if (digit > lastDate) {
				break;
			}

			if (curCell < firstDay) {
				text += "<td>&nbsp;</td>";	//&nbsp 사용안하면 칸이 줄어듦
				curCell++;
			} else {
				text += "<td HEIGHT=40>" + digit + "</td>";
			}
			digit++;
		}


	}
	text += "</tr>";
}
text += "</TABLE>"
text += "</CENTER>"

return text;
