%Tarea Corta 2
% Mariano Muñoz Masis
% Karla Rivera Sanchez
% Luis Daniel Prieto Sibaja

%Base de Datos de Enfermedades

%Sintomas

sintoma("Dolor de cabeza").
sintoma("Dificultad para respirar").
sintoma("Sangrado nasal").
sintoma("Tos").
sintoma("Tiraje de piel al respirar").
sintoma("Sibilancias"):
sintoma("Nauseas").
sintoma("Vomitos").
sintoma("Hipersensibilidad a la luz").
sintoma("Adormecimiento de manos").
sintoma("Dolor de articulaciones").
sintoma("Dolor muscular").
sintoma("Fiebre").
sintoma("Sensibilidad al sol").
sintoma("Sarpullido enrojecido").
sintoma("Colico Biliar").
sintoma("Coloracion amarillenta de la piel").
sintoma("Dolor Abdominal").
sintoma("Colicos").
sintoma("Estreñimiento").
sintoma("Diarrea").
sintoma("Exceso de Gases").

%Tratamientos

tratamiento("Diureticos de tiazida").
tratamiento("Inhibidores de la enzima convertidora de angiotensina").
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

prevencion("Disminuir consumo de sal").
prevencion("No beber mucho alcohol").
prevencion("Conocer sus síntomas").
prevencion("Tomar lecturas").
prevencion("Controlar el peso").
prevencion("No fumar").
prevencion("Manejar el estres").
prevencion("No exponerse al sol").
prevencion("Lavarse las manos").
prevencion("Hidratarse").
prevencion("Usar protector solar").
prevencion("No exponerse al sol").
prevencion("Comer fibras y liquidos").
prevencion("Consumos de comidas altas en sodio").
prevencion("Evitar comidas copiosas").
prevencion("Controlar el estres").
prevencion("Realizar ejercicio físico adecuado").
prevencion("Conocer sus síntomas").
prevencion("Aprender a tomar lecturas").
prevencion("Conocer los desencadenantes").

%causas

causa("Anormalidad en serotonina").
causa("Alimentos como queso añejo, vino tinto y chocolate").
causa("Cambios hormonales en mujeres").
causa("Alteracion en el sistema inmunologico").
causa("Genetica").
causa("Exposicion a la luz").
causa("Antecedentes familiares").
causa("Altos niveles de estres").
causa("Mala alimentacion").
causa("Insuficiencia de la vesicula biliar").
causa("Diabetes").
causa("Cirrosis hepatica").
causa("Eventos estresantes durante la niñez").
causa("Ansiedad").
causa("Depresion").
causa("Quimicos en el aire").
causa("Infecciones respiratorias").
causa("Cambios en el clima").

%Registro de las causas

causas("Hipertension", "Antecedentes familiares, altos niveles de estres y mala alimentacion").
causas("Asma", "Quimicos en el aire, infecciones respiratorias y cambios en el clima").
causas("Migraña", "Anormalidad en serotonina, alimentos como queso añejo, vino tinto y chocolate y los cambios hormonales en las mujeres").
causas("Lupus", "Alteracion en el sistema inmunologico, genetica y exposicion a la luz").
causas("Calculos Biliares", "Insuficiencia de la vesicula biliar, diabetes y cirrosis hepatica").
causas("Sindrome del Intestino Irritable", "Eventos estresantes en la niñez, ansiedad y depresion").

%Registro de los Tratamientos

tratamientos("Hipertension", "Diureticos de tiazida, inhibidores de la enzima convertidora de angiotensina y bloqueadores de los canales de calcio").
tratamientos("Asma", "Salbutamol, Ambuterol, Salmeterol, Bromuro de tiotropio").
tratamientos("Migraña", "Analgesicos, antiinflamatorios, acupuntura y masajes").
tratamientos("Lupus", "Antiinflamatorios, corticoesteroides e inmunodepresores").
tratamientos("Calculos Biliares", "Antiimflamatorios, analgesicos, sales biliares y cirugía, si se requiere").
tratamientos("Sindrome del Intestino Irritable", "Espasmolíticos, procinéticos, antidiarreicos, laxantes, antidepresivos y ansiolíticos").

%Registro de las prevenciones

prevenciones("Hipertension", "Disminuir consumo de sal, realizar ejercicio físico adecuado, controlar el peso y no beber mucho alcohol").
prevenciones("Asma", "Conocer sus síntomas, aprender a tomar lecturas, conocer los desencadenantes y realizar ejercicio físico adecuado").
prevenciones("Migraña", "No fumar, no beber mucho alcohol, hacer ejercicio y manejar el estres").
prevenciones("Lupus", "No exponerse al sol, usar protector solar, hidratarse y lavarse las manos").
prevenciones("Calculos Biliares", "Comer fibras y liquidos, consumir comidas altas en sodio y evitar comidas copiosas").
prevenciones("Sindrome del Intestino Irritable", "Evitar comidas copiosas, controlar el estres y realizar ejercicio fisico adecuado").

%Registro de las Enfermedades

enfermedad("Migraña", Sintomas):-miembro(Sintomas, ["Nauseas", "Vomitos", "Hipersensibilidad a la luz", "Dolor de cabeza", "Adormecimiento de manos"]).
enfermedad("Lupus", Sintomas):-miembro(Sintomas, ["Dolor de articulaciones", "Dolor muscular", "Fiebre", "Sensibilidad al sol", "Sarpullido enrojecido"]).
enfermedad("Hipertension", Sintomas):-miembro(Sintomas, ["Dolor de cabeza", "Dificultad de respirar", "Sangrado nasal"]).
enfermedad("Calculos Biliares", Sintomas):-miembro(Sintomas, ["Colico Biliar", "Fiebre", "Coloracion amarillenta de la piel", "Nauseas", "Vomitos"]).
enfermedad("Sindrome del Intestino Irritable", Sintomas):-miembro(Sintomas, ["Dolor Abdominal", "Colicos", "Estreñimiento", "Diarrea", "Exceso de Gases"]).
enfermedad("Asma", Sintomas):-miembro(Sintomas, ["Tos", "Tiraje de piel al respirar", "Dificultad para respirar", "Sibilancias"]).

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


