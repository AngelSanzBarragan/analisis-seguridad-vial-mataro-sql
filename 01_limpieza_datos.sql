CREATE TABLE accidents AS
SELECT 
    Any AS anio,
    dat AS fecha,
    hor AS hora,
    grupHor AS franja_horaria,
    grupDiaLab AS tipo_dia,
    D_TIPUS_VIA AS tipo_via,
    D_CLIMATOLOGIA AS clima,
    D_SUPERFICIE AS estado_superficie,
    D_LLUMINOSITAT AS iluminacion,
    tipAcc AS tipo_accidente,
    CAST(F_MORTS AS INTEGER) AS fallecidos,
    CAST(F_FERITS_GREUS AS INTEGER) AS heridos_graves,
    CAST(F_FERITS_LLEUS AS INTEGER) AS heridos_leves,
    CAST(F_VICTIMES AS INTEGER) AS total_victimas,
    CAST(F_VIANANTS_IMPLICADES AS INTEGER) AS peatones_implicados,
    CAST(F_BICICLETES_IMPLICADES AS INTEGER) AS bicicletas_implicadas,
    CAST(F_MOTOCICLETES_IMPLICADES AS INTEGER) AS motos_implicadas
FROM accidentes_raw;

Borramos la tabla cruda original para ahorrar espacio, ya no la necesitamos
DROP TABLE accidentes_raw;