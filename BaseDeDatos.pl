%Tarea Corta 2
% Mariano Muñoz Masis
% Karla Rivera Sanchez
% Luis Daniel Prieto Sibaja

%Base de Datos de Enfermedades

%Porcion de daniel





%Porcion de Karla
enfermedad("Migraña")

sintoma("Migraña", "Nauseas").
sintoma("Migraña", "Vomitos").
sintoma("Migraña", "Hipersensibilidad a la luz").
sintoma("Migraña", "Dolor de cabeza").
sintoma("Migraña", "Adormecimiento de manos").

tratamiento("Migraña", "Analgésicos").
tratamiento("Migraña", "Antiinflamatorios").
tratamiento("Migraña", "Dieta balanceada").
tratamiento("Migraña", "Acupuntura").
tratamiento("Migraña", "Masajes").

cuidado("Migraña", "No fumar").
cuidado("Migraña", "No beba alcohol").
cuidado("Migraña", "Ejercicio físico").
cuidado("Migraña", "Manejar el estrés").

enfermedad("Lupus")

sintoma("Lupus", "Dolor de articulaciones").
sintoma("Lupus", "Vomitos").
sintoma("Lupus", "Dolor muscular").
sintoma("Lupus", "Fiebre").
sintoma("Lupus", "Sensibilidad al sol").

tratamiento("Lupus", "Antiinflamatorios no esteroideos").
tratamiento("Lupus", "Corticoesteroides").
tratamiento("Lupus", "Inmunodepresores").

cuidado("Lupus", "No exponerse al sol").
cuidado("Lupus", "Lavarse las manos").
cuidado("Lupus", "Hidratarse").
cuidado("Lupus", "Usar protector solar").

enfermedad("Bronquitis")

sintoma("Bronquitis", "Tos con flemas").
sintoma("Bronquitis", "Molestia en el pecho").
sintoma("Bronquitis", "Fatiga").
sintoma("Bronquitis", "Fiebre").
sintoma("Bronquitis", "Dificultad para respirar").

tratamiento("Bronquitis", "Antibióticos").
tratamiento("Bronquitis", "Antitérmicos").
tratamiento("Bronquitis", "Inhaladores").
tratamiento("Bronquitis", "Hidratación").

cuidado("Bronquitis", "Evitar cambios bruscos de temperatura").
cuidado("Bronquitis", "Uso de filtros purificadores").
cuidado("Bronquitis", "Utilizar un humidificador de aire").
cuidado("Bronquitis", "Beber mucha agua").

enfermedad("Osteoporosis")

sintoma("Osteoporosis", "Dolor de espalda").
sintoma("Osteoporosis", "Pérdida de estatura").
sintoma("Osteoporosis", "Postura encorvada").
sintoma("Osteoporosis", "Fractura de huesos con facilidad").

tratamiento("Osteoporosis", "Bifosfonatos").
tratamiento("Osteoporosis", "Calcitonina").
tratamiento("Osteoporosis", "Raloxifeno").
tratamiento("Osteoporosis", "Teriparatida").

cuidado("Osteoporosis", "Aporte de calcio a la dieta").
cuidado("Osteoporosis", "Exposición al sol para vitamina D").
cuidado("Osteoporosis", "Ejercicio físico").
cuidado("Osteoporosis", "Evitar caídas").

enfermedad("Fibromialgia")

sintoma("Fibromialgia", "Dolor crónico del cuello").
sintoma("Fibromialgia", "Dolor crónico de la espalda").
sintoma("Fibromialgia", "Trastornos del sueño").
sintoma("Fibromialgia", "Hipotiroidismo").
sintoma("Fibromialgia", "Depresión").

tratamiento("Fibromialgia", "Analgésicos").
tratamiento("Fibromialgia", "Antiinflamatorios").
tratamiento("Fibromialgia", "Antidepresivos").
tratamiento("Fibromialgia", "Anti convulsionantes").

cuidado("Fibromialgia", "Ejercicio físico").
cuidado("Fibromialgia", "Fortaleza muscular").
cuidado("Fibromialgia", "Controlar el estrés").
cuidado("Fibromialgia", "Evitar la fatiga").




%Porcion de mariano
%Enfermedad
enfermedad("Calculos Biliales").
enfermedad("Sindrome del Intestino Irritable").
enfermedad("Enfermedad Celiaca").
enfermedad("Colitis Ulserosa").
enfermedad("Reflujo Gastroesofagico").

%Sintomas Por Enfermedad
%Calculos Biliales
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

%Tratamientos Generales
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

%Cuidados Generales
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
