using my.dc as my from '../db/data-model';

service CatalogService {
    entity Headers as projection on my.Headers;
    entity Items as projection on my.Items;    
}

annotate CatalogService.Headers @odata.draft.enabled ;
