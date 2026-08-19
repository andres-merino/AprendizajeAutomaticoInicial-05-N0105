<!-- Encabezado -->
[![Colaboradores][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Estrellas][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![MIT License][license-shield]][license-url]

<br />
<div align="center">

<h1 align="center">Aprendizaje Automático Inicial (05-N0105)</h1>

Material del curso para el período 2026-2 de la carrera de Ciencia de Datos de la Pontificia Universidad Católica del Ecuador.

[Reportar un problema](https://github.com/andres-merino/AprendizajeAutomaticoInicial-05-N0105/issues) · [Solicitar un cambio](https://github.com/andres-merino/AprendizajeAutomaticoInicial-05-N0105/issues)

</div>

## Descripción

El curso introduce el flujo de trabajo del aprendizaje automático: preparación de datos, partición de conjuntos, evaluación, reducción de dimensionalidad, agrupamiento, clasificación, redes neuronales, árboles y optimización de modelos. Las clases combinan fundamentos, notebooks, ejercicios guiados y retos con datos reales.

### Resultados de aprendizaje

- **RdA 1:** Plantear los conceptos fundamentales del aprendizaje automático, incluyendo los principios básicos, técnicas de preprocesado de datos, métodos de evaluación y ajuste de modelos, destacando su importancia en el análisis y resolución de problemas de datos.
- **RdA 2:** Aplicar modelos de aprendizaje automático supervisado y no supervisado, así como su validación y optimización, en la resolución de problemas tanto reales como simulados.
- **RdA 3:** Resolver problemas prácticos mediante el uso de modelos de aprendizaje automático, ajustándolos para la mejora de su rendimiento y precisión.

## Cómo usar este repositorio

1. Consulta el [cronograma del curso](0-Cronograma/Cronograma.pdf).
2. Revisa la clase y el resumen del tema antes de la sesión.
3. Ejecuta el notebook de demostración y luego resuelve el ejercicio correspondiente.
4. Usa los retos y las videoexplicaciones para integrar y comunicar lo aprendido.

### Preparar el entorno local

Se recomienda Python 3.12. Desde la raíz del repositorio:

```bash
python -m venv .venv

# Windows (PowerShell)
.\.venv\Scripts\Activate.ps1

# macOS o Linux
source .venv/bin/activate

python -m pip install --upgrade pip
python -m pip install -r requirements.txt
jupyter notebook
```

## Mapa del curso

El guion de clase presenta la secuencia didáctica; el notebook desarrolla la demostración computacional; el ejercicio propone práctica adicional. Un guion largo puede apoyarse en varios notebooks.

| Unidad | Tema | Clase | Notebook(s) | Ejercicio | Resumen |
|---:|---|---|---|---|---|
| 1 | Fundamentos del aprendizaje automático | [PDF](2-Clases/Clase01.pdf) | — | — | [PDF](2-Resumenes/Resumen01.pdf) |
| 2 | Métricas de distancia | [PDF](2-Clases/Clase02.pdf) | [Notebook](2-Notebooks/02-Metricas-Distancia.ipynb) | — | [PDF](2-Resumenes/Resumen02.pdf) |
| 3 | Preprocesamiento y partición de datos | [PDF](2-Clases/Clase03.pdf) | [Procesado](2-Notebooks/03-1-Procesado-Datos.ipynb) · [Entrenamiento/prueba](2-Notebooks/03-2-Conjuntos-Entrenamiento-Prueba.ipynb) | [Ejercicio](2-Ejercicios/02-Prep-Datos-Metricas-Modelos.ipynb) | [PDF](2-Resumenes/Resumen03.pdf) |
| 4 | Primer flujo de modelado | [PDF](2-Clases/Clase04.pdf) | [Notebook](2-Notebooks/04-Mi-primer-modelo.ipynb) | [Ejercicio](2-Ejercicios/01-Mi-segundo-modelo-Plantilla.ipynb) | — |
| 5.1 | Evaluación de clasificación y regresión | [PDF](2-Clases/Clase05-1.pdf) | [Clasificación](2-Notebooks/05-1-Evaluacion-de-Modelos-Clasificacion.ipynb) · [Regresión](2-Notebooks/05-1-Evaluacion-de-Modelos-Regresion.ipynb) | — | [PDF](2-Resumenes/Resumen05.pdf) |
| 5.2 | Evaluación de agrupamiento | [PDF](2-Clases/Clase05-2.pdf) | [Notebook](2-Notebooks/05-2-Evaluacion-de-Modelos-Agrupamiento.ipynb) | — | — |
| 6 | Reducción de dimensionalidad | [PDF](2-Clases/Clase06.pdf) | [Reducción](2-Notebooks/06-1-Reduccion-Dimensionalidad.ipynb) · [SVD](2-Notebooks/06-2-SVD.ipynb) | — | [PDF](2-Resumenes/Resumen06.pdf) |
| 7 | Introducción al aprendizaje no supervisado | [PDF](2-Clases/Clase07.pdf) | [Normalización y agrupamiento](2-Notebooks/07-Normalizacion-Agrupamiento.ipynb) | — | — |
| 8 | Agrupamiento jerárquico | [PDF](2-Clases/Clase08.pdf) | [Notebook](2-Notebooks/08-Agrupamiento-Jerarquico.ipynb) | [Ejercicio](2-Ejercicios/03-Agrupamiento-Jerarquico.ipynb) | [PDF](2-Resumenes/Resumen08.pdf) |
| 9 | Agrupamiento k-means | [PDF](2-Clases/Clase09.pdf) | [Notebook](2-Notebooks/09-Agrupamiento-kMeans.ipynb) | [Ejercicio](2-Ejercicios/04-Agrupamiento-kMeans.ipynb) | [PDF](2-Resumenes/Resumen09.pdf) |
| 10 | Vecinos más cercanos | [PDF](2-Clases/Clase10.pdf) | [Notebook](2-Notebooks/10-kNN.ipynb) | [Ejercicio](2-Ejercicios/05-kNN.ipynb) | — |
| 11 | Máquinas de vectores de soporte | [PDF](2-Clases/Clase11.pdf) | [Notebook](2-Notebooks/11-SVM.ipynb) | [Ejercicio](2-Ejercicios/06-SVM.ipynb) | [PDF](2-Resumenes/Resumen11.pdf) |
| 12 | Perceptrón lineal | [PDF](2-Clases/Clase12.pdf) | [Notebook](2-Notebooks/12-Perceptron-Lineal.ipynb) | [Ejercicio](2-Ejercicios/07-Perceptron.ipynb) | [PDF](2-Resumenes/Resumen12.pdf) |
| 13 | Función sigmoide y clasificación multiclase | [PDF](2-Clases/Clase13.pdf) | [Sigmoide](2-Notebooks/13-1-Perceptron-Sigmoide.ipynb) · [Multiclase](2-Notebooks/13-2-Perceptron-Multiclase.ipynb) | — | [PDF](2-Resumenes/Resumen13.pdf) |
| 14 | Perceptrón multicapa | [PDF](2-Clases/Clase14.pdf) | [Regresión](2-Notebooks/14-1-Perceptron-Multicapa-Regresion.ipynb) · [Clasificación](2-Notebooks/14-2-Perceptron-Multicapa-Clasificacion.ipynb) · [Multiclase](2-Notebooks/14-3-Perceptron-Multicapa-Multiclase.ipynb) · [Práctica](2-Notebooks/14-4-Perceptron-Practica.ipynb) | — | — |
| 15 | Entrenamiento de redes neuronales | [PDF](2-Clases/Clase15.pdf) | [Notebook](2-Notebooks/15-Entrenamiento-Redes.ipynb) | — | — |
| 16 | Árboles de decisión | [PDF](2-Clases/Clase16.pdf) | [Notebook](2-Notebooks/16-Arboles-Decision.ipynb) | [Ejercicio](2-Ejercicios/08-Arboles-Decision.ipynb) | — |
| 17 | Bosques aleatorios y ensambles | [PDF](2-Clases/Clase17.pdf) | [Bosques aleatorios](2-Notebooks/17-1-Bosques-Aleatorios.ipynb) · [Boosting y bagging](2-Notebooks/17-2-Boosting-Bagging.ipynb) | [Ejercicio](2-Ejercicios/09-Bosques-Aleatorios.ipynb) | — |
| 18 | Validación, optimización y persistencia | [PDF](2-Clases/Clase18.pdf) | [Validación cruzada](2-Notebooks/18-1-Validacion-Cruzada.ipynb) · [Hiperparámetros](2-Notebooks/18-2-Optimizacion-Hiperparametros.ipynb) · [Guardado](2-Notebooks/18-3-Guardado-Modelos.ipynb) · [Lectura](2-Notebooks/18-4-Lectura-Modelos.ipynb) | [Ejercicio](2-Ejercicios/10-Optimizacion-Hiperparametros.ipynb) | — |

## Evaluaciones integradoras

- [Reto 1: aprendizaje no supervisado](1-Retos/Reto01.pdf)
- [Reto 2: aprendizaje supervisado](1-Retos/Reto02.pdf)
- [Videoexplicación 1](1-VideoExp/VideoExp01.pdf)
- [Videoexplicación 2](1-VideoExp/VideoExp02.pdf)

## Metodologías activas

El curso integra clases invertidas, talleres de implementación, análisis de casos, retos con datos reales, videoexplicaciones y exposiciones. Los productos se construyen mediante hitos de seguimiento para recibir retroalimentación antes de la entrega final.

## Estructura del repositorio

- `0-Cronograma/`: planificación, resultados de aprendizaje y evaluación.
- `1-Retos/` y `1-VideoExp/`: consignas y rúbricas de evaluación.
- `2-Clases/`: guiones y presentaciones de clase.
- `2-Notebooks/`: demostraciones computacionales y datos de apoyo.
- `2-Ejercicios/`: práctica guiada para estudiantes.
- `2-Resumenes/`: lecturas breves de preparación o repaso.
- `2-ClaseInvertida/`: materiales para trabajo previo a clase.

## Tecnologías

[![LaTeX][LaTeX]][LaTeX-url]
![Jupyter Badge](https://img.shields.io/badge/Jupyter-F37626?logo=jupyter&logoColor=fff&style=for-the-badge)

## Créditos

**Andrés Merino** (aemerinot@gmail.com, aemerinot@puce.edu.ec)

Docente-investigador en la Pontificia Universidad Católica del Ecuador

[![LinkedIn][linkedin-shield]][linkedin-url-aemt]

## Licencia

Distribuido bajo la licencia MIT.

[![MIT License][license-shield]][license-url]

<!-- MARKDOWN LINKS & IMAGES -->
[contributors-shield]: https://img.shields.io/github/contributors/andres-merino/AprendizajeAutomaticoInicial-05-N0105.svg?style=for-the-badge
[contributors-url]: https://github.com/andres-merino/AprendizajeAutomaticoInicial-05-N0105/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/andres-merino/AprendizajeAutomaticoInicial-05-N0105.svg?style=for-the-badge
[forks-url]: https://github.com/andres-merino/AprendizajeAutomaticoInicial-05-N0105/forks
[stars-shield]: https://img.shields.io/github/stars/andres-merino/AprendizajeAutomaticoInicial-05-N0105?style=for-the-badge
[stars-url]: https://github.com/andres-merino/AprendizajeAutomaticoInicial-05-N0105/stargazers
[issues-shield]: https://img.shields.io/github/issues/andres-merino/AprendizajeAutomaticoInicial-05-N0105.svg?style=for-the-badge
[issues-url]: https://github.com/andres-merino/AprendizajeAutomaticoInicial-05-N0105/issues
[license-shield]: https://img.shields.io/github/license/andres-merino/AprendizajeAutomaticoInicial-05-N0105.svg?style=for-the-badge
[license-url]: https://es.wikipedia.org/wiki/Licencia_MIT
[linkedin-shield]: https://img.shields.io/badge/linkedin-%230077B5.svg?style=for-the-badge&logo=linkedin&logoColor=white
[linkedin-url-aemt]: https://www.linkedin.com/in/andr%C3%A9s-merino-010a9b12b/
[LaTeX]: https://img.shields.io/badge/LaTeX-008080?logo=latex&logoColor=fff&style=for-the-badge
[LaTeX-url]: https://www.latex-project.org/
