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

            let mappedTableDefinition = tableDefinition.columns.map(c => {
                c.availability = "Adaptation";
                return c;
            })
            // mappedTableDefinition[0].availability = "Default";
            // macroTable.setProperty("tableDefinition", mappedTableDefinition); // not documented, does not apply

            debugger
            let content = macroTable.getAggregation("content");
            let columns = content.getAggregation("columns");
            columns.pop();
            //content.setAggregation("columns", columns.pop());
            content.addAggregation("columns", columns.pop()); //works but kills personalization
            macroTable.invalidate();

            //Hacky (operated on default table)
            //this.byId("dcappui::HeadersObjectPage--fe::table::items::LineItem::items-innerTable").getColumns()[0].setVisible(false)
            //this.byId("dcappui::HeadersObjectPage--fe::CustomSubSection::DummySection--logTab-innerTable").getColumns()[0].setVisible(false)
            if (true) {
                macroTable.addMessage({
                    description: "Some description",
                    message: "Some Error",
                    persistent: false,
                    type: sap.ui.core.MessageType.Information
                });
            }
            MessageToast.show("Custom handler invoked.");
        }
    };
});