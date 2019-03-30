%Tarea Corta 2
% Mariano Muñoz Masis
% Karla Rivera Sanchez
% Luis Daniel Prieto Sibaja

%Base de Datos de Enfermedades
%
%Registro de las Enfermedades junto con los sintomas (al menos 3) de cada una
enfermedad(hipertension, Sintomas):-member(Sintomas, ['dolor', 'ahogamiento', 'sangrado']).
enfermedad(asma, Sintomas):-member(Sintomas, ['tos', 'tiraje', 'ahogamiento', 'sibilancias']).
enfermedad(migrana, Sintomas):-member(Sintomas, ['nauseas', 'vomitos', 'dolor', 'adormecimiento']).
enfermedad(lupus, Sintomas):-member(Sintomas, ['dolor', 'fiebre', 'sensibilidad', 'sarpullido']).
enfermedad(gripe,Sintomas):-member(Sintomas,['tos', 'fiebre', 'estornudos', 'dolor', 'cansancio']).

%Registro de las causas, se busca por el nombre de su enfermedad
causas(hipertension, ['Antecedentes familiares, altos niveles de estres y mala alimentacion']).
causas(asma, ['Quimicos en el aire, infecciones respiratorias y cambios en el clima']).
causas(migrana, ['Anormalidad en serotonina, alimentos como queso añejo, vino tinto y chocolate y los cambios hormonales en las mujeres']).
causas(lupus, ['Alteracion en el sistema inmunologico, genetica y exposicion a la luz']).
causas(gripe, ['Viruz de la influenza']).

%Registro de las prevenciones, se busca por el nombre de su enfermedad
prevenciones(hipertension, ['Disminuir el consumo de sal, realizar ejercicio físico adecuado, controlar el peso y no beber mucho alcohol']).
prevenciones(asma, ['Conocer sus síntomas, aprender a tomar lecturas, conocer los desencadenantes y realizar ejercicio físico adecuado']).
prevenciones(migrana, ['No fumar, no beber mucho alcohol, hacer ejercicio y manejar el estres']).
prevenciones(lupus, ['No exponerse al sol, usar protector solar, hidratarse y lavarse las manos']).
prevenciones(gripe, ['Lavarse las manos antes de comer y después de ir al baño, alimentarse balanceadamente y vacunarse']).

%Registro de los Tratamientos, se busca por el nombre de su enfermedad
tratamientos(hipertension, ['Diureticos de tiazida, inhibidores de la enzima convertidora de angiotensina y bloqueadores de los canales de calcio']).
tratamientos(asma, ['Salbutamol, Ambuterol, Salmeterol, Bromuro de tiotropio']).
tratamientos(migrana, ['Analgesicos, antiinflamatorios, acupuntura y masajes']).
tratamientos(lupus, ['Antiinflamatorios, corticoesteroides e inmunodepresores']).
tratamientos(gripe, ['Tomar antigripales por 3 dias, para el dolor tomar acetaminofen y descansar']).

% Definicion de sintomas que se encuentran por medio de la enfermedad
% usando reglas
buscaEnfermedad(_,[]):-!.
buscaEnfermedad(Padecimiento,[X|T]):-
	enfermedad(Padecimiento,X), buscaEnfermedad(Padecimiento,T).

%Cambiar esta descripcion ojo
% Lee la entrada, asume las mayusculas y minusculas y convierte la oracion en una lista de terminos
% atomicos donde cada palabra se separa por coma
:-[readline].

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
comparar([N|Diccionario], Dicc, SalidaObjetivo) :-
	integer(N), buscarDiccionario(N,Dicc,Lt),
	append(Lt,Rt, SalidaObjetivo),
	comparar(Diccionario, Dicc, Rt).

comparar([Entrada|Diccionario], Diccionario1, [Entrada|SalidaObjetivo]) :-atom(Entrada), comparar(Diccionario, Diccionario1, SalidaObjetivo).

comparar([], _ ,[]).

