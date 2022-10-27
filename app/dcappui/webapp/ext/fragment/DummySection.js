sap.ui.define([
    "sap/m/MessageToast"
], function(MessageToast) {
    'use strict';

    return {
        onInit: function () {
          console.log("I was here");  
        },
        onPress: function() {
            debugger
            this.byId("dcappui::HeadersObjectPage--fe::table::items::LineItem::items::Table");
            MessageToast.show("Custom handler invoked.");
        }
    };
});
