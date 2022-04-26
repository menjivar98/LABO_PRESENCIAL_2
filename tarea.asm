org     100h

        section .text


; suma usando celda de memoria
; cuando la fuente es un dato inmediato y el destino es una celda de memoria, es necesario indicar el tamaño con una directiva
    mov     byte[200h], 0d
    mov     byte[201h], 0d
    mov     byte[202h], 1d
    mov     byte[203h], 9d
    mov     byte[204h], 5d
    mov     byte[205h], 3d
    mov     byte[206h], 1d
    mov     byte[207h], 6d

    MOV     word CX, 8d
    XOR SI, SI ; Limpiar SI
 

iterar:
   ADD BL, [200h + SI]
   INC SI
   
   LOOP iterar
exit:
           
    int     20h
    