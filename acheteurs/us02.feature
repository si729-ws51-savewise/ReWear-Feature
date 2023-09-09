Feature: Sección Inicio de sesión en la aplicación
 Como comprador registrado
 Quiero iniciar sesión en la aplicación 
 Para acceder a mi cuenta.

  Scenario Outline: Se valida el Inicio de sesión del usuario
    Given el usuario se haya registrado
    And el usuario ha ingresado a la sección de Login de la aplicación
    When el usuario selecciona la opción de "Iniciar Sesión"
    Then se le pide que ingrese su <correo electrónico> y <contraseña>
    And el sistema muestra un <mensaje> que el usuario pudo ingresar correctamente

    Examples: INPUT
        | Usuario  | Correo Electrónico   | Contraseña  |
        | Usuario1 | usuario1@example.com | Password123 |
        | Usuario2 | usuario2@example.com | SecurePass1 |
        | Usuario3 | usuario3@example.com | Secret12345 |
    Examples: OUTPUT
        | mensaje |