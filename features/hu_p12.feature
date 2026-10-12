# language: es
# Ampliación didáctica AD-T4-01. Datos: SUP-S2-04. No deriva por sí sola de RF-D03.
@HU_P12 @RF_A12 @AMPLIACION_DIDACTICA
Característica: Consultar derivaciones del paciente

  Escenario: E01 Consultar derivaciones de HX-001
    Dado un médico autorizado y el paciente HX-001 seleccionado
    Y HX-001 tiene las derivaciones DR-101 del 20/09/2026 y DR-102 del 24/09/2026
    Y HX-002 tiene la derivación DR-200 del 25/09/2026
    Cuando consulta las derivaciones registradas de HX-001
    Entonces visualiza DR-102 y después DR-101, en orden de fecha descendente
    Y la derivación DR-200 de HX-002 no aparece en la lista
