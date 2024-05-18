const nowObject = new Date();
const dateStampArr = nowObject.toISOString().split("T");
const dateStampFinal = String(dateStampArr[0].split("-").join("")) + 
  String(dateStampArr[1].split(".").shift().split(":").join(""));

return dateStampFinal;
