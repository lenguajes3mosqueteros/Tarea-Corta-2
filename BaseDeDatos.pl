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
sintoma("Sibilancias").
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

causas('Hipertension', 'Antecedentes familiares, altos niveles de estres y mala alimentacion').
causas('Asma', 'Quimicos en el aire, infecciones respiratorias y cambios en el clima').
causas('Migrana', 'Anormalidad en serotonina, alimentos como queso añejo, vino tinto y chocolate y los cambios hormonales en las mujeres').
causas('Lupus', 'Alteracion en el sistema inmunologico, genetica y exposicion a la luz').

%Registro de los Tratamientos

tratamientos('Hipertension', 'Diureticos de tiazida, inhibidores de la enzima convertidora de angiotensina y bloqueadores de los canales de calcio').
tratamientos('Asma', 'Salbutamol, Ambuterol, Salmeterol, Bromuro de tiotropio').
tratamientos('Migrana', 'Analgesicos, antiinflamatorios, acupuntura y masajes').
tratamientos('Lupus', 'Antiinflamatorios, corticoesteroides e inmunodepresores').


%Registro de las prevenciones

prevenciones('Hipertension', 'Disminuir consumo de sal, realizar ejercicio físico adecuado, controlar el peso y no beber mucho alcohol').
prevenciones('Asma', 'Conocer sus síntomas, aprender a tomar lecturas, conocer los desencadenantes y realizar ejercicio físico adecuado').
prevenciones('Migrana', 'No fumar, no beber mucho alcohol, hacer ejercicio y manejar el estres').
prevenciones('Lupus', 'No exponerse al sol, usar protector solar, hidratarse y lavarse las manos').

%Registro de las Enfermedades

enfermedad('Migrana', Sintomas):-miembro(Sintomas, [nauseas, vomitos, dolor, adormecimiento]).
enfermedad('Lupus', Sintomas):-miembro(Sintomas, [dolor, fiebre, sensibilidad, sarpullido]).
enfermedad('Hipertension', Sintomas):-miembro(Sintomas, [dolor, ahogamiento, sangrado]).
enfermedad('Asma', Sintomas):-miembro(Sintomas, [tos, tiraje, ahogamiento, sibilancias]).

trata(X):-tratamientos(X,L), write(L).
preve(A):-prevenciones(A,L), write(L).
causa(B):-causas(B,L), write(L).

buscaEnfermedad(_,[]):-!.
buscaEnfermedad(Padecimiento,[X|T]):-
	enfermedad(Padecimiento,X), buscaEnfermedad(Padecimiento,T).

%Cambiar esta descripcion ojo
% Lee la entrada y la convierte en una lista de terminos atomicos
:- [readline].

consulta:- write('Bienvenido a Dr. Log'), nl,
	   write('Para consultarle a Dr. Log, debes escribirle tres sintomas'), nl,
	   write('Cuando DrLog averigue que tienes, puedes preguntarle sobre tratamientos, causas y prevenciones'), nl,
	   write('Escribe "iniciar." para iniciar la consulta. Para terminar la consulta escribe "adios".').

iniciar:-
	write('Su consulta con DrLog ha iniciado'), nl,
	readline(Input),
	drLog(Input),!.

%Reglas para terminar la consulta cuando un paciente se despide
drLog(['adios'|_]) :-
	respuesta(['Adios, espero que te mejores']).
drLog(['gracias'|_]) :-
	respuesta(['Con gusto, espero que te mejores']).

drLog([_,'adios'|_]) :-
	respuesta(['Adios, espero que te mejores']).
drLog([_,'gracias'|_]) :-
	respuesta(['Con gusto, espero que te mejores']).
drLog([_,_,'adios'|_]) :-
	respuesta(['Adios, espero que te mejores']).
drLog([_,_,'gracias'|_]) :-
	respuesta(['Con gusto, espero que te mejores']).

% Hace que DrLog siga la conversacion y despues de escribir la respuesta
% espere una nueva solicitud por parte del paciente
drLog(Input) :-
	diccionario(Stim, Response),
	comparar(Stim, Dicc, Input),
	comparar(Response, Dicc, Output),
	write('DrLog: '),
	respuesta(Output),
	readline(Input1),
	!, drLog(Input1).

