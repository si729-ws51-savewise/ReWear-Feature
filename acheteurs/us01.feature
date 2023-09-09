Feature: Sección Registro en la aplicación
  Como usuario
  Quiero poder crear una cuenta segura con mi correo electrónico y contraseña
  Para acceder a la aplicación.

  Scenario Outline: Se valida el registro del usuario
    Given que el usuario ha descargado la aplicación y no tiene una cuenta creada
    And el usuario ha ingresado a la sección de Login de la aplicación
    When el usuario selecciona la opción de "Crear cuenta"
    Then se le pide que ingrese su <correo electrónico> y una <contraseña> segura de al menos 8 caracteres.
    And el sistema muestra un <mensaje> que el usuario pudo registrarse correctamente

    Examples: INPUT
        | Usuario  | Correo Electrónico   | Contraseña  |
        | Usuario1 | usuario1@example.com | Password123 |
        | Usuario2 | usuario2@example.com | SecurePass1 |
        | Usuario3 | usuario3@example.com | Secret12345 |
    Examples: OUTPUT
        | mensaje |