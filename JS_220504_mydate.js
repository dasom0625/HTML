/**
 * 
 */
	//1.proc1() 함수 마들기
function proc1(){
	
	var now = new Date();
	var today1 = now.toLocaleString();
	var today2 = now.toLocaleDateString();
	var today3 = now.toLocaleTimeString();
	
	//2.
	var out = document.querySelector('div'); //div가여러개있으면 첫번째꺼만 찾음.
	
	//3.출력내용을 한번에 생성하기
	var str = today1+"<br>"; 
	str += today2+"<br>"; 
	str += today3+"<br>"; 
	
	//4.
	out.innerHTML = str; 
	
}
