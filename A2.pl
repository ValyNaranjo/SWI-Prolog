:- discontiguous reduce_riesgo_acceso_no_autorizado/1.
%% Hechos

tiene_cortafuegos(sistema).
tiene_politica_seguridad(sistema).
tiene_registro_actividad(sistema).
tiene_copia_seguridad_datos(sistema).
se_revisa_actualizaciones(sistema).
esta_vigilado(sistema).
empleados_con_formacion(sistema).
propiedad_de_empresa_segura(sistema).
procesa_datos_confidenciales(sistema).
conectado_a_internet(sistema).

%% Reglas

reduce_riesgo_acceso_no_autorizado(sistema) :- tiene_cortafuegos(sistema).
reduce_riesgo_acceso_no_autorizado(sistema) :- tiene_politica_seguridad(sistema).
se_pueden_rastrear_acciones_atacante(sistema) :- tiene_registro_actividad(sistema).
reduce_riesgo_perdida_datos(sistema) :- tiene_copia_seguridad_datos(sistema).
reduce_riesgo_explotar_vulnerabilidades(sistema) :- se_revisa_actualizaciones(sistema).
acciones_atacante_detectadas_rapidamente(sistema) :- esta_vigilado(sistema).
reduce_riesgo_acceso_no_autorizado(sistema) :- empleados_con_formacion(sistema).
reduce_riesgo_ataque_sistema(sistema) :- propiedad_de_empresa_segura(sistema).
aumenta_riesgo_violacion_datos(sistema) :- procesa_datos_confidenciales(sistema).
aumenta_riesgo_ataque(sistema) :- conectado_a_internet(sistema).



