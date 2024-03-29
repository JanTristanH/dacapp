using CatalogService as service from '../../srv/cat-service';
using from '../../srv/cat-service';
using from '../../db/data-model';


annotate service.Headers with @(UI.LineItem : [
    {
        $Type : 'UI.DataField',
        Label : 'status',
        Value : status,
    },
    {
        $Type : 'UI.DataField',
        Label : 'date',
        Value : date,
    },
]);

annotate service.Headers with @(UI.Facets : [
    {
        $Type : 'UI.ReferenceFacet',
        Label : 'Header Info',
        ID : 'HeaderInfo',
        Target : '@UI.FieldGroup#HeaderInfo1',
    },
    {
        $Type         : 'UI.ReferenceFacet',
        Label         : 'Items',
        ID            : 'items',
        Target        : 'items/@UI.PresentationVariant#items',
        ![@UI.Hidden] : hiddenFlag,
    },
    {
        $Type         : 'UI.ReferenceFacet',
        Label         : 'Items',
        ID            : 'items2',
        Target        : 'items/@UI.PresentationVariant#itemsStatus2',
        ![@UI.Hidden] : negatedHiddenFlag,
    },
]);

annotate service.Items with @(UI.LineItem #items : [
    {
        $Type : 'UI.DataField',
        Value : location,
        Label : 'location',
    },
    {
        $Type : 'UI.DataField',
        Value : fieldControl,
        Label : 'fieldControl',
    },
    {
        $Type : 'UI.DataField',
        Value : material,
        Label : 'material',
    },
    {
        $Type      : 'UI.DataField',
        Value      : fieldControl,
        Label      : 'Field Control hidable',
        @UI.Hidden : headers.hiddenFlag //only hides field value not column
    },
    {
        $Type : 'UI.DataField',
        Value : quantity,
        Label : 'quantity',
    },
], );

annotate service.Items with @(UI.LineItem #itemsStatus2 : [
    {
        $Type : 'UI.DataField',
        Value : location,
        Label : 'location',
    },
    {
        $Type : 'UI.DataField',
        Value : fieldControl,
        Label : 'fieldControl',
    },
    {
        $Type : 'UI.DataField',
        Value : material,
        Label : 'material',
    },
    {
        $Type : 'UI.DataField',
        Value : quantity,
        Label : 'quantity',
    },
],

);

annotate service.Headers with @(UI.FieldGroup #itemForm : {
    $Type : 'UI.FieldGroupType',
    Data  : [{
        $Type : 'UI.DataField',
        Value : ID,
        Label : 'ID',
    }, ],
});

annotate service.Items with @(UI.PresentationVariant #items : {
    $Type          : 'UI.PresentationVariantType',
    Visualizations : ['@UI.LineItem#items', ],
});

annotate service.Items with @(UI.PresentationVariant #itemsStatus2 : {
    $Type          : 'UI.PresentationVariantType',
    Visualizations : ['@UI.LineItem#itemsStatus2', ],
});
annotate service.Headers with @(
    UI.FieldGroup #HeaderInfo : {
        $Type : 'UI.FieldGroupType',
        Data : [
        ],
    }
);
annotate service.Headers with @(
    UI.FieldGroup #h : {
        $Type : 'UI.FieldGroupType',
        Data : [
        ],
    }
);
annotate service.Headers with @(
    UI.FieldGroup #HeaderInfo1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : date,
                Label : 'date',
            },{
                $Type : 'UI.DataField',
                Value : ID,
                Label : 'ID',
            },{
                $Type : 'UI.DataField',
                Value : status,
                Label : 'status',
            },],
    }
);
