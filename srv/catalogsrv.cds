using {relationshipdemo.db as rel} from '../db/relationshipdemo';
service relsrv{
    entity HeaderSet as projection on rel.Header;
    entity ItemSet as projection on rel.Items;
    entity SalesOrderHeaderSet as projection on rel.SalesOrderHeader;
    entity SalesOrderItemSet as projection on rel.SalesOrderItems;
}

annotate relsrv.SalesOrderHeaderSet with @(
    UI:{
        SelectionFields  : [
            description
        ],
        LineItem  : [
            {$type : 'UI.DataField', Value : ID},
            {$Type : 'UI.DataField', Value : description}
        ],
    }
);

annotate relsrv.SalesOrderItemSet with @(
    UI:{
        LineItem  : [
            {$Type : 'UI.DataField', Value: ID},
            {$type : 'UI.DataField', Value : product},
            {$Type : 'UI.DataField', Value : quantity}
        ],
    }
);