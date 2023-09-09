Feature: Sección Publicación de Productos en la aplicación
Como vendedor
Quiero poder publicar productos en la plataforma, incluyendo información detallada como talla, color y marca
Para tener mejor visibilidada en la aplicación.

  Scenario Outline: Se valida la publicación de productos del usuario
    Given el usuario tenga productos para publicar
    And el usuario ha ingresado a su cuenta
    When el usuario selecciona la opción de "Publish Product"
    Then se le pide que ingrese los detalles del producto <talla>, <color> y <marca>
    And el sistema muestra un <mensaje> de publicacion con exito.

    Examples: INPUT
        | talla    |  color  |   marca  |
        |   M      |  rojo  |  Nike  |
        |   S     |  coral  |  Adidas  |
        |   L     |  blue   |  AYNI  |
    Examples: OUTPUT
        | mensaje |