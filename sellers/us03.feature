Feature: Sección Eliminacion de Producto en la aplicación
Como vendedor 
Quiero poder Eliminacion la información de productos que ya no estén disponibles en mi inventario.

  Scenario Outline: Se valida la Edición de Producto del usuario
    Given el usuario tenga productos con 0 de stock
    And el usuario ha ingresado a su panel
    When el usuario selecciona la opción de "Eliminar Producto"
    Then se le pide que selecciones el producto a eliminar confirmar a eliminacion.
    And el sistema muestra un <mensaje> de producto eliminado con exito.

    Examples: INPUT
        | Selecicon de Producto    |
    Examples: OUTPUT
        | mensaje |