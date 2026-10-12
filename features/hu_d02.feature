# language: es
# Reconstrucción según la guía S01 (SUP-D07). Si ya tienes tu archivo de S01, conserva el tuyo.
# Equivalencia en el proyecto del equipo: HU-D02 = HU-002 / RF-002 / CU-002
@HU_D02 @RF_D02 @CU_D02
Característica: Consultar historial de atenciones

  Escenario: E01 Consultar un historial con registros
    Dado un médico autorizado y el paciente HX-001 seleccionado
    Y HX-001 tiene dos atenciones ficticias, del 10/09/2026 y del 24/09/2026
    Cuando consulta el historial de atenciones del paciente
    Entonces visualiza las dos atenciones de HX-001
    Y la atención del 24/09/2026 aparece antes que la del 10/09/2026

  Escenario: E02 Consultar un historial sin registros
    Dado un médico autorizado y el paciente HX-002 seleccionado
    Y HX-002 no tiene atenciones registradas
    Cuando consulta el historial de atenciones del paciente
    Entonces recibe un mensaje que indica que el paciente no tiene atenciones registradas
    Y el mensaje es distinto del que se muestra ante una falla de consulta
