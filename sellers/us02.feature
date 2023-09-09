Feature: Sección Edición de Producto en la aplicación
Como vendedor 
Quiero poder editar la información de productos que he publicado previamente
Para poder actualizar los datos del producto.

  Scenario Outline: Se valida la Edición de Producto del usuario
    Given el usuario tenga productos para editar
    And el usuario ha ingresado a su panel
    When el usuario selecciona la opción de "Editar Producto"
    Then se le pide que ingrese los detalles a editar del producto <talla>, <color> y <marca>
    And el sistema muestra un <mensaje> de publicacion con exito.

    Examples: INPUT
        | talla    |  color  |   marca  |
        |   M      |  rojo  |  Nike  |
        |   S     |  coral  |  Adidas  |
        |   L     |  blue   |  AYNI  |
    Examples: OUTPUT
        | mensaje |