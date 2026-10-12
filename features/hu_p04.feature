# language: es
# Ampliación didáctica AD-T4-01. RF-A04 NO equivale al RF-004 del SRS del equipo.
@HU_P04 @RF_A04 @AMPLIACION_DIDACTICA
Característica: Registrar un paciente

  Escenario: E01 Registrar un paciente nuevo
    Dado personal de admisión autorizado en el ejemplo
    Y los datos completos del paciente ficticio PX-004
    Y su código local no existe en el registro del ejemplo
    Cuando solicita registrar al paciente
    Entonces recibe confirmación con un ID de paciente
    Y la confirmación corresponde a los datos ingresados