% matching the input to the Stimulus pair
comparar([N|diccionario], Dicc, SalidaObjetivo) :-
	integer(N), buscarDiccionario(N,Dicc,Lt),
	append(Lt,Rt, SalidaObjetivo),
	comparar(diccionario, Dicc, Rt).

comparar([Entrada|diccionario], Diccionario, [Entrada|SalidaObjetivo]) :-atom(Entrada), comparar(diccionario, Diccionario, SalidaObjetivo).

comparar([], _ ,[]).

%Buscar en el diccionario
buscarDiccionario(Key, [(Key, Value)|_], Value).
buscarDiccionario(Key, [(Key1, _)|Diccionario], Value) :- \=(Key, Key1), buscarDiccionario(Key, Diccionario, Value).



%Analisis de conversaciones y respuestas para el paciente

:- dynamic(diccionario/1).
%Saludos y respuestas para empezar la conversacion
diccionario([buenas, noches], ['Hola', 'buenas noches', 'soy', 'DrLog.','¿En que te puedo ayudar?']).
diccionario([buenas, tardes], ['Hola', 'buenas tardes,','soy','DrLog.','¿En que te puedo ayudar?']).
diccionario([buenos,dias], ['Hola','buenos dias', 'soy','DrLog.','¿En que te puedo ayudar?']).
diccionario([hola|_], ['Hola' ,'soy DrLog ¿Como puedo ayudarte?']).

