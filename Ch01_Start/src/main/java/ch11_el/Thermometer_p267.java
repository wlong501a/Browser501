package ch11_el;

import java.util.HashMap;
import java.util.Map;

//Instace Method() => EL사용하기
public class Thermometer_p267 {
	
	private Map<String,Double> locationCelsiusMap = new HashMap<>();
	

	public Double getCelsius(String location) {
		return locationCelsiusMap.get(location);
	}

	public void setCelsius(String location, Double value) {
		locationCelsiusMap.put(location, value);
	}
	
	
	public Double getFahrenheit(String location) {
		Double celsius = getCelsius(location);
		if(celsius == null) {
			return null;
		}
		return celsius.doubleValue()*1.8 + 32.0;	//섭씨를 화씨로 바꾸기 위한 식
	}
//getInfo()를 EL에서 사용시 : info 라고 씀
	public String getInfo() {
		return "온도계 변환기 1.1";
	}
}
