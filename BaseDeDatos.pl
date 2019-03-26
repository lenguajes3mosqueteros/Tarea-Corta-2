﻿%Tarea Corta 2
% Mariano Muñoz Masis
% Karla Rivera Sanchez
% Luis Daniel Prieto Sibaja

%Base de Datos de Enfermedades

%Enfermedades

enfermedad("Diabetes").
enfermedad("Hipertensión").
enfermedad("Asma").
enfermedad("Dislipidemia").
enfermedad("Cefalea").
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

sintoma("Diabetes", "Aumento de sed y orina").
sintoma("Diabetes", "Aumento del apetito").
sintoma("Diabetes", "Fatiga").
sintoma("Diabetes", "Vision borrosa").
sintoma("Diabetes", "Perdida de peso").
sintoma("Hipertensión", "Dolor de cabeza").
sintoma("Hipertensión", "Dificultad para respirar").
sintoma("Hipertensión", "Sangrado nasal").
sintoma("Asma", "Tos, con o sin flema").
sintoma("Asma", "Tiraje de piel al respirar").
sintoma("Asma", "Dificultad al respirar").
sintoma("Dislipidemia", "Xantomas").
sintoma("Dislipidemia", "Anillos opacos en el borde de la cornea").
sintoma("Dislipidemia", "Hipertrofia del hígado o del bazo").
sintoma("Dislipidemia", "Dificultad respiratoria").
sintoma("Dislipidemia", "Riesgo de pancreatitis").
sintoma("Cefalea", "Dolor de cabeza").
sintoma("Cefalea", "Edema palpebral").
sintoma("Cefalea", "Espasmos faciales").
sintoma("Cefalea", "Enrojecimiento de ojos").
sintoma("Cefalea", "Vertigo").
sintoma("Migraña", "Nauseas").
sintoma("Migraña", "Vomitos").
sintoma("Migraña", "Hipersensibilidad a la luz").
sintoma("Migraña", "Dolor de cabeza").
sintoma("Migraña", "Adormecimiento de manos").
sintoma("Lupus", "Dolor de articulaciones").
sintoma("Lupus", "Vomitos").
sintoma("Lupus", "Dolor muscular").
sintoma("Lupus", "Fiebre").
sintoma("Lupus", "Sensibilidad al sol").
sintoma("Bronquitis", "Tos con flemas").
sintoma("Bronquitis", "Molestia en el pecho").
sintoma("Bronquitis", "Fatiga").
sintoma("Bronquitis", "Fiebre").
sintoma("Bronquitis", "Dificultad para respirar").
sintoma("Osteoporosis", "Dolor de espalda").
sintoma("Osteoporosis", "Pérdida de estatura").
sintoma("Osteoporosis", "Postura encorvada").
sintoma("Osteoporosis", "Fractura de huesos con facilidad").
sintoma("Fibromialgia", "Dolor crónico del cuello").
sintoma("Fibromialgia", "Dolor crónico de la espalda").
sintoma("Fibromialgia", "Trastornos del sueño").
sintoma("Fibromialgia", "Hipotiroidismo").
sintoma("Fibromialgia", "Depresión").
sintoma("Calculos Biliales","Fiebre").
sintoma("Calculos Biliales","Vomitos").
sintoma("Calculos Biliales","Cólico Biliar").
sintoma("Calculos Biliales","Coloración amarillenta de la piel ").
sintoma("Calculos Biliales","Nauseas ").
%Sindrome del Intestino Irritable
sintoma("Sindrome del Intestino Irritable","Dolor Abdominal").
sintoma("Sindrome del Intestino Irritable","Cólicos").
sintoma("Sindrome del Intestino Irritable","Estreñimiento").
sintoma("Sindrome del Intestino Irritable","Diarrea").
sintoma("Sindrome del Intestino Irritable","Exceso de Gases")
%Enfermedad Celiaca
sintoma("Enfermedad Celiaca","Hinchazon").
sintoma("Enfermedad Celiaca","Diarrea crónica").
sintoma("Enfermedad Celiaca","Estreñimiento").
sintoma("Enfermedad Celiaca","Gases").
sintoma("Enfermedad Celiaca","Nauseas").
%Colitis Ulserosa
sintoma("Colitis Ulserosa","Fiebre").
sintoma("Colitis Ulserosa","Dolor en el recto ").
sintoma("Colitis Ulserosa","Adelgazamiento").
%Reflujo Gastroesofagico
sintoma("Reflujo Gastroesofagico","Acidez").
sintoma("Reflujo Gastroesofagico","Regurgitacion acida ").
sintoma("Reflujo Gastroesofagico","Dolor de pecho ").
sintoma("Reflujo Gastroesofagico","Jadeos ").
sintoma("Reflujo Gastroesofagico","Dolor de garganta").
sintoma("Reflujo Gastroesofagico","Tos").



