%Tarea Corta 2
% Mariano Muñoz Masis
% Karla Rivera Sanchez
% Luis Daniel Prieto Sibaja

%Base de Datos de Enfermedades

%Enfermedades

enfermedad("Hipertensión").
enfermedad("Asma").
enfermedad("Migraña").
enfermedad("Lupus").
enfermedad("Bronquitis").
enfermedad("Osteoporosis").
enfermedad("Fibromialgia").
enfermedad("Calculos Biliales").
enfermedad("Sindrome del Intestino Irritable").
enfermedad("Enfermedad Celiaca").
enfermedad("Colitis Ulserosa").
enfermedad("Reflujo Gastroesofagico").


%Sintomas

sintoma("Aumento de sed y orina").
sintoma("Aumento del apetito").
sintoma("Fatiga").
sintoma("Vision borrosa").
sintoma("Perdida de peso").
sintoma("Dolor de cabeza").
sintoma("Dificultad para respirar").
sintoma("Sangrado nasal").
sintoma("Tos, con o sin flema").
sintoma("Tiraje de piel al respirar").
sintoma("Xantomas").
sintoma("Anillos opacos en el borde de la cornea").
sintoma("Hipertrofia del hígado o del bazo").
sintoma("Riesgo de pancreatitis").
sintoma("Edema palpebral").
sintoma("Espasmos faciales").
sintoma("Enrojecimiento de ojos").
sintoma("Vertigo").
sintoma("Nauseas").
sintoma("Vomitos").
sintoma("Hipersensibilidad a la luz").
sintoma("Adormecimiento de manos").
sintoma("Dolor de articulaciones").
sintoma("Dolor muscular").
sintoma("Fiebre").
sintoma("Sensibilidad al sol").
sintoma("Tos con flemas").
sintoma("Molestia en el pecho").
sintoma("Dificultad para respirar").
sintoma("Dolor de espalda").
sintoma("Perdida de estatura").
sintoma("Postura encorvada").
sintoma("Fractura de huesos con facilidad").
sintoma("Dolor cronico del cuello").
sintoma("Dolor cronico de la espalda").
sintoma("Trastornos del sueño").
sintoma("Hipotiroidismo").
sintoma("Depresion").
sintoma("Colico Biliar").
sintoma("Coloración amarillenta de la piel").
sintoma("Nauseas ").
sintoma("Dolor Abdominal").
sintoma("Colicos").
sintoma("Estreñimiento").
sintoma("Diarrea").
sintoma("Exceso de Gases").
sintoma("Hinchazon").
sintoma("Diarrea cronica").
sintoma("Dolor en el recto").
sintoma("Adelgazamiento").
sintoma("Acidez").
sintoma("Regurgitacion acida").
sintoma("Dolor de pecho").
sintoma("Jadeos").
sintoma("Dolor de garganta").
sintoma("Tos").



%Tratamientos

tratamiento("Metformina").
tratamiento("Sulindaco").
tratamiento("Insulina").
tratamiento("Enapranil").
tratamiento("Ibersartan").
tratamiento("Salbutamol").
tratamiento("Ambuterol").
tratamiento("Salmeterol").
tratamiento("Bromuro de tiotropio").
tratamiento("Analisis de sangre para el colesterol").
tratamiento("Realizar el perfil lipidico").
tratamiento("Uso de estaminas").
tratamiento("Uso de hipolipemiantes").
tratamiento("Acetaminofen").
tratamiento("Antidepresivos como prevencion").
tratamiento("Analgesicos antiinflamatorios").
tratamiento("Antiinflamatorios").
tratamiento("Dieta balanceada").
tratamiento("Acupuntura").
tratamiento("Masajes").
tratamiento("Antiinflamatorios no esteroideos").
tratamiento("Corticoesteroides").
tratamiento("Inmunodepresores").
tratamiento("Antibioticos").
tratamiento("Antitermicos").
tratamiento("Inhaladores").
tratamiento("Hidratacion").
tratamiento("Bifosfonatos").
tratamiento("Calcitonina").
tratamiento("Raloxifeno").
tratamiento("Teriparatida").
tratamiento("Antidepresivos").
tratamiento("Anti convulsionantes").
tratamiento("Cirugia").
tratamiento("Sales biliares").
tratamiento("Espasmoliticos").
tratamiento("Procineticos").
tratamiento("Antidiarreicos").
tratamiento("Laxantes").
tratamiento("Ansioliticos").
tratamiento("Disminuir el contenido de Gluten de los Alimentos").
tratamiento("Azatioprina").
tratamiento("Antiacidos").
tratamiento("Inhibidores de bomba de protones").
tratamiento("Medicamentos Procineticos").
tratamiento(hola).


%prevencion

prevencion("Comer sanamente").
prevencion("Hacer ejercicio").
prevencion("Revisar el azúcar en la sangre").
prevencion("Controlar el peso").
prevencion("Visitar al medico con regularidad").
prevencion("Disminuir consumo de sal").
prevencion("No beber mucho alcohol").
prevencion("Conocer sus síntomas").
prevencion("Tomar lecturas").
prevencion("Cuidarse al hacer ejercicio").
prevencion("Perder peso").
prevencion("Disminuir las grasas saturadas").
prevencion("Chequeos cada cierto tiempo").
prevencion("Llevar una vida ordenada").
prevencion("Evitar el alcohol y el tabaco").
prevencion("Evitar el abuso de medicación y cafeina").
prevencion("No fumar").
prevencion("Manejar el estres").
prevencion("No exponerse al sol").
prevencion("Lavarse las manos").
prevencion("Hidratarse").
prevencion("Usar protector solar").
prevencion("Evitar cambios bruscos de temperatura").
prevencion("Uso de filtros purificadores").
prevencion("Utilizar un humidificador de aire").
prevencion("Beber mucha agua").
prevencion("Aporte de calcio a la dieta").
prevencion("Exposición al sol para vitamina D").
prevencion("Evitar caidas").
prevencion("Fortaleza muscular").
prevencion("Controlar el estres").
prevencion("Evitar la fatiga").
prevencion("Comer fibras y Liquidos").
prevencion("Consumos de comidas altas en sodio").
prevencion("Evitar comidas copiosas, son preferibles comidas más frecuentes y menos abundantes.").
prevencion("Realizar ejercicio físico adecuado a su edad y evitar el sedentarismo.").
prevencion("Leer las etiquetas de los alimentos para descartar que contengan gluten").
prevencion("Reduce la fibra si es un alimento problematico.").
prevencion("Reduce el consumo de productos lacteos").
prevencion("Come porciones pequeñas.").
prevencion("Consumir probioticos.").
prevencion("Consumir aceite de pescado.").
prevencion("Evitar bebidas como: cafe, citricas, gaseosas.").
prevencion("Comer chocolate o menta.").
prevencion("Evitar las comidas grasosas").




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

o --> sn(_Gen2,Num), sv(Num).
sn(Gen,Num) --> det(Gen,Num), n(Gen,Num).
sv(Num) --> vt(Num), sn(_Gen,_Num2).
sv(Num) --> vi(Num).
det(f,sg) --> [la]; [una].
det(f,pl) --> [las]; [unas].
det(m,sg) --> [el]; [un].
det(m,pl) --> [los]; [unos].
vi(sg) --> [ladra].
vi(pl) --> [ladran].
vt(sg) --> [muerde].
vt(pl) --> [muerden].
n(f,sg) --> [perra].
n(f,pl) --> [perras].
n(m,sg) --> [perro]; [hueso].
n(m,pl) --> [perros]; [huesos].


