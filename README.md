# petStoreAutomation

La idea principal de este proyecto es la automatizacion de 4 endpoints (creación, actualización y busqueda por id y por status ) del recurso https://petstore.swagger.io/. Esta automatizacion se realizara con **Karate DSL**, Gherkin y Cucumber

# 🥋 Proyecto de Pruebas Automatizadas con Karate DSL

## 📁 Estructura del Proyecto

├── src/

│ └── test/
│ ├── java/

│ │ └── runners/ # Clases Java para ejecutar los features

│ └── resources/

│ ├── features/ # Archivos .feature con escenarios de prueba

├── pom.xml / build.gradle # Configuración de dependencias


## ⚙️ Requisitos Previos
- Java 17 o superior
- Gradle
- IDE como IntelliJ IDEA o VS Code

## 🚀 Ejecución de Pruebas

./gradlew test