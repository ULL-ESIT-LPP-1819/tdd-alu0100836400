#####array de menus

@listaEtiquetas = Lista.new()
@listaEtiquetas2 = Lista.new()
@listaEtiquetas3 = Lista.new()
@listaEtiquetas4 = Lista.new()
@listaEtiquetas5 = Lista.new()
@listaEtiquetas6 = Lista.new()
@listaEtiquetas7 = Lista.new()
@listaEtiquetas8 = Lista.new()
@listaEtiquetas9 = Lista.new()
@listaEtiquetas10 = Lista.new()
@etiqueta = Etiqueta.new("Yatekomo", 10, 4.7, 28, 3.7, 4.2, 1.2)
@etiqueta2 = Etiqueta.new("ColaCao", 3.6, 2.4, 21, 20, 7.8, 0.27)
@etiqueta3 = Etiqueta.new("Bimbo", 2.6, 0.7, 41, 3.3, 9.3, 0.91)
@etiqueta4 = Etiqueta.new("Turrón", 28, 12, 56, 45, 8.4, 0.7)
@etiqueta5 = Etiqueta.new("Croissant", 30, 12, 47, 23, 7, 0.68)

@listaEtiquetas.insertar_cabeza(@etiqueta)
@listaEtiquetas.insertar_cabeza(@etiqueta2)
@menu = Menu.new(@listaEtiquetas)

@listaEtiquetas2.insertar_cabeza(@etiqueta3)
@listaEtiquetas2.insertar_cabeza(@etiqueta4)
@menu2 = Menu.new(@listaEtiquetas2)

@listaEtiquetas3.insertar_cabeza(@etiqueta4)
@listaEtiquetas3.insertar_cabeza(@etiqueta5)
@menu3 = Menu.new(@listaEtiquetas3)

@listaEtiquetas4.insertar_cabeza(@etiqueta1)
@listaEtiquetas4.insertar_cabeza(@etiqueta5)
@menu4 = Menu.new(@listaEtiquetas4)

@listaEtiquetas5.insertar_cabeza(@etiqueta2)
@listaEtiquetas5.insertar_cabeza(@etiqueta4)
@menu5 = Menu.new(@listaEtiquetas5)

@listaEtiquetas6.insertar_cabeza(@etiqueta2)
@listaEtiquetas6.insertar_cabeza(@etiqueta3)
@menu6 = Menu.new(@listaEtiquetas6)

@listaEtiquetas7.insertar_cabeza(@etiqueta2)
@listaEtiquetas7.insertar_cabeza(@etiqueta5)
@menu7 = Menu.new(@listaEtiquetas7)

@listaEtiquetas8.insertar_cabeza(@etiqueta1)
@listaEtiquetas8.insertar_cabeza(@etiqueta3)
@menu8 = Menu.new(@listaEtiquetas8)

@listaEtiquetas9.insertar_cabeza(@etiqueta1)
@listaEtiquetas9.insertar_cabeza(@etiqueta4)
@menu9 = Menu.new(@listaEtiquetas9)

@listaEtiquetas10.insertar_cabeza(@etiqueta3)
@listaEtiquetas10.insertar_cabeza(@etiqueta5)
@menu10 = Menu.new(@listaEtiquetas10)

@arrayMenus = [@menu, @menu2, @menu3, @menu4, @menu5, @menu6, @menu7, @menu8, @menu9, @menu10]

####lista de individuos

@tratamientoObesidad = TratamientoObesidad.new(26, 1, 74, 1.89, 0.0)
@tratamientoObesidad2 = TratamientoObesidad.new(16, 1, 100, 1.50, 0.12) #0.0 0.12 0.27 0.54
@tratamientoObesidad3 = TratamientoObesidad.new(22, 0, 83, 1.95, 0.27)
@tratamientoObesidad4 = TratamientoObesidad.new(33, 1, 61, 1.44, 0.54)
@tratamientoObesidad5 = TratamientoObesidad.new(42, 0, 93, 2.10, 0.54)
@tratamientoObesidad6 = TratamientoObesidad.new(6, 1, 78, 1.69, 0.0)
@tratamientoObesidad7 = TratamientoObesidad.new(12, 0, 50, 1.10, 0.12) #0.0 0.12 0.27 0.54
@tratamientoObesidad8 = TratamientoObesidad.new(35, 1, 43, 1.65, 0.27)
@tratamientoObesidad9 = TratamientoObesidad.new(21, 0, 66, 1.34, 0.54)
@tratamientoObesidad10 = TratamientoObesidad.new(56, 1, 23, 2.09, 0.54)

@listaPacientes = Lista.new()
@listaPacientes.insertar_cabeza(@tratamientoObesidad)
@listaPacientes.insertar_cabeza(@tratamientoObesidad2)
@listaPacientes.insertar_cabeza(@tratamientoObesidad3)
@listaPacientes.insertar_cabeza(@tratamientoObesidad4)
@listaPacientes.insertar_cabeza(@tratamientoObesidad5)
@listaPacientes.insertar_cabeza(@tratamientoObesidad6)
@listaPacientes.insertar_cabeza(@tratamientoObesidad7)
@listaPacientes.insertar_cabeza(@tratamientoObesidad8)
@listaPacientes.insertar_cabeza(@tratamientoObesidad9)
@listaPacientes.insertar_cabeza(@tratamientoObesidad10)

