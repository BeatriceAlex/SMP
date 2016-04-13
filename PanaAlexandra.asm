org 100h

mov ax,0600h    ;  
mov bh,07       ; 
mov cx,0000     ; de la randul=0 , col=00
mov dx,184fh     ; la randul=18h , col=4fh
int 10h         ; 

mov ah,00          ; set mode
mov al,13h         ; mode= 13   
int 10h

; schela casa   


    ;linia orizontala de jos
    
        mov cx,30     ; incepe de la coloana 30 si
        mov dx,175    ; linia 175
        hseB:mov ah,0ch   ; ah=0ch pentru a desena o linie 
        mov al,07h     ; aleg culoare gri deschis 
        int 10h        ; invoc intreruperea pentru a desena linia 
        inc cx         ; incrementeaza pozitia orizontala 
        cmp cx,116     ; desenez linia pana la 116
        jnz hseB  
              
    ; sunet
        mov ah, 02    ; incarcare sunet 
        mov dl, 07h
        int 21h       ; executa  
        
    ;linia verticala din stanga
    
        mov cx,30
        mov dx,125
        hseL:mov ah,0ch
        mov al,07h
        int 10h
        inc dx
        cmp dx,175
        jnz hseL
                           
                           
    ; sunet
        mov ah, 02    ; incarcare sunet 
        mov dl, 07h
        int 21h       ; executa
        
                           
    ;linia orizontala de sus 
        mov cx,30
        mov dx,125
        hseT:mov ah,0ch
        mov al,07h ;aleg culoare gri deschis
        int 10h
        inc cx
        cmp cx,116 ; deseneaza linia pana la:  coloan = 116
        jnz hseT
    
    ; sunet
    mov ah, 02    ; incarcare sunet 
    mov dl, 07h
    int 21h       ; executa
    
    
    ;linia verticala din dreapta
    
        mov cx,116
        mov dx,125
        hseR:mov ah,0ch
        mov al,07h
        int 10h
        inc dx
        cmp dx,176
        jnz hseR
            
    
    ; sunet
        mov ah, 02    ; incarcare sunet 
        mov dl, 07h
        int 21h       ; executa
        
            
    ;linie acoperis stanga
    
        mov cx,30
        mov dx,125
        hseLR:mov ah,0ch
        mov al,6      ; maro
        int 10h
        inc cx
        dec dx
        cmp cx,73
        cmp dx,82
        jnz hseLR
    
    ; sunet
        mov ah, 02    ; incarcare sunet 
        mov dl, 07h
        int 21h       ; executa
        
    
    ;linie acoperis dreapta
    
        mov cx,73
        mov dx,82
        hseRR:mov ah,0ch
        mov al,6    ; maro
        int 10h
        inc cx
        inc dx
        cmp cx,116
        cmp dx,125
        jnz hseRR  
    
    ; sunet
        mov ah, 02    ; incarcare sunet 
        mov dl, 07h
        int 21h       ; executa
        
       
    ; acoperis linie oblica  sus   
        mov cx,73
        mov dx,82
        hseLL:mov ah,0ch
        mov al,6 ; maro
        int 10h
        inc cx 
        inc cx
        dec dx
        cmp cx,133
        cmp dx,50
        jnz hseLL                   
    
    ; sunet
        mov ah, 02    ; incarcare sunet 
        mov dl, 07h
        int 21h       ; executa
        
    
    ; acoperis linie oblica jos 
        mov cx,116
        mov dx,125
        hseLLA:mov ah,0ch
        mov al,6 ; maro
        int 10h
        inc cx 
        inc cx
        dec dx
        cmp cx,173
        cmp dx,93
        jnz hseLLA
    
    ; sunet
        mov ah, 02    ; incarcare sunet 
        mov dl, 07h
        int 21h       ; executa
        
    ; acoperis ultima linie
        mov cx,135
        mov dx,51
        hseRRA:mov ah,0ch
        mov al,6, maro
        int 10h
        inc cx
        inc dx
        cmp cx,181
        cmp dx,94
        jnz hseRRA     
    
    ; sunet
        mov ah, 02    ; incarcare sunet 
        mov dl, 07h
        int 21h       ; executa
        
    
    ;linie oblica prelungire casa
    
        mov cx,116
        mov dx,175
        hseLLC:mov ah,0ch
        mov al,07h
        int 10h
        inc cx 
        inc cx
        dec dx
        cmp cx,173
        cmp dx,143
        jnz hseLLC    
    
    ; sunet
        mov ah, 02    ; incarcare sunet 
        mov dl, 07h
        int 21h       ; executa
        
    ; ultima linie orizontala casa 
    
        mov cx,178
        mov dx,94
        hseBLAL:mov ah,0ch
        mov al,07h
        int 10h
        inc dx
        cmp dx,144
        jnz hseBLAL
        
    ; sunet
        mov ah, 02    ; incarcare sunet 
        mov dl, 07h
        int 21h       ; executa
    
