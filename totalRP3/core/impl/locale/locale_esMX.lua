----------------------------------------------------------------------------------
-- Total RP 3
-- Spanish locale
-- ---------------------------------------------------------------------------
-- Copyright 2014 Sylvain Cossement (telkostrasz@telkostrasz.be)
-- Translation by Alnih from WikiErrantes, many thanks to him.
--
-- Licensed under the Apache License, Version 2.0 (the "License");
-- you may not use this file except in compliance with the License.
-- You may obtain a copy of the License at
--
-- http://www.apache.org/licenses/LICENSE-2.0
--
-- Unless required by applicable law or agreed to in writing, software
-- distributed under the License is distributed on an "AS IS" BASIS,
-- WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
-- See the License for the specific language governing permissions and
-- limitations under the License.
----------------------------------------------------------------------------------

local LOCALE = {
	locale = "esMX",
	localeText = "Español (Latin American)",
    localeContent =
{
	["ABOUT_TITLE"] = "Acerca de",
	["BINDING_NAME_TRP3_TOGGLE"] = "Mostrar/ocultar la ventana principal",
	["BINDING_NAME_TRP3_TOOLBAR_TOGGLE"] = "Mostrar/ocultar barra de herramientas",
	["BW_COLOR_CODE"] = "Código de color",
	["BW_COLOR_CODE_ALERT"] = "¡Código hexadecimal erróneo!",
	["BW_COLOR_CODE_TT"] = "Pega un código hexadecimal de 6 cifras aquí y presiona Enter.",
	["CM_ACTIONS"] = "Acciones",
	["CM_APPLY"] = "Aplicar",
	["CM_CANCEL"] = "Cancelar",
	["CM_CENTER"] = "Centro",
	["CM_CLASS_DEATHKNIGHT"] = "Caballero de la muerte",
	["CM_CLASS_DRUID"] = "Druida",
	["CM_CLASS_HUNTER"] = "Cazador",
	["CM_CLASS_MAGE"] = "Mago",
	["CM_CLASS_MONK"] = "Monje",
	["CM_CLASS_PALADIN"] = "Paladín",
	["CM_CLASS_PRIEST"] = "Sacerdote",
	["CM_CLASS_ROGUE"] = "Pícaro",
	["CM_CLASS_SHAMAN"] = "Chamán",
	["CM_CLASS_UNKNOWN"] = "Desconocido",
	["CM_CLASS_WARLOCK"] = "Brujo",
	["CM_CLASS_WARRIOR"] = "Guerrero",
	["CM_COLOR"] = "Color",
	["CM_DOUBLECLICK"] = "Doble click",
	["CM_EDIT"] = "Editar",
	["CM_ICON"] = "Icono",
	["CM_IMAGE"] = "Imagen",
	["CM_LEFT"] = "Izquierda",
	["CM_LINK"] = "Enlace",
	["CM_LOAD"] = "Cargar",
	["CM_MOVE_DOWN"] = "Mover hacia abajo",
	["CM_MOVE_UP"] = "Mover hacia arriba",
	["CM_NAME"] = "Nombre",
	["CM_OPEN"] = "Abrir",
	["CM_PLAY"] = "Reproducir",
	["CM_REMOVE"] = "Suprimir",
	["CM_RESIZE"] = "Redimensionar",
	["CM_RESIZE_TT"] = "Arrastra para redimensionar la ventana.",
	["CM_RIGHT"] = "Derecha",
	["CM_SAVE"] = "Guardar",
	["CM_SELECT"] = "Seleccionar",
	["CM_SHOW"] = "Mostrar",
	["CM_STOP"] = "Parar",
	["CM_TWEET"] = "Enviar un tweet",
	["CM_TWEET_PROFILE"] = "Mostrar url del perfil",
	["CM_UNKNOWN"] = "Desconocido",
	["CM_VALUE"] = "Valor",
	["CO_CHAT"] = "Ajustes del chat",
	["CO_CHAT_INSERT_FULL_RP_NAME"] = "Insertar nombres de rol con shift+clic",
	["CO_CHAT_MAIN"] = "Ajustes de chat principal",
	["CO_CHAT_MAIN_COLOR"] = "Usar colores personalizados para los nombres",
	["CO_CHAT_MAIN_EMOTE"] = "Detección de emociones",
	["CO_CHAT_MAIN_EMOTE_PATTERN"] = "Patrón de detección de emociones",
	["CO_CHAT_MAIN_EMOTE_USE"] = "Usar detección de emociones",
	["CO_CHAT_MAIN_EMOTE_YELL"] = "Emoción sin gritos",
	["CO_CHAT_MAIN_EMOTE_YELL_TT"] = "No mostrar *emote* o <emote> en los gitos",
	["CO_CHAT_MAIN_NAMING"] = "Método de nomenclatura",
	["CO_CHAT_MAIN_NAMING_1"] = "Mantener nombres originales",
	["CO_CHAT_MAIN_NAMING_2"] = "Usar nombres originales",
	["CO_CHAT_MAIN_NAMING_3"] = "Nombre + apellido",
	["CO_CHAT_MAIN_NAMING_4"] = "Título corto + nombre + apellido",
	["CO_CHAT_MAIN_NPC"] = "Detección de diálogo de NPC",
	["CO_CHAT_MAIN_NPC_PREFIX"] = "Patrón de detección de diálogo de NPC",
	["CO_CHAT_MAIN_NPC_USE"] = "Usar detección de diálogo de NPC",
	["CO_CHAT_MAIN_OOC"] = "Detección OOC",
	["CO_CHAT_MAIN_OOC_COLOR"] = "Color OOC",
	["CO_CHAT_MAIN_OOC_PATTERN"] = "Patrón de detección OOC",
	["CO_CHAT_MAIN_OOC_USE"] = "Usar detección OOC",
	["CO_CHAT_USE"] = "Canales de chat usados",
	["CO_CHAT_USE_SAY"] = "Canal /decir",
	["CO_CONFIGURATION"] = "Ajustes",
	["CO_GENERAL"] = "Ajustes generales",
	["CO_GENERAL_BROADCAST"] = "Usar canal de emisión",
	["CO_GENERAL_BROADCAST_C"] = "Nombre del canal de emisión",
	["CO_GENERAL_COM"] = "Comunicación",
	["CO_GENERAL_HEAVY"] = "Alerta de perfil sobrecargado",
	["CO_GENERAL_HEAVY_TT"] = "Ser avisado cuando el tamaño del perfil exceda un valor razonable.",
	["CO_GENERAL_LOCALE"] = "Idioma",
	["CO_GENERAL_MISC"] = "Miscelánea",
	["CO_GENERAL_NEW_VERSION"] = "Alerta de actualización",
	["CO_GENERAL_NEW_VERSION_TT"] = "Ser avisado cuando haya una nueva versión disponible.",
	["CO_GENERAL_TT_SIZE"] = "Información sobre herramientas del tamaño del texto",
	["CO_GENERAL_UI_ANIMATIONS"] = "Animaciones de la IU",
	["CO_GENERAL_UI_ANIMATIONS_TT"] = "Activar las animaciones de la IU.",
	["CO_GENERAL_UI_SOUNDS"] = "Sonidos de la IU.",
	["CO_GENERAL_UI_SOUNDS_TT"] = "Activar sonidos de la IU (al abrir ventanas, cambiar de pestañas, pulsar botones).",
	["CO_GLANCE_MAIN"] = "Barra \"a primera vista\"",
	["CO_LOCATION"] = "Ajustes de rastreo",
	["CO_LOCATION_ACTIVATE"] = "Habilitar la localización de personaje",
	["CO_LOCATION_DISABLE_OOC"] = "Desactivar rastreo en modo FdR",
	["CO_LOCATION_DISABLE_PVP"] = "Desactivar rastreo en modo JcJ",
	["CO_MINIMAP_BUTTON"] = "Botón del minimapa",
	["CO_MINIMAP_BUTTON_SHOW_TITLE"] = "Mostrar botón en el minimapa",
	["CO_MODULES"] = "Estado de los módulos",
	["CO_MODULES_DISABLE"] = "Deshabilitar módulos",
	["CO_MODULES_ENABLE"] = "Habilitar módulo",
	["CO_MODULES_ID"] = "ID del módulo: %s",
	["CO_MODULES_SHOWERROR"] = "Mostrar error",
	["CO_MODULES_STATUS"] = "Estado: %s",
	["CO_MODULES_STATUS_0"] = "Dependencias faltantes",
	["CO_MODULES_STATUS_1"] = "Cargado",
	["CO_MODULES_STATUS_2"] = "Deshabilitado",
	["CO_MODULES_STATUS_4"] = "Error en la inicialización",
	["CO_MODULES_STATUS_5"] = "Error en el inicio%sPara Total RP 3 build %s mínima.|r",
	["CO_MODULES_VERSION"] = "Version: %s",
	["CO_MSP"] = "Protocolo Mary Sue",
	["CO_MSP_T3"] = "Usar sólo la plantilla 3",
	["CO_REGISTER"] = "Configuración de registro",
	["CO_REGISTER_ABOUT_VOTE"] = "Usar sistema de votos",
	["CO_REGISTER_AUTO_ADD"] = "Añadir nuevos jugadores automáticamente",
	["CO_REGISTER_AUTO_PURGE"] = "Purgar directorio automáticamente",
	["CO_REGISTER_AUTO_PURGE_1"] = "Después de %s día(s)",
	["CO_TARGETFRAME_ICON_SIZE"] = "Tamaño de iconos",
	["CO_TARGETFRAME_USE"] = "Mostrar condiciones",
	["CO_TARGETFRAME_USE_1"] = "Siempre",
	["CO_TARGETFRAME_USE_2"] = "Sólo Dentro del Personaje",
	["CO_TARGETFRAME_USE_3"] = "Nunca (deshabilitado)",
	["CO_TOOLBAR"] = "Ajustes del marco",
	["CO_TOOLBAR_CONTENT"] = "Ajustes de la barra de herramientas",
	["CO_TOOLBAR_CONTENT_RPSTATUS"] = "Estado del personaje (ER/FdR)",
	["CO_TOOLBAR_CONTENT_STATUS"] = "Estado del jugador (AUS/NM)",
	["CO_TOOLBAR_ICON_SIZE"] = "Tamaño de iconos",
	["CO_TOOLBAR_MAX"] = "Iconos máximos por línea",
	["CO_TOOLBAR_SHOW_ON_LOGIN"] = "Mostrar barra de herramientas al iniciar sesión",
	["CO_TOOLTIP"] = "Herramientas",
	["CO_TOOLTIP_COLOR"] = "Mostrar colores personalizados",
	["CO_TOOLTIP_COMBAT"] = "Ocultar durante el combate",
	["CO_TOOLTIP_CONTRAST"] = "Aumentar el contraste de color",
	["CO_TOOLTIP_USE"] = "Usar herramientas de personajes/compañeros",
	["COM_STASH_DATA"] = [=[|cffff0000¿Estás seguro de que quieres ir acumulando tu información del Total RP 3?|r

Tus perfiles, los de tus compañeros y configuración se acumulará temporalmente y tu interfaz se cargará sin información, como si hubieras instalado Total RP 3 de nuevo.
|cff00ff00Utiliza el mismo comando de nuevo (|cff999999/trp3 stash|cff00ff00) para restaurar la información.|r]=],
	["DB_ABOUT"] = "Acerca de Total RP 3",
	["DB_HTML_GOTO"] = "Click para abrir",
	["DB_MORE"] = "Más módulos",
	["DB_NEW"] = "¿Qué hay nuevo?",
	["DB_STATUS"] = "Estado",
	["DB_STATUS_CURRENTLY"] = "Actualmente (EP)",
	["DB_STATUS_CURRENTLY_OOC"] = "Otra información (FdP)",
	["DB_STATUS_RP"] = "Estado de personaje",
	["DB_STATUS_RP_EXP"] = "Rolero experimentado",
	["DB_STATUS_RP_IC"] = "En personaje",
	["DB_STATUS_RP_OOC"] = "Fuera de personaje.",
	["DB_STATUS_RP_VOLUNTEER"] = "Rolero voluntario",
	["DB_STATUS_XP"] = "Estado de rol",
	["DB_STATUS_XP_BEGINNER"] = "Rolero novato",
	["DTBK_AFK"] = "Total RP 3 - AUS/NM",
	["DTBK_CLOAK"] = "Total RP 3 - Capa",
	["DTBK_HELMET"] = "Total RP 3 - Yelmo",
	["DTBK_LANGUAGES"] = "Total RP 3 - Idiomas",
	["DTBK_RP"] = "Total RP 3 - ER/FdR",
	["GEN_VERSION"] = "Versión: %s (Build %s)",
	["GEN_WELCOME_MESSAGE"] = "¡Gracias por usar Total RP 3 (v %s)! ¡Diviértase!",
	["MAP_BUTTON_NO_SCAN"] = "Búsqueda no disponible",
	["MAP_BUTTON_SCANNING"] = "Buscando",
	["MAP_BUTTON_SUBTITLE"] = "Haz clic para mostrar los rastreos disponibles",
	["MAP_SCAN_CHAR"] = "Buscar personajes",
	["MAP_SCAN_CHAR_TITLE"] = "Personajes",
	["MATURE_FILTER_EDIT_DICTIONARY"] = "Editar diccionario personalizado",
	["MATURE_FILTER_EDIT_DICTIONARY_BUTTON"] = "Editar",
	["MATURE_FILTER_EDIT_DICTIONARY_TITLE"] = "Editor del diccionario personalizado",
	["MATURE_FILTER_OPTION"] = "Filtrar perfiles adultos",
	["MATURE_FILTER_TITLE"] = "Filtro de perfiles adultos",
	["MATURE_FILTER_WARNING_CONTINUE"] = "Continuar",
	["MATURE_FILTER_WARNING_GO_BACK"] = "Atrás",
	["MM_SHOW_HIDE_MAIN"] = "Mostrar/ocultar marco principal",
	["MM_SHOW_HIDE_MOVE"] = "Mover botón",
	["MM_SHOW_HIDE_SHORTCUT"] = "Mostrar/ocultar barra de herramientas",
	["NPC_TALK_SAY_PATTERN"] = "dice:",
	["NPC_TALK_WHISPER_PATTERN"] = "susurra:",
	["NPC_TALK_YELL_PATTERN"] = "grita:",
	["PR_CO_BATTLE"] = "Compañero",
	["PR_CO_MOUNT"] = "Montura",
	["PR_CO_PET"] = "Mascota",
	["PR_CO_PROFILEMANAGER_TITLE"] = "Perfiles de compañeros",
	["PR_CREATE_PROFILE"] = "Crear perfil",
	["PR_PROFILE"] = "Perfil",
	["PR_PROFILE_CREATED"] = "Perfil %s creado.",
	["PR_PROFILE_DELETED"] = "Perfil %s eliminado.",
	["PR_PROFILEMANAGER_TITLE"] = "Perfiles de personaje",
	["PR_PROFILES"] = "Perfiles",
	["REG_COMPANION"] = "Compañero",
	["REG_COMPANION_BOUND_TO"] = "Vinculado a ...",
	["REG_COMPANION_BOUND_TO_TARGET"] = "Objetivo",
	["REG_COMPANION_BOUNDS"] = "Vínculos",
	["REG_COMPANION_BROWSER_BATTLE"] = "Buscador de compañeros",
	["REG_COMPANION_BROWSER_MOUNT"] = "Buscador de monturas",
	["REG_COMPANION_INFO"] = "Información",
	["REG_COMPANION_NAME"] = "Nombre",
	["REG_COMPANION_NAME_COLOR"] = "Color del nombre",
	["REG_COMPANION_PROFILES"] = "Perfiles de compañeros",
	["REG_COMPANION_TARGET_NO"] = "To objetivo no es una mascota, necrófago, elemental de mago o compañero renombrado válido.",
	["REG_COMPANION_TF_BOUND_TO"] = "Seleccionar perfil",
	["REG_COMPANION_TF_CREATE"] = "Crear nuevo perfil",
	["REG_COMPANION_TF_NO"] = "No hay perfil",
	["REG_COMPANION_TF_OPEN"] = "Abrir página",
	["REG_COMPANION_TF_OWNER"] = "Dueño: %s",
	["REG_COMPANION_TF_PROFILE"] = "Perfil de compañero",
	["REG_COMPANION_TF_PROFILE_MOUNT"] = "Perfil de montura",
	["REG_COMPANION_TF_UNBOUND"] = "Desvincular del perfil",
	["REG_COMPANION_TITLE"] = "Título",
	["REG_COMPANIONS"] = "Compañeros",
	["REG_DELETE_WARNING"] = "¿Seguro que quieres eliminar el perfil %s?",
	["REG_IGNORE_TOAST"] = "Personaje ignorado",
	["REG_LIST_ACTIONS_MASS_REMOVE"] = "Eliminar perfiles",
	["REG_LIST_ACTIONS_PURGE"] = "Purgar registro",
	["REG_LIST_ACTIONS_PURGE_ALL"] = "Eliminar todos los perfiles",
	["REG_LIST_ACTIONS_PURGE_ALL_C"] = [=[Esta purga eliminará todos los perfiles vinculados desde el directorio.

|cff00ff00%s personajes.]=],
	["REG_LIST_ACTIONS_PURGE_ALL_COMP_C"] = [=[Esta purga eliminará todos los compañeros del directorio.

|cff00ff00%s compañeros.]=],
	["REG_LIST_ACTIONS_PURGE_COUNT"] = "%s perfiles serán eliminados.",
	["REG_LIST_ACTIONS_PURGE_EMPTY"] = "No hay perfiles que purgar.",
	["REG_LIST_ACTIONS_PURGE_IGNORE"] = "Perfiles de personajes ignorados.",
	["REG_LIST_ACTIONS_PURGE_IGNORE_C"] = [=[Esta purga eliminará a todos los perfiles vinculados a un personaje de WoW ignorado.

|cff00ff00%s]=],
	["REG_LIST_ACTIONS_PURGE_TIME"] = "Perfiles no vistos desde hace 1 mes",
	["REG_LIST_ACTIONS_PURGE_TIME_C"] = [=[Esta purga eliminará a todos los personajes no vistos desde hace un mes.

|cff00ff00%s]=],
	["REG_LIST_ACTIONS_PURGE_UNLINKED"] = "Perfiles no vinculados a un personaje",
	["REG_LIST_ACTIONS_PURGE_UNLINKED_C"] = [=[Esta purga eliminará todos los perfiles no vinculados a un personaje de WoW.

|cff00ff00%s]=],
	["REG_LIST_ADDON"] = "Tipo de perfil",
	["REG_LIST_CHAR_EMPTY"] = "Sin personajes",
	["REG_LIST_CHAR_EMPTY2"] = "Ningún personaje encaja con tu selección",
	["REG_LIST_CHAR_FILTER"] = "Personajes: %s / %s",
	["REG_LIST_CHAR_IGNORED"] = "Ignorado",
	["REG_LIST_CHAR_SEL"] = "Seleccionar personaje",
	["REG_LIST_CHAR_TITLE"] = "Lista de personajes",
	["REG_LIST_CHAR_TT"] = "Click para mostrar página",
	["REG_LIST_CHAR_TT_CHAR"] = "Personaje(s) de WoW ligado(s):",
	["REG_LIST_CHAR_TT_CHAR_NO"] = "No está vinculado a ningún personaje",
	["REG_LIST_CHAR_TT_DATE"] = [=[Última vez que fue visto: |cff00ff00%s|r
Último lugar donde fue visto: |cff00ff00%s|r]=],
	["REG_LIST_CHAR_TT_GLANCE"] = "A primera vista",
	["REG_LIST_CHAR_TT_IGNORE"] = "Personaje(s) ignorado(s)",
	["REG_LIST_CHAR_TT_NEW_ABOUT"] = "Descripción no leída",
	["REG_LIST_CHAR_TT_RELATION"] = [=[Relación:
|cff00ff00%s]=],
	["REG_LIST_FILTERS"] = "Filtros",
	["REG_LIST_FILTERS_TT"] = [=[|cffffff00Click:|r Aplicar filtros
|cffffff00Click derecho:|r Limpiar filtros]=],
	["REG_LIST_FLAGS"] = "Banderas",
	["REG_LIST_GUILD"] = "Hermandad del personaje",
	["REG_LIST_IGNORE_EMPTY"] = "Personaje no ignorado",
	["REG_LIST_IGNORE_TITLE"] = "Lista de ignorados",
	["REG_LIST_IGNORE_TT"] = [=[Razón:
|cff00ff00%s

|cffffff00Click para eliminar de la lista de ignorados]=],
	["REG_LIST_NAME"] = "Nombre del personaje",
	["REG_LIST_NOTIF_ADD"] = "Nuevo perfil descubierto: |cff00ff00%s",
	["REG_LIST_NOTIF_ADD_CONFIG"] = "Nuevo perfil descubierto",
	["REG_LIST_NOTIF_ADD_NOT"] = "Este perfil ya no existe.",
	["REG_LIST_PET_MASTER"] = "Nombre del dueño",
	["REG_LIST_PET_NAME"] = "Nombre del compañero",
	["REG_LIST_PET_TYPE"] = "Tipo de compañero",
	["REG_LIST_PETS_EMPTY"] = "No hay compañero",
	["REG_LIST_PETS_EMPTY2"] = "Ningún compañero encaja con tu selección",
	["REG_LIST_PETS_FILTER"] = "Compañeros: %s / %s",
	["REG_LIST_PETS_TITLE"] = "Lista de compañeros",
	["REG_LIST_PETS_TOOLTIP"] = "Se ha visto en",
	["REG_LIST_PETS_TOOLTIP2"] = "Se ha visto con",
	["REG_LIST_REALMONLY"] = "Sólo en este reino",
	["REG_MSP_ALERT"] = [=[|cffff0000ADVERTENCIA

No se puede tener más de un addon utilizando el Protocolo Mary Sue, ya que podrían entrar en conflicto.|r

Actualmente cargado: |cff00ff00%s

|cffff9900Por lo tanto, se desactivará el apoyo PMS para el Total RP3|r

Si no quieres que el TRP3 sea tu PMS y no quieres ver esta alerta de nuevo, puedes desactivarlo en el módulo Protocolo Mary Sue en ajustes de Total RP3 en -> Estado del módulo.]=],
	["REG_PLAYER"] = "Personaje",
	["REG_PLAYER_ABOUT"] = "Acerca de",
	["REG_PLAYER_ABOUT_ADD_FRAME"] = "Añadir un marco",
	["REG_PLAYER_ABOUT_EMPTY"] = "Sin descripción",
	["REG_PLAYER_ABOUT_HEADER"] = "Etiqueta del título",
	["REG_PLAYER_ABOUT_MUSIC"] = "Tema del personaje",
	["REG_PLAYER_ABOUT_MUSIC_LISTEN"] = "Tocar tema",
	["REG_PLAYER_ABOUT_MUSIC_REMOVE"] = "Deseleccionar tema",
	["REG_PLAYER_ABOUT_MUSIC_SELECT"] = "Selecciona un tema para el personaje",
	["REG_PLAYER_ABOUT_MUSIC_SELECT2"] = "Seleccionar tema",
	["REG_PLAYER_ABOUT_MUSIC_STOP"] = "Parar tema",
	["REG_PLAYER_ABOUT_NOMUSIC"] = "|cffff9900Sin tema",
	["REG_PLAYER_ABOUT_P"] = "Etiqueta del parágrafo",
	["REG_PLAYER_ABOUT_REMOVE_FRAME"] = "Eliminar este marco",
	["REG_PLAYER_ABOUT_SOME"] = "Escribir texto aquí...",
	["REG_PLAYER_ABOUT_T1_YOURTEXT"] = "Tu texto aquí",
	["REG_PLAYER_ABOUT_TAGS"] = "Herramientas de formato",
	["REG_PLAYER_ABOUT_UNMUSIC"] = "|cffff9900Tema desconocido",
	["REG_PLAYER_ABOUT_VOTE_DOWN"] = "No me gusta",
	["REG_PLAYER_ABOUT_VOTE_NO"] = [=[No hay personajes conectados vinculados a este perfil.
¿Deseas mandar el voto de todas formas?]=],
	["REG_PLAYER_ABOUT_VOTE_SENDING"] = "Enviando tu voto a %s ...",
	["REG_PLAYER_ABOUT_VOTE_SENDING_OK"] = "¡Tu voto ha sido enviado a %s !",
	["REG_PLAYER_ABOUT_VOTE_TT"] = "Tu voto es totalmente anónimo y sólo puede ser visto por este jugador.",
	["REG_PLAYER_ABOUT_VOTE_TT2"] = "Sólo puedes votar si el jugador está conectado.",
	["REG_PLAYER_ABOUT_VOTE_UP"] = "Me gusta",
	["REG_PLAYER_ABOUT_VOTES"] = "Estadísticas",
	["REG_PLAYER_ABOUT_VOTES_R"] = [=[|cff00ff00%s Me gusta
|cffff0000%s No me gusta]=],
	["REG_PLAYER_ABOUTS"] = "Acerca de %s",
	["REG_PLAYER_ADD_NEW"] = "Crear nuevo",
	["REG_PLAYER_AGE"] = "Edad",
	["REG_PLAYER_AGE_TT"] = [=[Aquí puedes indicar la edad de tu personaje.

Puedes hacerlo de distintas maneras:|c0000ff00
- Usa años,
- O un adjetivo (joven, maduro, adulto, venerable, etc.).]=],
	["REG_PLAYER_ALERT_HEAVY_SMALL"] = [=[|cffff0000El tamaño total de tu perfil es demasiado extenso.
|cffff9900Debes reducirlo.]=],
	["REG_PLAYER_BIRTHPLACE"] = "Lugar de nacimiento",
	["REG_PLAYER_BIRTHPLACE_TT"] = [=[Aquí puedes indicar el lugar de nacimiento tu personaje. Puede ser una región, zona o incluso un continente. Tú eres quien decide cuán preciso quieres que sea.

|c00ffff00Puedes usar el botón de la derecha para seleccionar tu ubicación actual como lugar de nacimiento.]=],
	["REG_PLAYER_BKG"] = "Diseño de fondo",
	["REG_PLAYER_CARACT"] = "Características",
	["REG_PLAYER_CHANGE_CONFIRM"] = [=[Puede que tengas algunos cambios sin guardar.
¿Deseas cambiar la página de todos modos?
|cffff9900Cualquier cambio se perderá.]=],
	["REG_PLAYER_CHARACTERISTICS"] = "Características",
	["REG_PLAYER_CLASS"] = "Clase",
	["REG_PLAYER_CLASS_TT"] = [=[Esta es la clase por defecto de tu personaje.

|cff00ff00Por ejemplo :|r
Caballero, pirotécnico, nigromante, arcanista...]=],
	["REG_PLAYER_COLOR_CLASS"] = "Color de clase",
	["REG_PLAYER_COLOR_CLASS_TT"] = [=[Esto determina el color en que se visualizará la clase.
]=],
	["REG_PLAYER_COLOR_TT"] = [=[|cffffff00Clic:|r Seleccionar color
|cffffff00Clic derecho:|r Descartar color]=],
	["REG_PLAYER_CURRENT"] = "Actualmente",
	["REG_PLAYER_CURRENT_OOC"] = "Esta es información Fuera de Rol",
	["REG_PLAYER_CURRENTOOC"] = "Actualmente (FdR)",
	["REG_PLAYER_EYE"] = "Color de ojos",
	["REG_PLAYER_EYE_TT"] = [=[Aquí puedes indicar el color de ojos de tu personaje.

Ten en cuenta que, aunque tu rostro esté constantemente oculto, vale la pena mencionarlo, por si acaso.]=],
	["REG_PLAYER_FIRSTNAME"] = "Nombre",
	["REG_PLAYER_FIRSTNAME_TT"] = [=[Este es el nombre de tu personaje. Este es un campo obligatorio a rellenar, por lo que si no se especifica un nombre se usará el nombre por defecto (|cffffff00%s|r).

¡Puedes utilizar un |c0000ff00apodo|r!]=],
	["REG_PLAYER_FULLTITLE"] = "Título completo",
	["REG_PLAYER_FULLTITLE_TT"] = [=[Aquí puedes escribir el título completo de tu personaje. Puede ser una versión más larga del título u otro título completo.

Sin embargo, es posible que quieras evitar repeticiones, en caso de que no haya información adicional que mencionar.]=],
	["REG_PLAYER_GLANCE"] = "A primera vista",
	["REG_PLAYER_GLANCE_BAR_DELETED"] = "Grupo prestablecido |cffff9900%s|r eliminado.",
	["REG_PLAYER_GLANCE_BAR_EMPTY"] = "El nombre del predeterminado no puede estar vacío.",
	["REG_PLAYER_GLANCE_BAR_LOAD"] = "Grupo restablecido",
	["REG_PLAYER_GLANCE_BAR_LOAD_SAVE"] = "Grupo predeterminado",
	["REG_PLAYER_GLANCE_BAR_NAME"] = [=[Por favor introduce el nombre del predeterminado.

|cff00ff00Nota: Si el nombre ya está siendo usado por otro grupo, será remplazado por este grupo. ]=],
	["REG_PLAYER_GLANCE_BAR_SAVE"] = "Guardar grupo como predeterminado.",
	["REG_PLAYER_GLANCE_BAR_SAVED"] = "Grupo predeterminado |cff00ff00%s|r ha sido creado",
	["REG_PLAYER_GLANCE_BAR_TARGET"] = "\"A primera vista\" predeterminado",
	["REG_PLAYER_GLANCE_EDITOR"] = "Editor de A primera vista : Ranura %s",
	["REG_PLAYER_GLANCE_PRESET"] = "Cargar",
	["REG_PLAYER_GLANCE_PRESET_ADD"] = "Creado prestablecido |cff00ff00%s|r.",
	["REG_PLAYER_GLANCE_PRESET_ALERT1"] = "Por favor, introduce una categoría y un nombre",
	["REG_PLAYER_GLANCE_PRESET_CATEGORY"] = "Categoría prestablecida",
	["REG_PLAYER_GLANCE_PRESET_CREATE"] = "Crear prestablecido",
	["REG_PLAYER_GLANCE_PRESET_GET_CAT"] = [=[%s

]=],
	["REG_PLAYER_GLANCE_PRESET_NAME"] = "Nombre",
	["REG_PLAYER_GLANCE_PRESET_REMOVE"] = "Eliminar prestablecido |cff00ff00%s|r.",
	["REG_PLAYER_GLANCE_PRESET_SAVE"] = "Guardar información como prestablecida",
	["REG_PLAYER_GLANCE_PRESET_SAVE_SMALL"] = "Guardar como prestablecido",
	["REG_PLAYER_GLANCE_PRESET_SELECT"] = "Seleccionar prestablecido",
	["REG_PLAYER_GLANCE_TITLE"] = "Nombre de atributo",
	["REG_PLAYER_GLANCE_USE"] = "Activar esta ranura",
	["REG_PLAYER_HEIGHT"] = "Altura",
	["REG_PLAYER_HEIGHT_TT"] = [=[Esta es la altura de tu personaje.
Tienes varias formas de hacerlo:|c0000ff00
- Numérico: 170 cm, 6'5" ...
- Cualificativo: Alto, bajo ...]=],
	["REG_PLAYER_HERE"] = "Seleccionar posición",
	["REG_PLAYER_HERE_HOME_PRE_TT"] = [=[Actual posición de la residencia:
|cff00ff00%s|r.]=],
	["REG_PLAYER_HERE_HOME_TT"] = [=[|cffffff00Clic|r: Usar la posición actual como tu residencia.
|cffffff00Clic-derecho|r: Elimina la posición de la residencia.]=],
	["REG_PLAYER_HERE_TT"] = "|cffffff00Click|r: Seleccionar tu posición actual",
	["REG_PLAYER_HISTORY"] = "Historia",
	["REG_PLAYER_ICON"] = "Icono del personaje",
	["REG_PLAYER_ICON_TT"] = "Selecciona una representación gráfica para tu personaje.",
	["REG_PLAYER_IGNORE"] = "Ignorar personajes vinculados (%s)",
	["REG_PLAYER_LASTNAME"] = "Apellido",
	["REG_PLAYER_LASTNAME_TT"] = "Es el apellido de tu personaje.",
	["REG_PLAYER_LEFTTRAIT"] = "Atributo izquierdo",
	["REG_PLAYER_MISC_ADD"] = "Añadir campo adicional",
	["REG_PLAYER_MORE_INFO"] = "Información adicional",
	["REG_PLAYER_MSP_HOUSE"] = "Nombre de la Casa",
	["REG_PLAYER_MSP_MOTTO"] = "Lema",
	["REG_PLAYER_MSP_NICK"] = "Apodo",
	["REG_PLAYER_NAMESTITLES"] = "Nombres y títulos",
	["REG_PLAYER_NO_CHAR"] = "Sin características",
	["REG_PLAYER_PEEK"] = "Varios",
	["REG_PLAYER_PHYSICAL"] = "Descripción física",
	["REG_PLAYER_PSYCHO"] = "Rasgos de personalidad",
	["REG_PLAYER_PSYCHO_ADD"] = "Añadir un rasgo de personalidad",
	["REG_PLAYER_PSYCHO_ATTIBUTENAME_TT"] = "Nombre del atributo",
	["REG_PLAYER_PSYCHO_CHAOTIC"] = "Caótico",
	["REG_PLAYER_PSYCHO_CREATENEW"] = "Crear rasgo",
	["REG_PLAYER_PSYCHO_CUSTOM"] = "Rasgo personalizado",
	["REG_PLAYER_PSYCHO_LEFTICON_TT"] = "Establece el icono del atributo de la izquierda",
	["REG_PLAYER_PSYCHO_MORE"] = "Añadir un punto a \"%s\"",
	["REG_PLAYER_PSYCHO_PERSONAL"] = "Características personales",
	["REG_PLAYER_PSYCHO_POINT"] = "Añadir un punto",
	["REG_PLAYER_PSYCHO_RIGHTICON_TT"] = "Establece el icono del atributo de la derecha.",
	["REG_PLAYER_PSYCHO_SOCIAL"] = "Rasgos personales",
	["REG_PLAYER_RACE"] = "Raza",
	["REG_PLAYER_RACE_TT"] = "Aquí va la raza de tu personaje. No está restringido a las razas jugables. Hay muchas razas del Warcraft que pueden asumir formas comunes...",
	["REG_PLAYER_REGISTER"] = "Información del directorio",
	["REG_PLAYER_RESIDENCE"] = "Residencia",
	["REG_PLAYER_RESIDENCE_SHOW"] = "Coordenadas de residencia",
	["REG_PLAYER_RESIDENCE_SHOW_TT"] = [=[|cff00ff00%s

|rClick para que aparezca en el mapa]=],
	["REG_PLAYER_RESIDENCE_TT"] = [=[Aquí puedes indicar donde vive el personaje normalmente. Esta podría ser su dirección personal (su casa) o el lugar donde se hospeda.
Ten en cuenta que si tu personaje es un vagabundo, tendrás que cambiar la información.

|c00ffff00Puedes utilizar el botón de la derecha para fijar la posición actual como residencia.]=],
	["REG_PLAYER_RIGHTTRAIT"] = "Atributo derecho",
	["REG_PLAYER_SHOWMISC"] = "Mostrar marco de varios",
	["REG_PLAYER_SHOWPSYCHO"] = "Mostrar el marco de personalidad",
	["REG_PLAYER_STYLE_ASSIST"] = "Asistencia de rol",
	["REG_PLAYER_STYLE_BATTLE"] = "Resolución de batallas de rol",
	["REG_PLAYER_STYLE_BATTLE_1"] = "World of Warcraft PVP",
	["REG_PLAYER_STYLE_BATTLE_2"] = "Batalla a dados TRP",
	["REG_PLAYER_STYLE_BATTLE_3"] = "Batalla a dados",
	["REG_PLAYER_STYLE_BATTLE_4"] = "Batalla a emotes",
	["REG_PLAYER_STYLE_DEATH"] = "Aceptación de muerte",
	["REG_PLAYER_STYLE_EMPTY"] = "Sin atributos de rol compartidos",
	["REG_PLAYER_STYLE_FREQ"] = "Frecuencia de rol",
	["REG_PLAYER_STYLE_FREQ_1"] = "Todo el tiempo",
	["REG_PLAYER_STYLE_FREQ_2"] = "La mayoría de las veces",
	["REG_PLAYER_STYLE_FREQ_3"] = "La mitad del tiempo",
	["REG_PLAYER_STYLE_FREQ_4"] = "A veces",
	["REG_PLAYER_STYLE_FREQ_5"] = "No es un personaje de rol",
	["REG_PLAYER_STYLE_GUILD"] = "Miembro de hermandad",
	["REG_PLAYER_STYLE_GUILD_IC"] = "Miembro ER",
	["REG_PLAYER_STYLE_GUILD_OOC"] = "Miembro FdR",
	["REG_PLAYER_STYLE_HIDE"] = "No mostrar",
	["REG_PLAYER_STYLE_INJURY"] = "Aceptación de heridas",
	["REG_PLAYER_STYLE_PERMI"] = "Con el permiso del jugador",
	["REG_PLAYER_STYLE_ROMANCE"] = "Aceptación de romances",
	["REG_PLAYER_STYLE_RPSTYLE"] = "Estilo de rol",
	["REG_PLAYER_STYLE_RPSTYLE_SHORT"] = "Estilo ER",
	["REG_PLAYER_TITLE"] = "Título",
	["REG_PLAYER_TITLE_TT"] = [=[El título de tu personaje es el título con el que tu personaje es llamado normalmente. Evita colocar títulos largos, para ello se ha de utilizar el título completo.

Ejemplos de |c0000ff00títulos apropiados|r:
|c0000ff00- Condesa,
- Marqués,
- Mago,
- Señor,
- etc.
|rEjemplo de |cffff0000títulos inapropiados|r:
|cffff0000- Condesa de las Marismas del Norte,
- Mago de la Torre de Ventormenta,
- Diplomático de los draenei,
- etc.]=],
	["REG_PLAYER_TRP2_PIERCING"] = "Piercings",
	["REG_PLAYER_TRP2_TATTOO"] = "Tatuajes",
	["REG_PLAYER_TRP2_TRAITS"] = "Fisionomía",
	["REG_PLAYER_TUTO_ABOUT_COMMON"] = [=[|cff00ff00Tema del personaje:|r
Puedes elegir un |cffffff00tema|r para tu personaje. Piensa en ello como una |cffffff00música de ambientación para la lectura de la descripción de tu personaje.

|cff00ff00Fondo:|r
Este es el |cffffff00tipo de fondo|r para la descripción de tu personaje.

|cff00ff00Plantilla:|r
La plantilla elegida define |cffffff00las posibilidades del diseño y escritura generales|r para tu descripción.
|cffff9900Sólo la plantilla seleccionada se verá, no hace falta rellenar todas.|r
Una vez elegida la plantilla puedes volver a abrir este tutorial para tener más ayuda sobre cada plantilla.]=],
	["REG_PLAYER_WEIGHT"] = "Complexión",
	["REG_PLAYER_WEIGHT_TT"] = [=[Esta es la complexión de tu personaje.
Por ejemplo podría ser |c0000ff00delgado, gordo o musculoso...|r ¡O simplemente podría ser normal!]=],
	["REG_REGISTER"] = "Directorio",
	["REG_REGISTER_CHAR_LIST"] = "Lista de personajes",
	["REG_RELATION"] = "Relación",
	["REG_RELATION_BUSINESS"] = "Negocios",
	["REG_RELATION_BUSINESS_TT"] = "%s y %s tienen una relación de negocios",
	["REG_RELATION_BUTTON_TT"] = [=[Relación: %s
|cff00ff00%s

|cffffff00Haz clic para mostrar las acciones posibles]=],
	["REG_RELATION_FAMILY"] = "Familia",
	["REG_RELATION_FAMILY_TT"] = "%s comparte un vínculo de sangre con %s.",
	["REG_RELATION_FRIEND"] = "Amistoso",
	["REG_RELATION_FRIEND_TT"] = "%s considera a %s amigo.",
	["REG_RELATION_LOVE"] = "Amor",
	["REG_RELATION_LOVE_TT"] = "%s está enamorado de %s",
	["REG_RELATION_NEUTRAL"] = "Neutral",
	["REG_RELATION_NEUTRAL_TT"] = "%s conoce a %s.",
	["REG_RELATION_NONE"] = "Ninguna",
	["REG_RELATION_NONE_TT"] = "%s no conoce a %s.",
	["REG_RELATION_TARGET"] = "|cffffff00Clic: |rCambiar relación",
	["REG_RELATION_UNFRIENDLY"] = "Enemigo",
	["REG_RELATION_UNFRIENDLY_TT"] = "%s está enemistado con %s.",
	["REG_TT_GUILD"] = "%s de |cffff9900%s",
	["REG_TT_GUILD_IC"] = "Miembro ER",
	["REG_TT_GUILD_OOC"] = "Miembro FdR",
	["REG_TT_IGNORED"] = "<Personaje ignorado>",
	["REG_TT_IGNORED_OWNER"] = "<Propietario ignorado>",
	["REG_TT_NOTIF"] = "Descripción sin leer",
	["REG_TT_REALM"] = "Reino: |cffff9900%s",
	["REG_TT_TARGET"] = "Objetivo: |cffff9900%s",
	["TB_LANGUAGE"] = "Idioma",
	["TB_LANGUAGES_TT"] = "Cambiar idioma",
	["TB_SWITCH_PROFILE"] = "Cambiar a otro perfil",
	["TF_IGNORE"] = "Ignorar jugador",
	["TF_IGNORE_NO_REASON"] = "Sin razón",
	["TF_IGNORE_TT"] = "|cffffff00Click:|r Ignorar jugador",
	["UI_TUTO_BUTTON"] = "Modo tutorial",
	["UI_TUTO_BUTTON_TT"] = "Haz clic para activar/desactivar el modo tutorial"
}
};

TRP3_API.locale.registerLocale(LOCALE);
