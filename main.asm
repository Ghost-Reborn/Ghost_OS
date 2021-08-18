
; Infinite loop for the bootsector
jmp $

;
; $ - currect address
; $$ - start address
;
;   Logic is to remove occupied memories and insert 0 in it
;   Last 2 bytes must be 55aa, 512 bytes is maximum possible
;   
;   55aa - Magic number which is identified as boot sector
;
times 510-($-$$) db 0

; dw - word datatype
dw 0xaa55
