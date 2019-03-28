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
enfermedad("Calculos Biliales").
enfermedad("Sindrome del Intestino Irritable").


%Sintomas

sintoma("Dolor de cabeza").
sintoma("Dificultad para respirar").
sintoma("Sangrado nasal").
sintoma("Tos").
sintoma("Tiraje de piel al respirar").
sintoma("Nauseas").
sintoma("Vomitos").
sintoma("Hipersensibilidad a la luz").
sintoma("Adormecimiento de manos").
sintoma("Dolor de articulaciones").
sintoma("Dolor muscular").
sintoma("Fiebre").
sintoma("Sensibilidad al sol").
sintoma("Colico Biliar").
sintoma("Coloración amarillenta de la piel").
sintoma("Dolor Abdominal").
sintoma("Colicos").
sintoma("Estreñimiento").
sintoma("Diarrea").
sintoma("Exceso de Gases").

%Tratamientos

tratamiento("Diureticos de tiazida").
tratamiento("Inhibidores de la enzima convertidora de angiotensin").
tratamiento("Bloqueadores de los canales de calcio").
tratamiento("Salbutamol").
tratamiento("Ambuterol").
tratamiento("Salmeterol").
tratamiento("Bromuro de tiotropio").
tratamiento("Antidepresivos").
tratamiento("Analgesicos").
tratamiento("Antiinflamatorios").
tratamiento("Acupuntura").
tratamiento("Masajes").
tratamiento("Corticoesteroides").
tratamiento("Inmunodepresores").
tratamiento("Cirugia").
tratamiento("Sales biliares").
tratamiento("Espasmoliticos").
tratamiento("Procineticos").
tratamiento("Antidiarreicos").
tratamiento("Laxantes").
tratamiento("Ansioliticos").


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


