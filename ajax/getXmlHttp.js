/**
	��ȡxmlhttp����
**/
function getXmlHttpObject(){
	xmlhttp=null;
			
	// ��� Mozilla��������Ĵ��룺
	if (window.XMLHttpRequest){
		xmlhttp=new XMLHttpRequest()
	}
	
	// ��� IE �Ĵ��룺
	else if (window.ActiveXObject){
		xmlhttp=new ActiveXObject("Microsoft.XMLHTTP")
	}
	return xmlhttp;
}