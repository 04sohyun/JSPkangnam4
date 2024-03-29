Member=function(id,name,securityNo){
	this.id=id;
	this.name=name;
	this.securityNo=securityNo;
}
Member.prototype.setValue=function(newName,newId,newSecurityNo){
	this.name=newName;
	this.id=newId;
	this.securityNo=newSecurityNo;
}
Member.prototype.getAge=function(){
	var birthYear=parseInt(this.securityNo.substring(0,2));
	var code=this.securityNo.substring(6,7); //6<= 범위 <7
	if(code=='1' || code=='2'){
		birthYear+=1900;
	}else if(code=='3' || code=='4'){
		birthYear+=2000;
	}
	var today=new Date();
	return today.getFullYear()-birthYear; //나이
}
Member.prototype.toString=function(){
	return this.name+"["+this.id+"]";
}