; am terminat schita casa


; Usa

    ;linia din stanga a usii
    
        mov cx,64
        mov dx,175
        hseLD:mov ah,0ch
        mov al,9
        int 10h
        dec dx
        cmp dx,150
        jnz hseLD
        
    ; sunet
        mov ah, 02    ; incarcare sunet 
        mov dl, 07h
        int 21h       ; executa
        
    ;linia din dreapta a usii
    
        mov cx,82
        mov dx,175
        hseRD:mov ah,0ch
        mov al,9
        int 10h
        dec dx
        cmp dx,150
        jnz hseRD
        
    ; sunet
        mov ah, 02    ; incarcare sunet 
        mov dl, 07h
        int 21h       ; executa
    
    ;linia de deaspura usii
    
        mov cx,64
        mov dx,150
        hseTD:mov ah,0ch
        mov al, 9
        int 10h
        inc cx
        cmp cx,83
        jnz hseTD  
        
    ; sunet
        mov ah, 02    ; incarcare sunet 
        mov dl, 07h
        int 21h       ; executa
        
    ; clanta 
        mov cx,78
        mov dx,160
        hseCL:mov ah,0ch
        mov al, 5 ; roz
        int 10h
        inc dx
        cmp dx,165
        jnz hseCL
    
    ; sunet
        mov ah, 02    ; incarcare sunet 
        mov dl, 07h
        int 21h       ; executa
        
;Usa terminata

