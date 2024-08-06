# Amazon-SageMaker
La arquitectura de Amazon SageMaker para implementar modelos de aprendizaje automático, como el análisis predictivo de retención de empleados, está diseñada para proporcionar una solución completa y gestionada que cubre todo el ciclo de vida del machine learning (ML). A continuación, se describe en detalle esta arquitectura:
Componentes Principales
1. Modelo de SageMaker
Definición del Modelo: Un modelo de SageMaker contiene el código y los artefactos del modelo almacenados en un contenedor Docker. Este modelo puede ser entrenado previamente y almacenado en un bucket de Amazon S3.
Configuración del Contenedor: Se especifica el URI de la imagen del contenedor y la URL de los datos del modelo en S3.
2. Configuración del Endpoint
Endpoint Configuration: Define cómo se debe desplegar el modelo, incluyendo el tipo y número de instancias que se utilizarán para servir el modelo. Esto permite ajustar los recursos según las necesidades de la aplicación.
Producción de Variantes: Permite definir diferentes variantes de despliegue del modelo, facilitando pruebas A/B y despliegues canarios.
3. Endpoint de SageMaker
Punto de Acceso: Un endpoint de SageMaker es un punto de acceso que permite la inferencia en tiempo real utilizando el modelo desplegado. Este endpoint está respaldado por un balanceador de carga para manejar múltiples solicitudes simultáneamente.
Escalabilidad: Los endpoints pueden escalar automáticamente para manejar aumentos en la carga de trabajo, asegurando un rendimiento consistente.
4. Rol de IAM
Rol de Ejecución de SageMaker: Proporciona los permisos necesarios para que SageMaker acceda a otros servicios de AWS, como S3 para almacenar datos y logs, y CloudWatch para monitoreo y logging.
Políticas de Permisos: Incluyen políticas gestionadas como AmazonSageMakerFullAccess y AmazonS3FullAccess para garantizar que SageMaker tenga los permisos necesarios para ejecutar trabajos de ML.
Características Clave
1. Preparación de Datos
SageMaker Data Wrangler: Facilita la preparación y transformación de datos mediante una interfaz visual, permitiendo a los científicos de datos limpiar y transformar datos sin necesidad de escribir código extensivo.
2. Entrenamiento y Evaluación
Entrenamiento Automatizado: SageMaker ofrece capacidades de entrenamiento distribuido y ajuste de hiperparámetros a gran escala, permitiendo entrenar modelos de manera eficiente y rápida.
Evaluación de Modelos: Los modelos pueden ser evaluados utilizando métricas estándar como precisión, F1 score, y otras, asegurando que cumplen con los requisitos de rendimiento antes de ser desplegados.
3. Despliegue y Monitoreo
Despliegue en Tiempo Real: Los modelos pueden ser desplegados en endpoints de SageMaker para inferencia en tiempo real, o utilizando Batch Transform para inferencia en lotes.
Monitoreo de Modelos: SageMaker Model Monitor permite monitorear la calidad de los datos y las predicciones, detectando desviaciones en los datos (drift) y activando retraining automático si es necesario.
4. Registro y Gobernanza
SageMaker Model Registry: Permite rastrear y catalogar los modelos, facilitando la gestión de versiones y asegurando la trazabilidad y gobernanza de los modelos.
Lineage Tracking: Captura la línea de tiempo de los artefactos del modelo, incluyendo datasets, transformaciones de características, algoritmos y configuraciones de hiperparámetros, mejorando la reproducibilidad y cumplimiento.
Orquestación y Automatización
SageMaker Pipelines: Proporciona una interfaz para definir y ejecutar pipelines de ML, automatizando tareas como preparación de datos, entrenamiento, evaluación y despliegue de modelos. Esto permite implementar prácticas de CI/CD en el desarrollo de modelos de ML.
Integración con Kubeflow: SageMaker se puede integrar con Kubeflow Pipelines para orquestar trabajos de ML, permitiendo a los usuarios aprovechar las capacidades de SageMaker desde un entorno Kubernetes.
Beneficios
Escalabilidad y Flexibilidad: SageMaker permite escalar recursos según la demanda, optimizando costos y rendimiento.
Gestión Totalmente Administrada: Elimina la necesidad de gestionar infraestructura, permitiendo a los científicos de datos centrarse en la creación y optimización de modelos.
Seguridad y Cumplimiento: Ofrece capacidades avanzadas de seguridad y cumplimiento, incluyendo cifrado de datos, control de acceso basado en roles y auditoría de actividades.
En resumen, la arquitectura de Amazon SageMaker proporciona una solución integral para el desarrollo, entrenamiento, despliegue y monitoreo de modelos de aprendizaje automático, facilitando la implementación de casos de uso como el análisis predictivo de retención de empleados de manera eficiente y segura.
NOTA: NO SE APROVISIONO EN LA NUBE DE AWS PORQUE COBRA TAL SERVICIO....
