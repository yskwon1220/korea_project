
function doDisplay() {
		var con = document.getElementById("onepay");
		var con2 = document.getElementById("basicpay");
		var con3 = document.getElementById("basicpay2");
		var tri = document.getElementById("tri");
		var tri2 = document.getElementById("tri2");
		var tri3 = document.getElementById("tri3");
		var card_btn= document.getElementById("card_btn");
		var card_btn2= document.getElementById("card_btn2");
		var card_btn3= document.getElementById("card_btn3");
		
		if (con.style.display == 'none') {
			con.style.display = 'block';
			con2.style.display = 'none';
			con3.style.display = 'none';
			card_btn.style.background='#BC9C6A';
			tri.style.borderTop= '16px solid white'	
			card_btn2.style.background='#000000';
			tri2.style.borderTop= '16px solid gray'
				card_btn3.style.background='#000000';
			tri3.style.borderTop= '16px solid gray'
		

		} else {
			con.style.display = 'none';

		}
	}

	function doDisplay2() {
		var con = document.getElementById("onepay");
		var con2 = document.getElementById("basicpay");
		var con3 = document.getElementById("basicpay2");
		var tri = document.getElementById("tri");
		var tri2 = document.getElementById("tri2");
		var tri3 = document.getElementById("tri3");
		var card_btn= document.getElementById("card_btn");
		var card_btn2= document.getElementById("card_btn2");
		var card_btn3= document.getElementById("card_btn3");
		
		if (con2.style.display == 'none') {
			con.style.display = 'none';
			con2.style.display = 'block';
			con3.style.display = 'none';
			card_btn.style.background='#000000';
			tri.style.borderTop= '16px solid gray'	
			card_btn2.style.background='#BC9C6A';
			tri2.style.borderTop= '16px solid white'
				card_btn3.style.background='#000000';
			tri3.style.borderTop= '16px solid gray'

		} else {
			con2.style.display = 'none';

		}
	}
	function doDisplay3() {
		var con = document.getElementById("onepay");
		var con2 = document.getElementById("basicpay");
		var con3 = document.getElementById("basicpay2");
		var tri = document.getElementById("tri");
		var tri2 = document.getElementById("tri2");
		var tri3 = document.getElementById("tri3");
		var card_btn= document.getElementById("card_btn");
		var card_btn2= document.getElementById("card_btn2");
		var card_btn3= document.getElementById("card_btn3");
		
		if (con3.style.display == 'none') {
			con.style.display = 'none';
			con2.style.display = 'none'
			con3.style.display = 'block'
	
			card_btn.style.background='#000000';
			tri.style.borderTop= '16px solid gray'	
			card_btn2.style.background='#000000';
			tri2.style.borderTop= '16px solid gray'
				card_btn3.style.background='#BC9C6A';
			tri3.style.borderTop= '16px solid white'

		} else {
			con3.style.display = 'none';

		}

	}
	