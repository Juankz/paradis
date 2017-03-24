extends Node
# La posición de los arreglos nos indica la estructura entre los componenetes de la frase
var pronomP = ["je","tu","il","elle","nous","vous","ils","elles"] 
var pronomR = ["m'apppel","te","se","se","nous","vous","se","se"]
var grup1 = ["e","es","e","e","ons","ez","ent","ent"]
var etre = ["suis","es","est","est","sommes","êtes","sont","sont"]
var casl = ["amoncel","appel","étincel","ficel","renouvel","ressemel","ruissel"]
var frase
var raiz
var dicPronom = {}
var acertada=[]
var palabras
var objeto
#  divide frases en cadena en arreglos de string
func divfrases(frase):
	palabras = frase.split(" ")
	return palabras
	
# busca pronombres e indica  si el verbo esta bien conjugado
func buscapronombres(arreglotex):
	for  i in range(0,pronomP.size()) :
		var numP = i
		var pronombre = pronomP[i]
		for j in range (0, arreglotex.size()):
			var numintex = j
			var palabra = arreglotex[j]
			if (pronombre == palabra):
				dicPronom[numintex] = {"nPronom":numP,"posintex":numintex}
	return (dicPronom)
	print (dicPronom)
# corrigue verbo segun pronombre 
func correctorverbo():
	for i in dicPronom:
		objeto = i
		var quelverbe
		print(i)
		var verbocon = palabras[dicPronom[objeto]["posintex"] + 1]
		print ("pronombre: "+pronomP[dicPronom[objeto]["nPronom"]])
	
		if verbocon in etre:
			quelverbe = etre
		else: 
			quelverbe = grup1
		
		verbocon = conjugar(verbocon, quelverbe[dicPronom[objeto]["nPronom"]])
	dicPronom={}
# conjuga el verbo busca haciertos o no 
func conjugar(arg, terminacion = "er"):
	var restartrsing = terminacion.length()
	var verbo = arg
	raiz = verbo.substr(0,verbo.length() - restartrsing)
	print("raiz: "+raiz)
	for t in casl:
		if (raiz == t+"l"):
			print("estoy aquí")
			if(pronomP[dicPronom[objeto]["nPronom"]] == "nous" or pronomP[dicPronom[objeto]["nPronom"]] == "vous"):
				raiz = t
				print("rescrebire raiz: "+raiz)
				break
			else:
				print ("error")
				break

	print ("verbo conjugado: "+verbo)
	print("estoy dentro de conjugacion")
	if(verbo == raiz+terminacion):

		print("terminación: "+terminacion)
		print("es correcto")
		
	else:
		print("raiz: "+raiz)
		print("tenemos errores")
		
# No me toques que ya funciono bien 		
func primerafrase(genero, nombre):
	if(genero == "m"):
		return ("Je suis un caht, "+nombre.capitalize())
	elif(genero == "f"):
		return ("Je suise une Chate, " +nombre.capitalize())