%Tratamientos

tratamiento("Diabetes", "Metformina").
tratamiento("Diabetes", "Sulindaco").
tratamiento("Diabetes", "Insulina").
tratamiento("Hipertensión", "Enapranil").
tratamiento("Hipertensión", "Ibersartan").
tratamiento("Asma", "Salbutamol").
tratamiento("Asma", "Ambuterol").
tratamiento("Asma", "Salmeterol").
tratamiento("Asma", "Bromuro de tiotropio").
tratamiento("Dislipidemia", "Análisis de sangre para el colesterol").
tratamiento("Dislipidemia", "Realizar el perfil lipídico").
tratamiento("Dislipidemia", "Uso de estaminas").
tratamiento("Dislipidemia", "Uso de hipolipemiantes").
tratamiento("Cefalea", "Acetaminofen").
tratamiento("Cefalea", "Antidepresivos como prevencion").
tratamiento("Cefalea", "Analgesicos antiinflamatorios").
tratamiento("Migraña", "Analgésicos").
tratamiento("Migraña", "Antiinflamatorios").
tratamiento("Migraña", "Dieta balanceada").
tratamiento("Migraña", "Acupuntura").
tratamiento("Migraña", "Masajes").
tratamiento("Lupus", "Antiinflamatorios no esteroideos").
tratamiento("Lupus", "Corticoesteroides").
tratamiento("Lupus", "Inmunodepresores").
tratamiento("Bronquitis", "Antibióticos").
tratamiento("Bronquitis", "Antitérmicos").
tratamiento("Bronquitis", "Inhaladores").
tratamiento("Bronquitis", "Hidratación").
tratamiento("Osteoporosis", "Bifosfonatos").
tratamiento("Osteoporosis", "Calcitonina").
tratamiento("Osteoporosis", "Raloxifeno").
tratamiento("Osteoporosis", "Teriparatida").
tratamiento("Fibromialgia", "Analgésicos").
tratamiento("Fibromialgia", "Antiinflamatorios").
tratamiento("Fibromialgia", "Antidepresivos").
tratamiento("Fibromialgia", "Anti convulsionantes").
%Calculos Biliales
tratamiento("Calculos Biliales","Cirugia").
tratamiento("Calculos Biliales","Analgesicos, antiinflamatorios y en caso de vomitos antiemeticos.").
tratamiento("Calculos Biliales","Sales biliares").
%Sindrome del Intestino Irritable
tratamiento("Sindrome del Intestino Irritable", "Espasmoliticos ").
tratamiento("Sindrome del Intestino Irritable", "Procinéticos").
tratamiento("Sindrome del Intestino Irritable", "Antidiarreicos").
tratamiento("Sindrome del Intestino Irritable", "Laxantes").
tratamiento("Sindrome del Intestino Irritable", "Antidepresivos").
tratamiento("Sindrome del Intestino Irritable", "Ansiolíticos ").
%Enfermedad Celiaca
tratamiento("Enfermedad Celiaca","Disminuir el contenido de Gluten de los Alimentos").
%Colitis Ulserosa
tratamiento("Colitis Ulserosa","Medicamentos antiinflamatorios").
tratamiento("Colitis Ulserosa","Azatioprina").
tratamiento("Colitis Ulserosa","Antibioticos").
tratamiento("Colitis Ulserosa","Medicamentos antidiarreicos").
tratamiento("Colitis Ulserosa","Cirugia").
%Reflujo Gastroesofagico
tratamiento("Reflujo Gastroesofagico","Antiacidos").
tratamiento("Reflujo Gastroesofagico", "Inhibidores de bomba de protones").
tratamiento("Reflujo Gastroesofagico", "Medicamentos Procinéticos").


%Cuidados

