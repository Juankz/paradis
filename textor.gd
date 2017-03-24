extends Node
# La posición de los arreglos nos indica la estructura entre los componenetes de la frase
var pronomP = ["je","tu","il","elle","nous","vous","ils","elles"] 
var pronomR = ["me","te","se","se","nous","vous","se","se"]
var grup1 = ["e","es","e","e","ons","ez","ent","ent"]
var etre = []
var raiz
var termiV


func conjugar(arg):
	print("estoy dentro de conjugacion")
	var verbo = arg
	var aVerbo = verbo.split(" ",true)
	print (aVerbo)
	if(verbo.ends_with("er")):
		raiz = verbo.substr(0,verbo.length() -2)
		print(raiz)
		return (pronomP[6]+" "+raiz+grup1[6])
	else:
		print("no")
		return ("no es un verbo")
		
func primerafrase(genero, nombre):
	if(genero == "m"):
		return ("Je suis un caht, "+nombre.capitalize())
	elif(genero == "f"):
		return ("Je suise une Chate, " +nombre.capitalize())