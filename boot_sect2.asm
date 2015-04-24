; Boot sector using Interupts to display text on screen


mov ah , 0x0e ; Teletyping mode

mov al ,'H'

int 0x10 ; interupt 16 

mov al,'e'

int 0x10

mov al,'l'

int 0x10

mov al,'l'

int 0x10

mov al,'l'

int 0x10

mov al, 'o'


int 0x10

mov al, ' '

int 0x10

mov al,'I'

int 0x10

mov al,' '

int 0x10

mov al,'a'

int 0x10

mov al, 'm'

int 0x10

mov al, ' '
int 0x10
mov al,'A'

int 0x10

mov al,'k'

int 0x10

mov al, 's'

int 0x10

mov al,'h'

int 0x10

mov al,'a'

int 0x10

mov al, 'y'

int 0x10


jmp $   ; jump to current instruction


times 510-($-$$) db 0

dw 0xaa55
