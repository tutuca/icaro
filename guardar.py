#!/usr/bin/python
# -*- coding: utf-8 -*-
import gtk
import os
#~ import json
#~ def guardar(obj,ruta,fondo):
    #~ print "---"
    #~ print fondo
    #~ print "---"
    #~ json.dump(open("archivo.json", "w"), obj)
def guardar(obj,ruta,fondo):

    file=open(ruta,"w")
    print "-------------------"
    print "tamaño obj datos",len(fondo.tipo_obj_datos)
    print "datos",fondo.objetos_datos
    
    print "tamaño obj",len(fondo.tipo_obj)
    print "obj",fondo.objetos
    print "-------------------"
    for i in range(len(fondo.tipo_obj_datos)):
        print fondo.tipo_obj_datos
        if fondo.tipo_obj_datos[i]==7:
            file.writelines("<objeto_dato>")
            file.write("\n")
            file.writelines(str(fondo.objetos_datos[i].ide))
            file.write("\n")
            
            file.writelines(str(fondo.objetos_datos[i].posicion))
            file.write("\n")
            
            file.writelines(str(fondo.objetos_datos[i].texto))
            file.write("\n")
            
            file.writelines(str(fondo.objetos_datos[i].color))
            file.write("\n")

            file.writelines(str(fondo.objetos_datos[i].modificable))
            file.write("\n")

            file.writelines(str(fondo.objetos_datos[i].valor_cadena_no_mod))
            file.write("\n")

            file.writelines(str(fondo.objetos_datos[i].cadena_intermedia))
            file.write("\n")
            
            file.writelines(str(fondo.objetos_datos[i].cadena_final))
            file.write("\n")

            file.writelines("</objeto_dato>")
            file.write("\n")
            
        if fondo.tipo_obj_datos[i]==6:
            file.writelines("<objeto_dato_img>")
            file.write("\n")
            
            file.writelines(str(fondo.objetos_datos[i].imagenintermedia))
            file.write("\n")
            
            file.writelines(str(fondo.objetos_datos[i].ide))
            file.write("\n")
            
            file.writelines(str(fondo.objetos_datos[i].posicion))
            file.write("\n")
            
            file.writelines(str(fondo.objetos_datos[i].texto))
            file.write("\n")
            
            file.writelines(str(fondo.objetos_datos[i].color))
            file.write("\n")

            file.writelines(str(fondo.objetos_datos[i].modificable))
            file.write("\n")

            file.writelines(str(fondo.objetos_datos[i].valor_cadena_no_mod))
            file.write("\n")

            file.writelines(str(fondo.objetos_datos[i].cadena_intermedia))
            file.write("\n")
            
            file.writelines(str(fondo.objetos_datos[i].cadena_final))
            file.write("\n")

            file.writelines("</objeto_dato_img>")
            file.write("\n")
    for i in range(len(fondo.tipo_obj)):
        print fondo.tipo_obj
        print i

        if fondo.tipo_obj[i]==4:
            file.writelines("<objeto_cero>")
            file.write("\n")


            file.writelines(str(fondo.objetos[i].ide))
            file.write("\n")
            
            file.writelines(str(fondo.objetos[i].posicion))
            file.write("\n")            

            file.writelines(str(fondo.objetos[i].color))
            file.write("\n")
            
            file.writelines(str(fondo.objetos[i].texto))
            file.write("\n")

            file.writelines("</objeto_cero>")
            file.write("\n")

        if fondo.tipo_obj[i]==5:
            file.writelines("<objeto_bloque>")
            file.write("\n")


            file.writelines(str(fondo.objetos[i].ide))
            file.write("\n")
            
            file.writelines(str(fondo.objetos[i].posicion))
            file.write("\n")            

            file.writelines(str(fondo.objetos[i].color))
            file.write("\n")
            file.writelines(str(fondo.objetos[i].texto))
            file.write("\n")
            file.writelines(str(fondo.objetos[i+1].posicion))
            file.write("\n")    
            file.writelines("</objeto_bloque>")
            file.write("\n")
        if fondo.tipo_obj[i]==1:
            print " error:" , i
            file.writelines("<objeto_componente>")
            file.write("\n")

            file.writelines(str(fondo.objetos[i].imagenintermedia))
            file.write("\n")
            
            file.writelines(str(fondo.objetos[i].arg))
            file.write("\n")

            file.writelines(str(fondo.objetos[i].ide))
            file.write("\n")
            
            file.writelines(str(fondo.objetos[i].posicion))
            file.write("\n")            

            file.writelines(str(fondo.objetos[i].color))
            file.write("\n")
            
            file.writelines(str(fondo.objetos[i].texto))
            file.write("\n")

            file.writelines("</objeto_componente>")
            file.write("\n")

    file.close()

