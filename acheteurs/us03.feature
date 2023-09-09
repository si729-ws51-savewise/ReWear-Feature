Feature: Sección recuperacion de contraseña en la aplicación
 Como comprador registrado
 Quiero poder restablecer mi contraseña si la olvido
 Para acceder a mi cuenta.

  Scenario Outline: Se valida el restablecimiento de contraseña de usuario
    Given el usuario no se acuerde su contraseña
    And el usuario ha ingresado a la sección de Login de la aplicación
    When el usuario selecciona la opción de "Reset Password"
    Then se le pide que ingrese su <codigo> y <contraseña nueva>
    And el sistema muestra un <mensaje> que el usuario pudo restablecio su contraseña correctamente

    Examples: INPUT
        | Codigo    |  Contraseña  |
        | 1a2b      |  Password123 |
        | 2a2c      |  SecurePass1 |
        | a11z      |  Secret12345 |
    Examples: OUTPUT
        | mensaje |