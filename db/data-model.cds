namespace my.dc;

entity Headers {
  key ID : UUID;
  status  : String(1);
  date  : Date;
  items  : Association to many Items on items.headers = $self;
  //logs  : Association to many Logs on logs.headers = $self;  
}

/*entity Logs {
  key ID : UUID;
  msg   : Association to Msgs;
  msgv1 : String(30);
  msgv2 : String(30);  
  msgv3 : String(30);
  msgv4 : String(30);
  location : String(10);
  material : String(10);
  quantity : Decimal(5,2);
  headers : Association to Headers;
  items  : Association to Items on items.logs = $self;   
}*/

entity Items {
  key ID : UUID;
  headers : Association to Headers;
  fieldControl: Boolean;
  location : String(10);
  material : String(10);
  quantity : Decimal(5,2);

  //logs : Association to many Logs;  
}



entity Msgs {
  key ID : String(3);
  text  : String(70);
}