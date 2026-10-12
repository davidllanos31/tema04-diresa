# language: es
# Ampliación didáctica AD-T4-01. Datos: SUP-S2-03.
@HU_P07 @RF_A07 @AMPLIACION_DIDACTICA
Característica: Generar reporte mensual de atenciones

  Escenario: E01 Contar atenciones de septiembre
    Dado un administrador autorizado en el ejemplo
    Y las atenciones registradas AT-101 del 10/09/2026, AT-102 del 24/09/2026 y AT-103 del 01/10/2026
    Cuando solicita el reporte de atenciones de septiembre de 2026
    Entonces el reporte muestra el periodo septiembre 2026 y un total de 2 atenciones
    Y la atención AT-103 del 01/10/2026 no se incluye en el conteo
