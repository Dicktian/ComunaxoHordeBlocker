COMUNAXO HORDE BLOCKER

Versión: 1.1

Compatibilidad: World of Warcraft 3.3.5a (Wrath of the Lich King)

Autor: Comunaxo ([https://github.com/Dicktian](https://github.com/Dicktian))



============================================================

1\. ¿QUÉ ES COMUNAXO HORDE BLOCKER?

============================================================

Comunaxo Horde Blocker es un addon ligero que intenta ocultar automáticamente los mensajes de la Horda escritos en los canales locales /say (decir) y /yell (gritar) cuando juegas con un personaje de la Alianza.



Su objetivo es reducir los mensajes de la facción contraria que aparecen en las ventanas de chat, sin tener que bloquear jugadores manualmente.



No incorpora ventanas, botones, comandos ni opciones de configuración: funciona automáticamente al cargar el personaje.



============================================================

2\. ¿QUÉ MENSAJES OCULTA?

============================================================

\- Mensajes de /say que el cliente o servidor identifica como escritos en idioma orco.

\- Mensajes de /yell que el cliente o servidor identifica como escritos en idioma orco.

\- Como método adicional, líneas de chat ya formateadas que contienen la etiqueta \[Orco] y expresiones como «dice:», «grita:», «says:» o «yells:».



El filtro se activa únicamente si tu personaje pertenece a la Alianza.



IMPORTANTE: el addon identifica el idioma o la etiqueta visible del mensaje, no comprueba directamente la facción del personaje que lo envía. Por ello, no puede garantizar el bloqueo de todos los mensajes procedentes de personajes de la Horda, especialmente si aparecen en otros idiomas o formatos.



============================================================

3\. ¿QUÉ NO BLOQUEA?

============================================================

El código actual no añade filtros para:

\- Susurros (/whisper).

\- Chat de grupo o banda.

\- Chat de hermandad.

\- Canales generales, comercio u otros canales personalizados.

\- Mensajes de /say o /yell que no sean reconocidos como orco por los filtros.



Tampoco silencia al jugador en el servidor, lo añade a ignorados ni impide que otras personas lean sus mensajes. Solo intenta ocultar las líneas correspondientes en tu cliente.



============================================================

4\. INSTALACIÓN

============================================================

1\. Cierra World of Warcraft.

2\. Extrae el archivo .rar del addon.

3\. Copia la carpeta «ComunaxoHordeBlocker» dentro de:

&#x20;  World of Warcraft/Interface/AddOns/

4\. Comprueba que los archivos estén en esta ubicación:

&#x20;  Interface/AddOns/ComunaxoHordeBlocker/ComunaxoHordeBlocker.toc

&#x20;  Interface/AddOns/ComunaxoHordeBlocker/ComunaxoHordeBlocker.lua

5\. Abre el juego y entra con un personaje de la Alianza.

6\. El addon comenzará a funcionar automáticamente.



Si no aparece en la lista de addons de la pantalla de selección de personajes, comprueba que no haya una carpeta duplicada dentro de otra carpeta del mismo nombre.



============================================================

5\. FUNCIONAMIENTO TÉCNICO

============================================================

El addon utiliza ChatFrame\_AddMessageEventFilter para revisar los eventos CHAT\_MSG\_SAY y CHAT\_MSG\_YELL. Busca indicadores del idioma orco en los argumentos del evento y, cuando los encuentra, evita que el mensaje se muestre.



También incorpora un filtro complementario sobre AddMessage de las ventanas de chat existentes al cargar el addon. Este método intenta detectar mensajes ya formateados que incluyan \[Orco] junto con verbos de habla.



Ambos métodos comprueban que el personaje actual pertenezca a la Alianza. El addon no guarda listas de jugadores ni necesita variables persistentes.



============================================================

6\. LIMITACIONES Y COMPATIBILIDAD

============================================================

\- Diseñado para la interfaz 30300 de WoW 3.3.5a.

\- El resultado puede variar según el servidor privado, sus modificaciones y el formato de los mensajes.

\- La detección de idioma revisa determinados argumentos y variantes de texto; no cubre todos los formatos posibles.

\- El método complementario se aplica a las ventanas de chat presentes cuando se carga el addon; algunas ventanas creadas posteriormente podrían no recibir ese filtro adicional.

\- No se ha verificado aquí su comportamiento real dentro del juego ni en Warmane.

\- Si juegas con un personaje de la Horda, los filtros no ocultan mensajes.



============================================================

7\. PREGUNTAS FRECUENTES

============================================================

¿Tengo que escribir algún comando?

No. No dispone de comandos ni requiere activación manual.



¿Aparece un icono en el minimapa?

No. El addon no tiene interfaz gráfica.



¿Bloquea a todos los jugadores de la Horda?

No necesariamente. Filtra los mensajes que reconoce como orco en /say y /yell; no identifica directamente a cada jugador por facción.



¿Funciona con todos los personajes de mi cuenta?

Se carga con los personajes que tengan el addon habilitado. El filtrado solo se aplica mientras juegas con un personaje de la Alianza.



¿Cómo lo desactivo?

Desmarca el addon en la lista de complementos de la pantalla de selección de personajes, o retira su carpeta de AddOns con el juego cerrado.



============================================================

8\. INFORMACIÓN DEL PROYECTO

============================================================

Nombre: Comunaxo Horde Blocker

Versión: 1.1

Autor: Comunaxo ([https://github.com/Dicktian](https://github.com/Dicktian))

Juego: World of Warcraft: Wrath of the Lich King

Interfaz: 30300

Archivos principales: ComunaxoHordeBlocker.toc y ComunaxoHordeBlocker.lua

