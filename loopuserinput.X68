*-----------------------------------------------------------
* Title      :
* Written by :
* Date       :
* Description:
*-----------------------------------------------------------
    ORG    $1000
START:                  ; first instruction of program

* Put program code here
    MOVE.L #$956570, D1
    MOVE.B #%0101, D2
    MOVE.B #21, D0
    TRAP #15
    
    
    LEA MESSAGE, A1
    MOVE.W #500, $2000
    MOVE.B #4, D0
    
    
NEXT:
       
    SUB #1, D0
    ADD.B #1, D1
    MOVE.B D0, D2
    CMP #2, D1
    BSR CARBON_REDUCTION
    
    MOVE.B #2, D0
    TRAP #15
    MOVE.B D2, D0
    
    CMP #0, D0
    BNE NEXT
    
CARBON_REDUCTION:
    SUB.W #10,$2000
    RTS
    
    SIMHALT
    
MESSAGE DC.B 'NEXT INPUT :', 0
    
* Put variables and constants here

    END    START        ; last line of source

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