% Lo que el paciente puede escribir para darle la enfermedad, causas,
% tratamiento y prevenciones
% Tambien se evaluan los sintomas para asignarle una enfermedad
diccionario([_,_,como, esta |_],['Muy bien gracias por preguntar', '¿Como estas tu?']).
diccionario([_,como, esta |_],['Muy bien gracias por preguntar', '¿Como estas tu?']).
diccionario([como, esta |_],['Muy bien gracias por preguntar', '¿Como esta usted?']).
diccionario([estoy, bien|_], ['Me alegro, ¿te puedo ayudar en algo?']).
diccionario([no], ['En ese caso, ¿a que se debe tu visita?']).
diccionario([si], ['Muy bien, dime que es lo que sientes, por favor']).
diccionario([estoy, enfermo|_], ['Entiendo, ¿podrias decirme que sientes?']).
diccionario([no, tan, bien], ['¿Podrias indicarme que es lo que sientes?']).
diccionario([mal],['¿Podrias indicarme que es lo que sientes?']).
diccionario([me, siento, mal],['¿Podrias indicarme que es lo que sientes?']).
diccionario([_,me, siento, mal],['¿Podrias indicarme que es lo que sientes?']).
diccionario([bien],['En ese caso, ¿sientes algo en particular?']).
diccionario([muy, bien],['En ese caso, ¿sientes algo en particular?']).
diccionario([muy, mal],['Entiendo, cuentame que sientes']).
diccionario([fatal],['Entiendo, cuentame que sientes']).
diccionario([_,necesito,ayuda|_],['Por supuesto, para ayudarte, cuentame que sientes']).
diccionario([necesito,ayuda|_],['Por supuesto, para ayudarte, cuentame que sientes']).
diccionario([_,_,siento, A,B,y,C|_], ['Parece', que, tienes,':',L]):-buscaEnfermedad(L,[A,B,C]).
diccionario([_,siento, A,B,y,C|_], ['En este caso',tienes,':',L]):-buscaEnfermedad(L,[A,B,C]).
diccionario([siento, A,B,y,C|_], ['Te he diagnosticado',de,':',L]):-buscaEnfermedad(L,[A,B,C]).
diccionario([siento, A|_], ['Dime tres sintomas para poder diagnosticarte']).
diccionario([siento, A,y,B|_], ['Tenemos un caso',de,':',L]):-buscaEnfermedad(L,[A,B]).
diccionario([_,siento, A|_], ['Dime tres sintomas para poder diagnosticarte']).
diccionario([_,siento, A,y,B|_], ['Vaya',tienes,':',L]):-buscaEnfermedad(L,[A,B]).
diccionario([_,_,siento, A|_], ['Dime tres sintomas para poder diagnosticarte']).
diccionario([_,_,siento, A,y,B|_], ['Parece', que, tienes,':',L]):-buscaEnfermedad(L,[A,B]).
diccionario([_,_,siento, A,B,y,C|_], ['Parece', que, tienes,':',L]):-buscaEnfermedad(L,[A,B,C]).
diccionario([_,siento, A,B,y,C|_], ['Listo, en este caso tienes',':',L]):-buscaEnfermedad(L,[A,B,C]).
diccionario([tengo, A,B,y,C|_], ['Te he diagnosticado:',L]):-buscaEnfermedad(L,[A,B,C]).
diccionario([tengo, A|_], ['Dime tres sintomas para poder diagnosticarte']).
diccionario([tengo, A,y,B|_], ['Parece', que, tienes,':',L]):-buscaEnfermedad(L,[A,B]).
diccionario([_,tengo, A|_], ['Dime tres sintomas para poder darte un diagnostico']).
diccionario([_,tengo, A,y,B|_], ['Tenemos un caso',de,':',L]):-buscaEnfermedad(L,[A,B]).
diccionario([_,tengo, A,B,y,C|_], ['Tenemos un caso',de,':',L]):-buscaEnfermedad(L,[A,B,C]).
diccionario([_,_,tengo, A|_], ['Dime tres sintomas para poder diagnosticarte']).
diccionario([_,_,tengo, A,y,B|_], ['En este caso',tienes,':',L]):-buscaEnfermedad(L,[A,B]).
diccionario([_,_,tengo, A,B,y,C|_], ['En este caso',tienes,':',L]):-buscaEnfermedad(L,[A,B,C]).
diccionario([cual, es, el, tratamiento, del, A|_], ['Para tratar el',A, se, debe,':'|T]):-tratar(A,T).
diccionario([cual, es, el, tratamiento, de, la,A|_], ['Para tratar la',A, se, debe,':'|T]):-tratar(A,T).
diccionario([como, se, trata, el, A|_], ['Para tratar el',A, se, debe,':'|T]):-tratar(A,T).
diccionario([como, se, trata, la, A|_], ['Para tratar la',A, se, debe,':'|T]):-tratar(A,T).
diccionario([como, se, previene, el, A|_], ['Se puede prevenir el',A,':'|T]):-prevencion(A,T).
diccionario([como, se, previene, la, A|_], ['Se puede prevenir la',A,':'|T]):-prevencion(A,T).
diccionario([como, prevenimos, el, A|_], ['Buena pregunta, para prevenir el',A,':'|T]):-prevencion(A,T).
diccionario([como, prevenimos, la, A|_], ['Es importante para prevenir la',A,':'|T]):-prevencion(A,T).
diccionario([_,cual, es, el, tratamiento, del, A|_], ['Para tratar el',A, se, debe,':'|T]):-tratar(A,T).
diccionario([_,cual, es, el, tratamiento, de, la,A|_], ['Para tratar la',A, se, debe,':'|T]):-tratar(A,T).
diccionario([_,como, se, trata, el, A|_], ['Se puede tratar el',A, con,':'|T]):-tratar(A,T).
diccionario([_,como, se, trata, la, A|_], ['Se puede tratar la',':'|T]):-tratar(A,T).
diccionario([_,como, se, previene, el, A|_], ['Podemos prevenir el',A,':'|T]):-prevencion(A,T).
diccionario([_,como, se, previene, la, A|_], ['Se puede prevenir la',A, ':'|T]):-prevencion(A,T).
diccionario([_,como, prevenimos, el, A|_], ['Para prevenir el',A,se,recomienda,':'|T]):-prevencion(A,T).
diccionario([_,como, prevenimos, la, A|_], ['Para prevenir la',A,se, debe,':'|T]):-prevencion(A,T).
diccionario([_,_,cual, es, el, tratamiento, del, A|_], ['Para tratar el',A, se, debe,':'|T]):-tratar(A,T).
diccionario([_,_,cual, es, el, tratamiento, de, la,A|_], ['Para tratar la',A, se, debe,':'|T]):-tratar(A,T).
diccionario([_,_,como, se, trata, el, A|_], ['Para el',A, se, debe,':'|T]):-tratar(A,T).
diccionario([_,_,como, se, trata, la, A|_], ['Para tratar la',A, se, debe,':'|T]):-tratar(A,T).
diccionario([_,_,como, se, previene, el, A|_], ['Se puede prevenir el',A,'de la siguiente manera',':'|T]):-prevencion(A,T).
diccionario([_,_,como, se, previene, la, A|_], ['Se puede prevenir la',A, 'de la siguiente manera',':'|T]):-prevencion(A,T).
diccionario([_,_,como, prevenimos, el, A|_], ['Se puede prevenir',A,con,':'|T]):-prevencion(A,T).
diccionario([_,_,como, prevenimos, la, A|_], ['Se puede prevenir la',A,con,':'|T]):-prevencion(A,T).
diccionario([cual, es, la, causa, del, A|_], ['Algunas causas que provocaron',A, son,':'|T]):-causas(A,T).
diccionario([cual, es, la, causa, de, la, A|_], ['Algunas causas que provocaron',A, son, ':'|T]):-causas(A,T).
diccionario([cuales, son, las, causas, del, A|_], ['Algunas causas que provocaron el',A, son,':'|T]):-causas(A,T).
diccionario([cuales, son, las, causas, de, la, A|_], ['Algunas causas que provocaron la',A, son,':'|T]):-causas(A,T).
diccionario([cual, son, las, causas, de, la, A|_], ['Algunas causas que provocaron',A, son, ':'|T]):-causas(A,T).
diccionario([_,cual, es, la, causa, de, la, A|_], ['Algunas causas que provocaron',A, son, ':'|T]):-causas(A,T).
diccionario([_,cual, es, la, causa, del, A|_], ['Algunas causas que provocaron',A, son,':'|T]):-causas(A,T).
diccionario([_,_,cual, es, la, causa, de, la, A|_], ['Algunas causas que provocaron',A, son, ':'|T]):-causas(A,T).
diccionario([_,_,cual, es, la, causa, del, A|_], ['Algunas causas que provocaron',A, son,':'|T]):-causas(A,T).
diccionario([_,cuales, son, las, causas, de, la, A|_], ['Algunas causas que provocaron',A, son, ':'|T]):-causas(A,T).
diccionario([_,cuales, son, las, causas, del, A|_], ['Algunas causas que provocaron',A, son,':'|T]):-causas(A,T).
diccionario([_,_,cuales, son, las, causas, de, la, A|_], ['Algunas causas que provocaron',A, son, ':'|T]):-causas(A,T).
diccionario([_,_,cuales, son, las, causas, del, A|_], ['Algunas causas que provocaron',A, son,':'|T]):-causas(A,T).
diccionario([que, causa, la, A|_], ['Algunas causas que provocaron la',A, son,':'|T]):-causas(A,T).
diccionario([que, causa, el, A|_], ['Algunas causas que provocaron el',A, son,':'|T]):-causas(A,T).
diccionario([_,que, causa, la, A|_], ['Algunas causas que provocaron la',A, son,':'|T]):-causas(A,T).
diccionario([_,que, causa, el, A|_], ['Algunas causas que provocaron el',A, son,':'|T]):-causas(A,T).
diccionario([_,_,que, causa, la, A|_], ['Algunas causas que provocaron la',A, son,':'|T]):-causas(A,T).
diccionario([_,_,que, causa, el, A|_], ['Algunas causas que provocaron el',A, son,':'|T]):-causas(A,T).
diccionario([que, causaron, la, A|_], ['Algunas causas que provocaron la',A, son,':'|T]):-causas(A,T).
diccionario([que, causaron, el, A|_], ['Algunas causas que provocaron el',A, son,':'|T]):-causas(A,T).
diccionario([_,que, causaron, la, A|_], ['Algunas causas que provocaron la',A, son,':'|T]):-causas(A,T).
diccionario([_,que, causaron, el, A|_], ['Algunas causas que provocaron el',A, son,':'|T]):-causas(A,T).
diccionario([_,_,que, causaron, la, A|_], ['Algunas causas que provocaron la',A, son,':'|T]):-causas(A,T).
diccionario([_,_,que, causaron, el, A|_], ['Algunas causas que provocaron el',A, son,':'|T]):-causas(A,T).

% Cuando el usuario escribe algo no esta como instruccion y ocupa una
% que funcione
diccionario([1], ['No entiendo lo que me estas diciendo, podrias repetirlo por favor']).

% Para hacer que se escriba la respuesta de DrLog en cada uno de los
% hechos dependiendo de lo que escriba el paciente, va recorriendo la
% lista y escribiendo cada una de las palabras de la respuesta.
respuesta([Head|Tail]) :- write(Head), write(' '), respuesta(Tail).
respuesta([]) :- nl.

:-consulta.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

