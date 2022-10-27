using my.dc as my from '../db/data-model';

service CatalogService {
    entity Headers as
        select from my.Headers {

            Headers.ID,
            Headers.date,
            Headers.items,
            Headers.status,
            case Headers.status
                when
                    1
                then
                    true
                else
                    false
            end as hiddenFlag : Boolean,
            case Headers.status
                when
                    1
                then
                    false
                else
                    true
            end as negatedHiddenFlag : Boolean,
        };

    entity Items   as projection on my.Items;
}

annotate CatalogService.Headers @odata.draft.enabled;
