# 🚦 Análisis de Seguridad Vial en Mataró (SQL)

## 📌 Contexto
Este proyecto personal utiliza **SQL** para analizar datos reales de accidentes de tráfico con víctimas (heridos graves y fallecidos) en el municipio de Mataró, Cataluña. El objetivo es identificar patrones de siniestralidad basados en horarios, clima, tipo de vía y vehículos implicados para proponer posibles mejoras en la seguridad vial de la ciudad.

## 🛠️ Herramientas Utilizadas
* **Base de Datos:** SQLite (mediante DB Browser)
* **Lenguaje:** SQL (DDL para estructuración y DML para análisis)
* **Fuente de Datos:** [Dades Obertes de la Generalitat de Catalunya](https://analisi.transparenciacatalunya.cat/)

## 📂 Estructura del Proyecto
1. `01_limpieza_datos.sql`: Script de creación y normalización de la tabla a partir de los datos crudos (CSV):

CREATE TABLE accidents AS 
SELECT 
    "Any" AS anio,
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
FROM accidents_raw;

**Opcional:** Borramos la tabla original para gestionar el espacio.
DROP TABLE accidents_raw;

2. `02_analisis_exploratorio.sql`: Consultas SQL para responder a preguntas de negocio sobre la seguridad vial en el municipio.

## 📊 Hallazgos Principales (Insights)
--Continue
