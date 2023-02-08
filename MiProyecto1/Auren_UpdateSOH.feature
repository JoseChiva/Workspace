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

Feature: Auren.UpdateSOH
    Scenario: Login scenario
        Given the user is logged into Sage X3 with "param:loginType" using user name "param:loginUserName" and password "param:loginPassword"
        When the user selects the "param:endPointName1" entry on endpoint panel
        Then the "param:endPointName1" endpoint is selected
        And the user changes the main language code to "es-ES"
    Scenario: Update
        # Call Function by code
        Given the user opens the "GESSOH" function
        # Choose entry transaction - if needed
        And the user selects the data table in the popup
        And the user selects cell with text: "STD Estándar" and column header: ""
        And the user clicks on the selected cell
        Then the "Pedido venta STD : Estándar" screen is displayed
        # escribe en el campo ATP
        #        Given the user selects the text field with name: "ATP"
        #        Then the value of the selected text field is empty
        Given the user selects the text field with name: "ATP"
        When the user writes "PRUEBA" to the selected field
        Then the value of the selected text field is "PRUEBA"
        # he añadido el campo ATP Flag porque sino no me habilita el botón registrar
        Given the user selects the check box with name: "ATP Flag"
        When the user sets the check box to ticked
        Then the selected check box is checked
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
        And the user clicks the "Registrar" main action button on the right panel
        # ...
        And the user clicks the "Salir de la función" main action button on the right panel

    Scenario: Logout scenario
        Then the user logs-out from the system