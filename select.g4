grammar example;		
start:	select  ID(',' ID)* from ID(',' ID)* 
(where ( ID OPER_COND (NUMERO|ID|LITERAL) )
    (and  ID OPER_COND (NUMERO|ID|LITERAL) )*
    )? ;
select: 'select'|'SELECT';
from: 'from'|'FROM';
and: 'and'|'AND';
where: 'where'|'WHERE';


 ID: ([a-zA-Z]|UNDERSCORE)(LETTER|UNDERSCORE|DIGIT)* ;
COND: ID OPER_COND (NUMERO|ID|LITERAL);
 NUMERO: DIGIT+;
LITERAL: '"'(LETTER|DIGIT)+'"';
OPER_COND: Lt|Gt|Equal|LtEqual|GtEqual;

 LETTER:[a-zA-Z];
fragment DIGIT: [0-9];

fragment UNDERSCORE: '_';
fragment Lt         : '<';
fragment LtEqual    : '<=';
fragment GtEqual   : '>=';
fragment Gt         : '>';
fragment Equal      : '=';

NEWLINE : [ \r\n\t]+ -> skip;
