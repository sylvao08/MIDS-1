
<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>

</body>
</html>



var proto = {
	sentence : 4,
	probation: 1
};

var Prisoner = function (name, id) {
	this.name = name;
	this.id = id;
};

Prisoner.prototype = proto;


//*step4*
var firstPrisoner =
   new Prisoner('Joe','12A');
 var secondPrisoner =
   new Prisoner('Sam','2BC');