%Buscar en el diccionario
buscarDiccionario(Key, [(Key, Value)|_], Value).
buscarDiccionario(Key, [(Key1, _)|Diccionario], Value) :- not(Key = Key1), buscarDiccionario(Key, Diccionario, Value).



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
diccionario([tengo, A|_], ['Podria indicarme tres sintomas para poder diagnosticarte']).
diccionario([tengo, A,y,B|_], ['Parece que tienes',':',L]):-buscaEnfermedad(L,[A,B]).
diccionario([_,tengo, A|_], ['Dime tres sintomas para poder darte un diagnostico']).
diccionario([_,tengo, A,y,B|_], ['Se ha presentado un caso',de,':',L]):-buscaEnfermedad(L,[A,B]).
diccionario([_,tengo, A,B,y,C|_], ['Se ha presentado un caso',de,':',L]):-buscaEnfermedad(L,[A,B,C]).
diccionario([_,_,tengo, A|_], ['Dime tres sintomas para poder diagnosticarte']).
diccionario([_,_,tengo, A,y,B|_], ['En este caso',tienes,':',L]):-buscaEnfermedad(L,[A,B]).
diccionario([_,_,tengo, A,B,y,C|_], ['En este caso',tienes,':',L]):-buscaEnfermedad(L,[A,B,C]).
diccionario([cual, es, el, tratamiento, del, A|_], ['Para tratar el',A, se, recomienda,':'|T]):-tratamientos(A,T).
diccionario([cual, es, el, tratamiento, de, la,A|_], ['Para tratar la',A, se, recomienda,':'|T]):-tratamientos(A,T).
diccionario([como, se, trata, el, A|_], ['Para tratar el',A, se, recomienda,':'|T]):-tratamientos(A,T).
diccionario([como, se, trata, la, A|_], ['Para tratar la',A, se, recomienda,':'|T]):-tratamientos(A,T).
diccionario([como, se, previene, el, A|_], ['Se puede prevenir el',A,'de esta manera',':'|T]):-prevenciones(A,T).
diccionario([como, se, previene, la, A|_], ['Se puede prevenir la',A,'de esta manera',':'|T]):-prevenciones(A,T).
diccionario([como,puedo,prevenir, el, A|_], ['Para prevenir el',A, se, recomienda,':'|T]):-prevenciones(A,T).
diccionario([como, puedo, prevenir, la, A|_], ['Para prevenir la',A, se, recomienda, ':'|T]):-prevenciones(A,T).
diccionario([_,cual, es, el, tratamiento, del, A|_], ['Para tratar el',A, se, debe,':'|T]):-tratamientos(A,T).
diccionario([_,cual, es, el, tratamiento, de, la,A|_], ['Para tratar la',A, se, debe,':'|T]):-tratamientos(A,T).
diccionario([_,como, se, trata, el, A|_], ['Se puede tratar el',A, con,':'|T]):-tratamientos(A,T).
diccionario([_,como, se, trata, la, A|_], ['Se puede tratar la',':'|T]):-tratamientos(A,T).
diccionario([_,como, se, previene, el, A|_], ['Se puede prevenir el',A,':'|T]):-prevenciones(A,T).
diccionario([_,como, se, previene, la, A|_], ['Se puede prevenir la',A, ':'|T]):-prevenciones(A,T).
diccionario([_,como, puedo, prevenir, el, A|_], ['Para prevenir el',A,se,recomienda,':'|T]):-prevenciones(A,T).
diccionario([_,como, puedo, prevenir, la, A|_], ['Para prevenir la',A,se, debe,':'|T]):-prevenciones(A,T).
diccionario([_,_,cual, es, el, tratamiento, del, A|_], ['Para tratar el',A, se, debe,':'|T]):-tratamientos(A,T).
diccionario([_,_,cual, es, el, tratamiento, de, la,A|_], ['Para tratar la',A, se, debe,':'|T]):-tratamientos(A,T).
diccionario([_,_,como, se, trata, el, A|_], ['Para el',A, se, debe,':'|T]):-tratamientos(A,T).
diccionario([_,_,como, se, trata, la, A|_], ['Para tratar la',A, se, debe,':'|T]):-tratamientos(A,T).
diccionario([_,_,como, se, previene, el, A|_], ['Se puede prevenir el',A,'de la siguiente manera',':'|T]):-prevenciones(A,T).
diccionario([_,_,como, se, previene, la, A|_], ['Se puede prevenir la',A, 'de la siguiente manera',':'|T]):-prevenciones(A,T).
diccionario([_,_,como, puedo, prevenir, el, A|_], ['Se puede prevenir',A,con,':'|T]):-prevenciones(A,T).
diccionario([_,_,como, puedo, prevenir, la, A|_], ['Se puede prevenir la',A,con,':'|T]):-prevenciones(A,T).
diccionario([cual, es, la, causa, del, A|_], ['Algunas causas que provocaron el',A, son,':'|T]):-causas(A,T).
diccionario([cual, es, la, causa, de, la, A|_], ['Algunas causas que provocaron la',A, son, ':'|T]):-causas(A,T).
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
