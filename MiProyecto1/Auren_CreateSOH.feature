###########################################################################
# Header
# -------------------------------------------------------------------------
# - Test code : test3
# - Description :
# - Legislation :
# - JIRA ID : '-XXXX'
# - Created by :
# - Created date - 2023-01-24
# - Updated by :
# - Updated date :
###########################################################################

Feature: Auren.CreateSOH
    Scenario: Login scenario
        Given the user is logged into Sage X3 with "param:loginType" using user name "param:loginUserName" and password "param:loginPassword"
        When the user selects the "param:endPointName1" entry on endpoint panel
        Then the "param:endPointName1" endpoint is selected
        And the user changes the main language code to "es-ES"
    Scenario: Create
        # Call Function by code
        Given the user opens the "GESSOH" function
        # Choose entry transaction - if needed
        And the user selects the data table in the popup
        And the user selects cell with text: "STD Estándar" and column header: ""
        And the user clicks on the selected cell
        Then the "Pedido venta STD : Estándar" screen is displayed
        # añade nuevo pedido
        And the user clicks the "Nuevo" main action button on the right panel
        # escribe la planta
        Given the user selects the text field with name: "Planta venta"
        When the user writes "FR011" to the selected field
        Then the value of the selected text field is "FR011"
        # escribe la el tipo
        Given the user selects the text field with name: "Tipo"
        When the user writes "WEB" to the selected field
        Then the value of the selected text field is "WEB"
        # escribe el cliente
        Given the user selects the text field with name: "Cliente pdo"
        When the user writes "FR004" to the selected field
        Then the value of the selected text field is "FR004"
        # va a la pantalla de líneas
        Given the user selects the fixed data table of section: "Líneas"
        # añade un artículo
        When the user selects last fixed cell with header: "Artículo"
        Then the user adds the text "DIS004" in selected cell
        # añade la cantidad
        When the user selects last fixed cell with header: "Ctd. pedida"
        Then the user adds the text "3" in selected cell
        # añade info en el campo SPE
        When the user selects last editable cell with column header: "ATP dato"
        Then the user adds the text "ATP21" in selected cell
        # registra los cambios
        And the user clicks the "Crear" main action button on the right panel
        # ...
        And the user clicks the "Salir de la función" main action button on the right panel

    Scenario: Logout scenario
        Then the user logs-out from the system