cuidado("Diabetes", "Comer sanamente").
cuidado("Diabetes", "Hacer ejercicio").
cuidado("Diabetes", "Revisar el azúcar en la sangre").
cuidado("Diabetes", "Controlar el peso").
cuidado("Diabetes", "Visitar al médico con regularidad").
cuidado("Hipertensión", "Disminuir consumo de sal").
cuidado("Hipertensión", "Hacer ejercicio").
cuidado("Hipertensión", "Mantener un peso adecuado").
cuidado("Hipertensión", "No beber mucho alcohol").
cuidado("Asma", "Conocer sus síntomas").
cuidado("Asma", "Tomar lecturas").
cuidado("Asma", "Conocer sus desencadenantes").
cuidado("Asma", "Cuidarse al hacer ejercicio").
cuidado("Dislipidemia", "Perder peso").
cuidado("Dislipidemia", "Hacer ejercicio").
cuidado("Dislipidemia", "Disminuir las grasas saturadas").
cuidado("Dislipidemia", "Chequeos cada cierto tiempo").
cuidado("Cefalea", "Llevar una vida ordenada").
cuidado("Cefalea", "Realizar ejercicio").
cuidado("Cefalea", "Habitos de alimentacion saludables").
cuidado("Cefalea", "Evitar el alcohol y el tabaco").
cuidado("Cefalea", "Evitar el abuso de medicación y cafeína").
cuidado("Migraña", "No fumar").
cuidado("Migraña", "No beba alcohol").
cuidado("Migraña", "Ejercicio físico").
cuidado("Migraña", "Manejar el estrés").
cuidado("Lupus", "No exponerse al sol").
cuidado("Lupus", "Lavarse las manos").
cuidado("Lupus", "Hidratarse").
cuidado("Lupus", "Usar protector solar").
cuidado("Bronquitis", "Evitar cambios bruscos de temperatura").
cuidado("Bronquitis", "Uso de filtros purificadores").
cuidado("Bronquitis", "Utilizar un humidificador de aire").
cuidado("Bronquitis", "Beber mucha agua").
cuidado("Osteoporosis", "Aporte de calcio a la dieta").
cuidado("Osteoporosis", "Exposición al sol para vitamina D").
cuidado("Osteoporosis", "Ejercicio físico").
cuidado("Osteoporosis", "Evitar caídas").
cuidado("Fibromialgia", "Ejercicio físico").
cuidado("Fibromialgia", "Fortaleza muscular").
cuidado("Fibromialgia", "Controlar el estrés").
cuidado("Fibromialgia", "Evitar la fatiga").
%Calculos Biliales
cuidado("Calculos Biliales","Evitar el Sobrepeso").
cuidado("Calculos Biliales", "Comer fibras y Liquidos").
cuidado("Calculos Biliales", "Consumos de comidas altas en sodio").
%Sindrome del Intestino Irritable
cuidado("Sindrome del Intestino Irritable", "Evitar comidas copiosas, son preferibles comidas más frecuentes y menos abundantes.").
cuidado("Sindrome del Intestino Irritable", "Evitar, en lo posible, las situaciones que le pongan nervioso o estresen.").
cuidado("Sindrome del Intestino Irritable", "Realizar ejercicio físico adecuado a su edad y evitar el sedentarismo.").
%Enfermedad Celiaca
cuidado("Enfermedad Celiaca","Leer las etiquetas de los alimentos para descartar que contengan gluten ").
%Colitis Ulserosa
cuidado("Colitis Ulserosa", "Reduce la fibra si es un alimento problematico.").
cuidado("Colitis Ulserosa", "Reduce el consumo de productos lacteos").
cuidado("Colitis Ulserosa", "Come porciones pequeñas.").
cuidado("Colitis Ulserosa", "Consumir probioticos.").
cuidado("Colitis Ulserosa", "Consumir aceite de pescado.").
%Reflujo Gastroesofagico
cuidado("Reflujo Gastroesofagico", "Evitar bebidas como: café, cítricas, gaseosas.").
cuidado("Reflujo Gastroesofagico", "Comer chocolate o menta.").
cuidado("Reflujo Gastroesofagico", "Evitar las comidas grasosas").
cuidado("Reflujo Gastroesofagico", "No Fumar").




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



%Porcion de mariano
%Enfermedad


%Sintomas Por Enfermedad
%Calculos Biliales


%Tratamientos Generales


%Cuidados Generales
