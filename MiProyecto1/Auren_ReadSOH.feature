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

Feature: Auren.ReadSOH
    Scenario: Login scenario
        Given the user is logged into Sage X3 with "param:loginType" using user name "param:loginUserName" and password "param:loginPassword"
        When the user selects the "param:endPointName1" entry on endpoint panel
        Then the "param:endPointName1" endpoint is selected
        And the user changes the main language code to "es-ES"
    Scenario: Read
        # Call Function by code
        Given the user opens the "GESSOH" function
        # Choose entry transaction - if needed
        And the user selects the data table in the popup
        And the user selects cell with text: "STD Estándar" and column header: ""
        And the user clicks on the selected cell
        Then the "Pedido venta STD : Estándar" screen is displayed
        # salir de la función
        And the user clicks the "Salir de la función" main action button on the right panel

    Scenario: Logout scenario
        Then the user logs-out from the system