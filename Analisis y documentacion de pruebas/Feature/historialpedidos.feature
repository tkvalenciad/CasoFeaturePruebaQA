Feature: Historial de Pedidos

  Scenario: El usuario registrado puede ver el historial de pedidos desde el menú de navegación
    Given el usuario se encuentra registrado
    When está en la página de inicio de sesión 
    Then debería ver la opción "Historial de Pedidos" en el menú de navegación

#El usuario debe haber realizado pedidos
  Scenario: El usuario registrado puede ver la lista de todos los pedidos anteriores
    Given el usuario se encuentra registrado
    And está en la página de inicio de sesión
    When hace clic en el historial de pedidos
    Then deberá mostrar una lista de todos sus pedidos anteriores
    And cada pedido debería mostrar el número de pedido, la fecha y el estado del pedido

#El usuario tiene que haber hecho compras en la aplicación de comercio electrónico
  Scenario: El usuario registrado puede hacer clic en un pedido para ver más detalles
    Given el usuario está registrado
    And se encuentra en el historial de pedidos
    When realiza clic en un pedido específico
    Then deberá ver los detalles del pedido, incluyendo la lista de productos en ese pedido

#El usuario compró anteriormente en la store
  Scenario: El usuario registrado puede ver los detalles de los productos en su pedido
    Given el usuario está registrado
    And se encuentra en el historial de pedidos
    When realiza clic en un pedido específico
    Then cada producto debería mostrar su nombre, cantidad y precio

  Scenario: El Usuario no ha realizado compras
    Given el usuario inicia sesión en su cuenta
    And y no tiene pedidos realizados
    When da clic en el historial de pedidos
    Then debería mostrarse un mensaje indicando que no hay pedidos anteriores

#El usuario compró anteriormente en la store
  Scenario: El usuario registrado puede ver los detalles del pedido cuando este lo cancela
    Given el usuario está registrado
    And se encuentra en el historial de pedidos
    When realiza clic en un pedido cancelado
    Then cada producto debería mostrar su nombre, cantidad y precio

