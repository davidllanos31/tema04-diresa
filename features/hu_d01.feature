# language: es
# Reconstrucción según la guía S01 (SUP-D04 a D06). Si ya tienes tu archivo de S01, conserva el tuyo.
# Equivalencia en el proyecto del equipo: HU-D01 = HU-001 / RF-001 / CU-001
@HU_D01 @RF_D01 @CU_D01
Característica: Registrar atención

  Escenario: E01 Registrar con datos obligatorios completos
    Dado un médico autorizado y el paciente HX-001 seleccionado
    Y fecha, motivo, diagnóstico e indicaciones completos
    Cuando solicita guardar la atención
    Entonces recibe la confirmación con un ID de atención
    Y la confirmación corresponde al paciente HX-001

  Escenario: E02 Intentar guardar sin diagnóstico
    Dado un médico autorizado y el paciente HX-001 seleccionado
    Y fecha, motivo e indicaciones completos y diagnóstico vacío
    Cuando solicita guardar la atención
    Entonces se le indica que debe completar el campo diagnóstico
    Y se conservan la fecha, el motivo y las indicaciones ingresados
    Y no se registra la atención ni se muestra confirmación con ID
