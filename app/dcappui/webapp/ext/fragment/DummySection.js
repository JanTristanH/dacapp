sap.ui.define([
    "sap/m/MessageToast"
], function (MessageToast) {
    'use strict';

    return {
        onInit: function () {
            console.log("I was here");
            debugger
        },
        onPress: function () {
            let macroTable = this.byId("logTab")
            macroTable.setVisible(true);
            let oHeader = macroTable.getBindingContext().getObject();
            let tableDefinition = macroTable.getProperty("tableDefinition")
            
            //Hacky
            //this.byId("dcappui::HeadersObjectPage--fe::table::items::LineItem::items-innerTable").getColumns()[0].setVisible(false)
            debugger
            if (false) {
                macroTable.addMessage({
                    description: "Some description",
                    message: "Some Error",
                    persistent: false,
                    type: sap.ui.core.MessageType.Error
                });
            }
            MessageToast.show("Custom handler invoked.");
        }
    };
});