# 🚦 Análisis de Seguridad Vial en Mataró (SQL)

## 📌 Contexto
Este proyecto personal utiliza **SQL** para analizar datos reales de accidentes de tráfico con víctimas (heridos graves y fallecidos) en el municipio de Mataró, Cataluña. El objetivo es identificar patrones de siniestralidad basados en horarios, clima, tipo de vía y vehículos implicados para proponer posibles mejoras en la seguridad vial de la ciudad.

## 🛠️ Herramientas Utilizadas
* **Base de Datos:** SQLite (mediante DB Browser)
* **Lenguaje:** SQL (DDL para estructuración y DML para análisis)
* **Fuente de Datos:** [Dades Obertes de la Generalitat de Catalunya](https://analisi.transparenciacatalunya.cat/)

## 📂 Estructura del Proyecto
1. `01_limpieza_datos.sql`: Script de creación y normalización de la tabla a partir de los datos crudos (CSV). Incluye limpieza de datos y optimización de tipos.
2. `02_analisis_exploratorio.sql`: Consultas SQL diseñadas para responder a preguntas clave de negocio sobre la seguridad vial en el municipio, utilizando agrupaciones, cruces y filtrados temporales.

## 📊 Hallazgos Principales (Insights)
* **📈 Pico de Siniestralidad:** Se detecta un pico histórico de accidentes graves en el año 2023 (46 accidentes), duplicando la media de la década anterior en el municipio.
* **🚶‍♂️ Usuarios Vulnerables:** El incremento de 2023 no se debe a colisiones entre coches convencionales o bicicletas, sino a un aumento crítico en los **atropellos a peatones (+130%)** y **accidentes de motocicleta (+70%)** respecto al año anterior.
* **🕒 Perfil de Riesgo Temporal:** El atropello típico no es nocturno ni ocurre en fines de semana; el 69% ocurren en la franja de **Tarde**, siendo las tardes de los **días laborables** el momento de máximo riesgo. Esto coincide con los picos de movilidad escolar, laboral y comercial.
* **☀️ El Factor Lumínico (Mito Desmentido):** La hipótesis de que la falta de luz artificial en invierno provoca más accidentes queda descartada. El 76% de todos los siniestros graves de 2023 ocurrieron a plena luz del día ("De dia, dia clar"). El problema principal radica en el volumen de tráfico y distracciones.

## 💡 Conclusión y Recomendaciones
A partir del análisis de los datos, se concluye que las políticas de prevención del ayuntamiento **no** deberían priorizar el ocio nocturno o la iluminación de las vías, sino que deberían enfocarse en **reforzar la seguridad en los pasos de peatones (guardia urbana, señalización, semáforos) durante las tardes de lunes a viernes**, protegiendo así a los usuarios más vulnerables en las horas punta de movilidad de la ciudad.