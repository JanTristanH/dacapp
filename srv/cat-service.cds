using my.dc as my from '../db/data-model';

service CatalogService {
    entity Headers as
        select from my.Headers {

            Headers.ID,
            Headers.date,
            Headers.items,
            Headers.status,
            'UI.ImportanceType/High' as ImportanceQuantity : cds.String,

        };

    entity Items   as projection on my.Items;
}

annotate CatalogService.Headers @odata.draft.enabled;