; Ferestre 
             
             
    ;linia 1 orizontala geam stanga
    
        mov cx,90
        mov dx, 135
        hseWH1b:mov ah,0ch
        mov al,5 ; roz
        int 10h
        inc cx
        cmp cx,110
        jnz hseWH1b
    
    ; sunet
        mov ah, 02    ; incarcare sunet 
        mov dl, 07h
        int 21h       ; executa
        
    ;linia 1 verticala geam stanga 
    
        mov cx,36
        mov dx,135
        hseLWV1:mov ah,0ch
        mov al,5 ; roz
        int 10h
        inc dx
        cmp dx,155
        jnz hseLWV1        
        
    ; sunet
        mov ah, 02    ; incarcare sunet 
        mov dl, 07h
        int 21h       ; executa
        
    
    ;linia 3 verticala geam stanga
        mov cx,56
        mov dx,135
        hseLWV3:mov ah,0ch
        mov al,5 ; roz
        int 10h
        inc dx
        cmp dx,155
        jnz hseLWV3
        
    ; sunet
        mov ah, 02    ; incarcare sunet 
        mov dl, 07h
        int 21h       ; executa
        
    ;linia 3 orizontala geam stanga
    
        mov cx,90
        mov dx,155
        hseWH3b:mov ah,0ch
        mov al,5 ; roz
        int 10h
        inc cx
        cmp cx,111
        jnz hseWH3b
                     
    ; sunet
        mov ah, 02    ; incarcare sunet 
        mov dl, 07h
        int 21h       ; executa
        
    
    ;linia 1 orizontala geam dreapta
        
        mov cx,36
        mov dx,135
        hseWH1:mov ah,0ch
        mov al,5 ; roz
        int 10h
        inc cx
        cmp cx,56
        jnz hseWH1
        
        ; sunet
        mov ah, 02    ; incarcare sunet 
        mov dl, 07h
        int 21h       ; executa
        
    
    ;linia 1 verticala geam dreapta
    
        mov cx,90
        mov dx,135
        hseRWV1:mov ah,0ch
        mov al,5 ; roz
        int 10h
        inc dx
        cmp dx,155
        jnz hseRWV1 
    
    ; sunet
        mov ah, 02    ; incarcare sunet 
        mov dl, 07h
        int 21h       ; executa
                    
    ;linia 3 verticala geam dreapta
    
        mov cx,110
        mov dx,135
        hseRWV3:mov ah,0ch
        mov al, 5 ; roz
        int 10h
        inc dx
        cmp dx,155
        jnz hseRWV3      
        
    ; sunet
        mov ah, 02    ; incarcare sunet 
        mov dl, 07h
        int 21h       ; executa
        
    ;linia 3 orizontala geam  dreapta
        mov cx,36
        mov dx,155
        hseWH3:mov ah,0ch
        mov al,5  ; roz
        int 10h
        inc cx
        cmp cx,57
        jnz hseWH3
        
    ; sunet
        mov ah, 02    ; incarcare sunet 
        mov dl, 07h
        int 21h       ; executa
        
    ;linia 2 verticala geam stanga
    
        mov cx,46
        mov dx,135
        hseLWV2:mov ah,0ch
        mov al,5 ; roz
        int 10h
        inc dx
        cmp dx,155
        jnz hseLWV2
    
    ; sunet
        mov ah, 02    ; incarcare sunet 
        mov dl, 07h
        int 21h       ; executa
        
    ;linia 2 orizontala geam stanga
    
        mov cx,90
        mov dx,145
        hseWH2b:mov ah,0ch
        mov al,5 ; roz
        int 10h
        inc cx
        cmp cx,110
        jnz hseWH2b
     
    ; sunet
        mov ah, 02    ; incarcare sunet 
        mov dl, 07h
        int 21h       ; executa
        
    ;linia 2 verticala geam dreapta 
    
        mov cx,100
        mov dx,135
        hseRWV2:mov ah,0ch
        mov al,5 ; roz
        int 10h
        inc dx
        cmp dx,155
        jnz hseRWV2
        
    ; sunet
        mov ah, 02    ; incarcare sunet 
        mov dl, 07h
        int 21h       ; executa
        
    
    ;linia 2 orizontala geam dreapta  
    
        mov cx,36
        mov dx,145
        hseWH2:mov ah,0ch
        mov al,5 ; roz
        int 10h
        inc cx
        cmp cx,56
        jnz hseWH2
    
    ; sunet
        mov ah, 02    ; incarcare sunet 
        mov dl, 07h
        int 21h       ; executa
       
;Ferestre terminate 

; cos

    ; linie verticala stanga
        mov cx,140
        mov dx,70
        hseCO1:mov ah,0ch
        mov al, 5 ; roz
        int 10h
        inc dx
        cmp dx,80
        jnz hseCO1
    
    ; linie verticala dreapta
        mov cx,145
        mov dx,70
        hseCO2:mov ah,0ch
        mov al, 5 ; roz
        int 10h
        inc dx
        cmp dx,80
        jnz hseCO2
    
    ; linie orizonala 
        mov cx,140
        mov dx,80
        hseCO3:mov ah,0ch
        mov al,5  ; roz
        int 10h
        inc cx
        cmp cx,145
        jnz hseCO3  
       
       
    ; sunet
        mov ah, 02    ; incarcare sunet 
        mov dl, 07h
        int 21h       ; executa
                                  
; am terminat si cosul 
; casa completa ^-^
ret
