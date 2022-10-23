
grammar Lang;
prog:   (expr NEWLINE)* ;
expr:   left=expr op=('*'|'/'|'+'|'-') right=expr #binary_operation
    |   '(' child=expr ')' #parentheses
    |   number=INT #int_value
    ;
NEWLINE : [\r\n]+ ;
INT     : [0-9]+ ;
