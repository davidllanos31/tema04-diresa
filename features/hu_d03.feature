# language: es
# Versión 2: incorpora CAM-S2-01 (solo Centro A habilitado) y SUP-S2-06 (rechazo de Centro B).
# Versión 1 (antes del cambio): E01 usaba Centro B. Cambio pendiente de aprobación por DIRESA.
# Equivalencia en el proyecto del equipo: HU-D03 = HU-003 / RF-003 / CU-003
@HU_D03 @RF_D03 @CU_D03
Característica: Registrar derivación

  Escenario: E01 Registrar una derivación completa
    Dado un médico autorizado y HX-001 seleccionado
    Y la atención AT-D000 de HX-001 está seleccionada
    Y se eligió Centro A y el motivo Evaluación especializada
    Cuando solicita guardar la derivación
    Entonces recibe confirmación con un ID de derivación
    Y la constancia corresponde a HX-001 y AT-D000
    Y muestra Centro A y el motivo seleccionado

  Escenario: E02 Solicitar un destino no permitido
    Dado un médico autorizado y HX-001 seleccionado
    Y la atención AT-D000 de HX-001 está seleccionada
    Y se eligió Centro B, el motivo Otros y su detalle
    Cuando solicita guardar la derivación
    Entonces recibe un mensaje que indica que Centro B no es un destino permitido
    Y se conservan el motivo Otros y el detalle ingresados
    Y no se crea la derivación ni se muestra confirmación con ID
