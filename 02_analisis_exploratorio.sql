-- ==============================================================================
-- PROYECTO: Análisis de Seguridad Vial en Mataró
-- ARCHIVO: 02_analisis_exploratorio.sql
-- DESCRIPCIÓN: Consultas de extracción de insights sobre accidentes con víctimas
-- ==============================================================================

-- ------------------------------------------------------------------------------
-- 1. Verificación de calidad de datos y evolución temporal
-- Objetivo: Comprobar la consistencia histórica de los datos y detectar anomalías 
-- o años sin registro en el portal de Dades Obertes.
-- ------------------------------------------------------------------------------
SELECT 
    anio,
    COUNT(*) AS total_accidentes,
    SUM(fallecidos) AS total_fallecidos,
    SUM(heridos_graves) AS total_heridos_graves
FROM accidentes
GROUP BY anio
ORDER BY anio DESC;


-- ------------------------------------------------------------------------------
-- 2. Análisis del pico de siniestralidad (Drill-Down)
-- Objetivo: Tras detectar un pico histórico en 2023 (46 accidentes frente a 24 en 2022),
-- analizamos si la subida afecta a coches o a "usuarios vulnerables".
-- ------------------------------------------------------------------------------
SELECT 
    anio,
    SUM(motos_implicadas) AS total_motos,
    SUM(bicicletas_implicadas) AS total_bicis_y_patinetes,
    SUM(peatones_implicados) AS total_peatones,
    COUNT(*) AS total_accidentes_graves
FROM accidentes
WHERE anio IN (2022, 2023)
GROUP BY anio;


-- ------------------------------------------------------------------------------
-- 3. Perfilando el riesgo: Horarios de atropellos a peatones
-- Objetivo: Al descubrir que los atropellos subieron un 130% en 2023, cruzamos 
-- los datos con franjas horarias y días de la semana para orientar políticas preventivas.
-- ------------------------------------------------------------------------------
SELECT 
    franja_horaria,
    tipo_dia,
    COUNT(*) AS total_atropellos,
    SUM(heridos_graves) AS victimas_graves,
    SUM(fallecidos) AS fallecidos
FROM accidentes
WHERE peatones_implicados > 0 AND anio = 2023
GROUP BY franja_horaria, tipo_dia
ORDER BY total_atropellos DESC;


-- ------------------------------------------------------------------------------
-- 4. El Factor Ambiental: Impacto de la iluminación en los accidentes
-- Objetivo: Desmentir o confirmar la hipótesis de que la falta de luz artificial 
-- en invierno provoca el aumento de siniestros de tarde.
-- ------------------------------------------------------------------------------
SELECT 
    iluminacion,
    COUNT(*) AS total_accidentes,
    SUM(peatones_implicados) AS atropellamientos,
    SUM(motos_implicadas) AS accidentes_motos
FROM accidentes
WHERE anio = 2023
GROUP BY iluminacion
ORDER BY total_accidentes DESC;
