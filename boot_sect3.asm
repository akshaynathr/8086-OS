
; addressing in bootsector program

mov ah , 0x0e   ;Set to teletype

mov bx,the_secret

add bx, 0x7c00 
mov al, [bx] 

int 0x10




the_secret:
	db "X"

jmp $

times 510-($-$$) db 0

dw 0xaa55
