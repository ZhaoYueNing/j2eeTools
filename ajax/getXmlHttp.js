/**
	获取xmlhttp对象
**/
function getXmlHttpObject(){
	xmlhttp=null;
			
	// 针对 Mozilla等浏览器的代码：
	if (window.XMLHttpRequest){
		xmlhttp=new XMLHttpRequest()
	}
	
	// 针对 IE 的代码：
	else if (window.ActiveXObject){
		xmlhttp=new ActiveXObject("Microsoft.XMLHTTP")
	}
	return xmlhttp;
}