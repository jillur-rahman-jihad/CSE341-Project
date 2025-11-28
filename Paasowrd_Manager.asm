.MODEL SMALL 
;---------------------------MACRO SECTION----------------------

;---------------------------MACRO SECTION----------------------
.STACK 100H
.DATA 
;---------------------STORE NEW PASS DATA--------------------
PROMPT_WEB_NAME DB 10,13,'Enter Website Name: $'
PROMPT_HINT DB 10,13,'Enter Password Hint: $'
PROMPT_PASSWORD DB 10,13,'Enter New Password: $'
MSG_STORAGE_FULL DB 10,13,'Password storage is full!$'
MSG_WEAK_PASS DB 10,13,'Password is not strong enough. Please try again.$'
MSG_PASS_STORED DB 10,13,'Password stored successfully!$'
;---------------------STORE NEW PASS DATA--------------------
;----------------------ALL PASSWORD STORES HERE ------------------------- 

PASS_COUNTER DW 4
    ; --- Credential Entries ---                 
   ; --- Entry 1 ---
web_name1     DB 'facebook.com', '$'
pass_plain1   DB 'fAcEb00k!$$', '$'
pass_enc1     DB 'ZmFjZWJvb2shJCQ=', '$'
hint1         DB 'Name of high school', '$'

; --- Entry 2 ---
web_name2     DB 'github.com', '$'
pass_plain2   DB 'g1thub$ecure', '$'
pass_enc2     DB 'ZzF0aHViJGVjdXJl', '$'
hint2         DB 'Project codename', '$'

; --- Entry 3 ---
web_name3     DB 'gmail.com', '$'
pass_plain3   DB 'gMa!l1234', '$'
pass_enc3     DB 'Z01hIWwxMjM0', '$'
hint3         DB 'Favorite color', '$'

; --- Entry 4 ---
web_name4     DB 'linkedin.com', '$'
pass_plain4   DB 'L1nkedIn@work', '$'
pass_enc4     DB 'TDFua2VkSW5Ad29yaw==', '$'
hint4         DB 'First job title', '$'

; --- CORRECTED EMPTY CREDENTIAL ENTRIES ---

; --- Entry 5 ---
web_name5     DB '$', 31 DUP(?)
pass_plain5   DB '$', 31 DUP(?)
pass_enc5     DB '$', 31 DUP(?)
hint5         DB '$', 31 DUP(?)

; --- Entry 6 ---
web_name6     DB '$', 31 DUP(?)
pass_plain6   DB '$', 31 DUP(?)
pass_enc6     DB '$', 31 DUP(?)
hint6         DB '$', 31 DUP(?)

; --- Entry 7 ---
web_name7     DB '$', 31 DUP(?)
pass_plain7   DB '$', 31 DUP(?)
pass_enc7     DB '$', 31 DUP(?)
hint7         DB '$', 31 DUP(?)

; --- Entry 8 ---
web_name8     DB '$', 31 DUP(?)
pass_plain8   DB '$', 31 DUP(?)
pass_enc8     DB '$', 31 DUP(?)
hint8         DB '$', 31 DUP(?)

; --- Entry 9 ---
web_name9     DB '$', 31 DUP(?)
pass_plain9   DB '$', 31 DUP(?)
pass_enc9     DB '$', 31 DUP(?)
hint9         DB '$', 31 DUP(?)

; --- Entry 10 ---
web_name10    DB '$', 31 DUP(?)
pass_plain10  DB '$', 31 DUP(?)
pass_enc10    DB '$', 31 DUP(?)
hint10        DB '$', 31 DUP(?)

; --- Entry 11 ---
web_name11    DB '$', 31 DUP(?)
pass_plain11  DB '$', 31 DUP(?)
pass_enc11    DB '$', 31 DUP(?)
hint11        DB '$', 31 DUP(?)

; --- Entry 12 ---
web_name12    DB '$', 31 DUP(?)
pass_plain12  DB '$', 31 DUP(?)
pass_enc12    DB '$', 31 DUP(?)
hint12        DB '$', 31 DUP(?)

; --- Entry 13 ---
web_name13    DB '$', 31 DUP(?)
pass_plain13  DB '$', 31 DUP(?)
pass_enc13    DB '$', 31 DUP(?)
hint13        DB '$', 31 DUP(?)

; --- Entry 14 ---
web_name14    DB '$', 31 DUP(?)
pass_plain14  DB '$', 31 DUP(?)
pass_enc14    DB '$', 31 DUP(?)
hint14        DB '$', 31 DUP(?)

; --- Entry 15 ---
web_name15    DB '$', 31 DUP(?)
pass_plain15  DB '$', 31 DUP(?)
pass_enc15    DB '$', 31 DUP(?)
hint15        DB '$', 31 DUP(?)

; --- Entry 16 ---
web_name16    DB '$', 31 DUP(?)
pass_plain16  DB '$', 31 DUP(?)
pass_enc16    DB '$', 31 DUP(?)
hint16        DB '$', 31 DUP(?)

; --- Entry 17 ---
web_name17    DB '$', 31 DUP(?)
pass_plain17  DB '$', 31 DUP(?)
pass_enc17    DB '$', 31 DUP(?)
hint17        DB '$', 31 DUP(?)

; --- Entry 18 ---
web_name18    DB '$', 31 DUP(?)
pass_plain18  DB '$', 31 DUP(?)
pass_enc18    DB '$', 31 DUP(?)
hint18        DB '$', 31 DUP(?)

; --- Entry 19 ---
web_name19    DB '$', 31 DUP(?)
pass_plain19  DB '$', 31 DUP(?)
pass_enc19    DB '$', 31 DUP(?)
hint19        DB '$', 31 DUP(?)

; --- Entry 20 ---
web_name20    DB '$', 31 DUP(?)
pass_plain20  DB '$', 31 DUP(?)
pass_enc20    DB '$', 31 DUP(?)
hint20        DB '$', 31 DUP(?)


    ; --- Pointer Table ---
credentials_table DW OFFSET web_name1, OFFSET pass_plain1, OFFSET pass_enc1, OFFSET hint1
                  DW OFFSET web_name2, OFFSET pass_plain2, OFFSET pass_enc2, OFFSET hint2
                  DW OFFSET web_name3, OFFSET pass_plain3, OFFSET pass_enc3, OFFSET hint3
                  DW OFFSET web_name4, OFFSET pass_plain4, OFFSET pass_enc4, OFFSET hint4
                  DW OFFSET web_name5, OFFSET pass_plain5, OFFSET pass_enc5, OFFSET hint5
                  DW OFFSET web_name6, OFFSET pass_plain6, OFFSET pass_enc6, OFFSET hint6
                  DW OFFSET web_name7, OFFSET pass_plain7, OFFSET pass_enc7, OFFSET hint7
                  DW OFFSET web_name8, OFFSET pass_plain8, OFFSET pass_enc8, OFFSET hint8
                  DW OFFSET web_name9, OFFSET pass_plain9, OFFSET pass_enc9, OFFSET hint9
                  DW OFFSET web_name10, OFFSET pass_plain10, OFFSET pass_enc10, OFFSET hint10
                  DW OFFSET web_name11, OFFSET pass_plain11, OFFSET pass_enc11, OFFSET hint11
                  DW OFFSET web_name12, OFFSET pass_plain12, OFFSET pass_enc12, OFFSET hint12
                  DW OFFSET web_name13, OFFSET pass_plain13, OFFSET pass_enc13, OFFSET hint13
                  DW OFFSET web_name14, OFFSET pass_plain14, OFFSET pass_enc14, OFFSET hint14
                  DW OFFSET web_name15, OFFSET pass_plain15, OFFSET pass_enc15, OFFSET hint15
                  DW OFFSET web_name16, OFFSET pass_plain16, OFFSET pass_enc16, OFFSET hint16
                  DW OFFSET web_name17, OFFSET pass_plain17, OFFSET pass_enc17, OFFSET hint17
                  DW OFFSET web_name18, OFFSET pass_plain18, OFFSET pass_enc18, OFFSET hint18
                  DW OFFSET web_name19, OFFSET pass_plain19, OFFSET pass_enc19, OFFSET hint19
                  DW OFFSET web_name20, OFFSET pass_plain20, OFFSET pass_enc20, OFFSET hint20


    entry_size DW 8 ; 4 pointers * 2 bytes
    total_entries DW 20

    ; Labels
    label_web   DB 13,10, 'WEBSITE: ', '$'
    label_enc   DB 13,10, 'ENCRYPTED PASSWORD: ', '$'
    label_hint  DB 13,10, 'HINT: ', '$'
    newline     DB 13,10, '$'

;---------STRENGTH CHECK DATA START HERE-----------------------
    pass1 db "PASs12$"          
    pass2 db "NoUpper", 0         
    pass3 db "StrongPass123!", 0       
    
    
    ; INPUT TAKE FOR MENU 5  
    PromptCheck DB 10,13, 'ENTER PASSWORD TO CHECK: $'
    PassBuffer  LABEL BYTE
    MaxLen      DB 32        
    ActualLen   DB ?         
    Password    DB 32 DUP(?)  
    ;DONE HERE  FOR MENU INPUT 5
    
    M_UPPER DB 10,13,'MISSING UPPER CASE$'
    M_LOWER DB 10,13,'MISSING LOWER CASE$'
    M_DIGIT DB 10,13,'MISSING DIGIT$'
    M_SPECIALC DB 10,13,'MISSING SPECIAL CHARACTER$'      
    STRONG DB 10,13,'STRONG PASSWORD$'


    S1 DB 0   ; UPPER FLAG
    S2 DB 0   ; LOWER FLAG
    S3 DB 0   ; DIGIT FLAG
    S4 DB 0   ; SPECIAL FLAG
;---------STRENGTH CHECK DATA ENDS HERE------------------------
;---------------------MENU DATA SECTION------------------------
INTRO DB '*************************PERSONAL PASSWORD MANAGER*****************************$',10,13
INTRO2 DB '         ****************   version 1.0.0      *************** $',10,13
                              

ENTER DB 10,10,13,'CHOOSE ACTION: $'

INFO DB 10,10,13,'KEYS         ACTION$'               

M1 DB 10,10,13,' 1    STORE A NEW PASSWORD$'
M2 DB 10,10,13,' 2    RETRIEVE ALL PASSWORDS$'
M3 DB 10,10,13,' 3    SEARCH PASSWORD BY ATTRIBUTE$'
M4 DB 10,10,13,' 4    EDIT AN EXISTING PASSWORD$'
M5 DB 10,10,13,' 5    DELETE AN EXISTING PASSWORD$'
M6 DB 10,10,13,' 6    ENCRYPT A PASSWORD$'
M7 DB 10,10,13,' 7    DECRYPT A PASSWORD$'
M8 DB 10,10,13,' 8    CHECK PASSWORD STRENGTH$'
 
INV_MSG DB 10,10,13,'Invalid input. Please try again.$'
;---------------------MENU DATA SECTION------------------------
;---------------------ENCRYPTION MACRO DATA--------------------
STR1 DB "AbC123*$" ;DUMMY PASS
ENCR_PASS1 DB 20 DUP(?) ; ENCRYPTED OUTPUT DESTINATION
DECR_PASS1 DB 20 DUP(?) ; DECRYPTED OUTPUT DESTINATION
KEY DB 'AT'
KEY_LEN DB 2
KEY_IDX DB 0
;---------------------ENCRYPTION MACRO DATA--------------------
;-----------------------ENCRYPTION MENU----6-------------------
ENCR_PROMPT DB 10,10,13, 'ENTER PASSWORD TO ENCRYPT: $'
ENCRYPTED_PROMPT DB 10,10,13, 'ENCRYPTED PASSWORD: $'
;---------------------ENCRYPTION MENU--------------------------
;-----------------------DECRYPTION MENU----7-------------------
DECR_PROMPT DB 10,10,13, 'ENTER PASSWORD TO DECRYPT: $'
DECRYPTED_PROMPT DB 10,10,13, 'DECRYPTED PASSWORD: $'
;---------------------DECRYPTION MENU------7--------------------
.CODE
MAIN PROC
;initialize DS
MOV AX,@DATA
MOV DS,AX

;INTRO MESSAGE, PRINTS ONCE
LEA DX,INTRO
MOV AH,9
INT 21H
     
LEA DX,INTRO2
MOV AH,9
INT 21H      
       

JMP MENU

MENU:  
    ; Menu printing
    CALL MENU_PRINT_OPTIONS   
    
    ;user input
    MOV AH,1
    INT 21H
    
    ; Compare input BLOCK
    CALL MENU_INPUT
    
    ;invalid input, jump to start:
    LEA DX, INV_MSG
    MOV AH, 9
    INT 21H
    JMP MENU   


STORE_NEW_PASS:
    CALL STORE_NEW_PASS_PROC
    JMP MENU


RETRIEVE_PASS:
    CALL RETRIEVE_PASS_PROC
    JMP MENU

EDIT_PASS:
    ; Code for editing password
    JMP MENU

DEL_PASS:
    ; Code for deleting password
    JMP MENU
    
SEARCH_PASS:
    JMP MENU
    
ENCR_PASS:
    lea dx, ENCR_PROMPT
    mov ah, 09h
    int 21h

    ; --- Get user input ---
    lea dx, PassBuffer
    mov ah, 0Ah
    int 21h

    ; --- Add '$' terminator to the input string ---
    lea bx, ActualLen
    xor ch, ch
    mov cl, [bx]
    lea bx, Password
    add bx, cx
    mov byte ptr [bx], '$'

    ; --- Set up parameters and call the new encryption procedure ---
    LEA SI, Password      ; Set SI to the source address
    LEA DI, ENCR_PASS1    ; Set DI to the destination address
    CALL EncryptPasswordPROC

    ; --- Print the encrypted result ---
    LEA DX, ENCRYPTED_PROMPT
    MOV AH, 9
    INT 21H

    LEA DX, ENCR_PASS1
    MOV AH, 9
    INT 21H

    JMP MENU


DECR_PASS:
    lea dx, DECR_PROMPT
    mov ah, 09h
    int 21h

    lea dx, PassBuffer
    mov ah, 0Ah
    int 21h

    lea bx, ActualLen
    xor ch, ch
    mov cl, [bx]
    lea bx, Password
    add bx, cx
    mov byte ptr [bx], '$'

    ; --- Set up parameters and call the new decryption procedure ---
    LEA SI, Password          ; Set SI to the source address (user input)
    LEA DI, DECR_PASS1        ; Set DI to the destination address (decrypted buffer)
    CALL DecryptPasswordPROC

    LEA DX, DECRYPTED_PROMPT
    MOV AH, 9
    INT 21H

    LEA DX, DECR_PASS1
    MOV AH, 9
    INT 21H

    JMP MENU
    

CHECK_STRENGTH:
    ; --- Prompt user to enter a password ---
    lea dx, PromptCheck
    mov ah, 09h          
    int 21h

    ; --- Read the password from the keyboard into the buffer ---
    lea dx, PassBuffer
    mov ah, 0Ah             
    int 21h

    lea bx, ActualLen       
    xor ch, ch              
    mov cl, [bx]            
    lea bx, Password        
    add bx, cx            
    mov byte ptr [bx], '$'  

  
    lea si, Password       
    call CheckPasswordStrength
    
    JMP MENU

;exit to DOS
MOV AX,4C00H
INT 21H

MAIN ENDP

;PROCEDURES:

MENU_PRINT_OPTIONS PROC ;USED IN MENU BLOCK FOR PRINTING THE OPTIONS
    PUSH AX
    PUSH DX

    LEA DX,INFO
    MOV AH,9 
    INT 21H                     

    LEA DX,M1
    MOV AH,9
    INT 21H    
    
    LEA DX,M2
    MOV AH,9
    INT 21H    
    
    LEA DX,M3
    MOV AH,9
    INT 21H    
    
    LEA DX,M4
    MOV AH,9
    INT 21H    
    
    LEA DX,M5
    MOV AH,9
    INT 21H
    
    LEA DX,M6
    MOV AH,9
    INT 21H
    
    LEA DX,M7
    MOV AH,9
    INT 21H
    
    LEA DX, M8
    MOV AH, 9
    INT 21H    
    
    LEA DX,ENTER
    MOV AH,9
    INT 21H    

    POP DX
    POP AX
    RET
MENU_PRINT_OPTIONS ENDP

MENU_INPUT PROC ;TAKES INPUT IN THE MENU
    PUSH AX
    PUSH DX
    CMP AL,'1'
    JE STORE_NEW_PASS
    CMP AL,'2'
    JE RETRIEVE_PASS
    CMP AL,'3'
    JE SEARCH_PASS
    CMP AL,'4'
    JE EDIT_PASS
    CMP AL,'5'
    JE DEL_PASS
    CMP AL,'6'
    JE ENCR_PASS
    CMP AL,'7'
    JE DECR_PASS
    CMP AL, '8'
    JE CHECK_STRENGTH

    POP DX
    POP AX
    RET  
CheckPasswordStrength PROC
    push ax
    push dx
    
    mov S1, 0
    mov S2, 0
    mov S3, 0
    mov S4, 0

checkS_loop:
    mov al, [si]
    cmp al, '$' 
    je check_flags

    ; uppercase A-Z
    cmp al, 'A'
    jl check_lower
    cmp al, 'Z'
    jg check_lower
    mov S1, 1
    jmp next_char

check_lower:
    cmp al, 'a'
    jl check_digit
    cmp al, 'z'
    jg check_digit
    mov S2, 1
    jmp next_char

check_digit:
    cmp al, '0'
    jl check_special
    cmp al, '9'
    jg check_special
    mov S3, 1
    jmp next_char

check_special:
    cmp al, '!'
    jb next_char
    cmp al, '/'
    jle mark_special
    cmp al, ':'
    jb next_char
    cmp al, '@'
    jle mark_special
    cmp al, '['
    jb next_char
    cmp al, '`'
    jle mark_special
    cmp al, '{'
    jb next_char
    cmp al, '~'
    jle mark_special
    jmp next_char

mark_special:
    mov S4, 1
    jmp next_char

next_char:
    inc si
    jmp checkS_loop

check_flags:
    mov bl, 1 ; Use BL as a "strong" flag. 1 = strong, 0 = not strong.

    cmp S1, 1
    je check_lower_flag
    lea dx, M_UPPER
    mov ah, 9
    int 21h
    mov bl, 0 

check_lower_flag:
    cmp S2, 1
    je check_digit_flag
    lea dx, M_LOWER
    mov ah, 9
    int 21h
    mov bl, 0 
    
check_digit_flag:
    cmp S3, 1
    je check_special_flag
    lea dx, M_DIGIT
    mov ah, 9
    int 21h
    mov bl, 0 

check_special_flag:
    cmp S4, 1
    je print_result
    lea dx, M_SPECIALC
    mov ah, 9
    int 21h
    mov bl, 0 

print_result:
    cmp bl, 1
    jne exit_proc

    lea dx, STRONG
    mov ah, 9
    int 21h

exit_proc:
    pop dx
    pop ax
    ret
CheckPasswordStrength ENDP
;; =====================================================================
; DYNAMIC PROCEDURE TO STORE A NEW PASSWORD (FOR MENU OPTION 1) - CORRECTED
; =====================================================================
STORE_NEW_PASS_PROC PROC
    PUSH AX
    PUSH BX
    PUSH CX
    PUSH DX
    PUSH SI
    PUSH DI

    ; --- storage is full ---
    MOV AX, PASS_COUNTER
    CMP AX, total_entries
    JGE STORAGE_FULL

    ; ---Calculate offset for the new entry in the credentials_table ---
    MOV BX, PASS_COUNTER
    MOV AX, entry_size
    MUL BX
    LEA SI, credentials_table
    ADD SI, AX         ; SI now points to the start of the pointers for the new slot

    ; --- 3. Get User Input
    ; --- Website ---
    LEA DX, PROMPT_WEB_NAME
    CALL PRINT_MSG
    CALL GET_USER_INPUT
    MOV DI, [SI]       ; Get pointer to web_nameX
    PUSH SI            ; Save the pointer to the credential slot
    LEA SI, Password   ; Source for copy is the input buffer
    CALL CopyString
    POP SI             ; Restore pointer to the credential slot

    ; --- Hint ---
    LEA DX, PROMPT_HINT
    CALL PRINT_MSG
    CALL GET_USER_INPUT
    MOV DI, [SI+6]     ; Get pointer to hintX
    PUSH SI
    LEA SI, Password
    CALL CopyString
    POP SI

    ; --- Password ---
    LEA DX, PROMPT_PASSWORD
    CALL PRINT_MSG
    CALL GET_USER_INPUT

    ; --- 4. Check Password Strength ---
    LEA BX, Password
    PUSH SI            ; Save credential pointer before call
    MOV SI, BX         ; Load password address for the checker
    CALL CheckPasswordStrength
    POP SI             ; Restore credential pointer
    CMP BL, 1
    JNE WEAK_PASSWORD

    ; --- 5. If Strong, Store and Encrypt Dynamically ---
    ; Copy plaintext password from buffer to its final destination
    MOV DI, [SI+2]     ; Get pointer to pass_plainX
    PUSH SI
    LEA SI, Password
    CALL CopyString
    POP SI

    ; Now, encrypt it by setting up SI and DI and calling the new procedure
    MOV BX, [SI+2]     ; Temporarily store source address (pass_plainX) in BX
    MOV DI, [SI+4]     ; Correctly load destination address (pass_encX) into DI
    MOV SI, BX         ; Now, load the source address into SI
    CALL EncryptPasswordPROC

    ; --- 6. Update Counter and Exit ---
    INC PASS_COUNTER
    LEA DX, MSG_PASS_STORED
    CALL PRINT_MSG
    JMP EXIT_STORE_PROC

STORAGE_FULL:
    LEA DX, MSG_STORAGE_FULL
    CALL PRINT_MSG
    JMP EXIT_STORE_PROC

WEAK_PASSWORD:
    LEA DX, MSG_WEAK_PASS
    CALL PRINT_MSG

EXIT_STORE_PROC:
    POP DI
    POP SI
    POP DX
    POP CX
    POP BX
    POP AX
    RET
STORE_NEW_PASS_PROC ENDP


; =====================================================================
; UTILITY PROCEDURES FOR STORE_NEW_PASS_PROC
; =====================================================================
PRINT_MSG PROC
    ; Prints message whose offset is in DX
    PUSH AX
    MOV AH, 9
    INT 21H
    POP AX
    RET
PRINT_MSG ENDP

GET_USER_INPUT PROC
    ; Gets user input into the global PassBuffer
    PUSH AX
    PUSH DX
    
    LEA DX, PassBuffer
    MOV AH, 0AH
    INT 21H

    ; Add '$' terminator
    LEA BX, ActualLen
    XOR CH, CH
    MOV CL, [BX]
    LEA BX, Password
    ADD BX, CX
    MOV BYTE PTR [BX], '$'
    
    POP DX
    POP AX
    RET
GET_USER_INPUT ENDP

CopyString PROC
    ; Copies a '$'-terminated string from SI to DI
    PUSH AX
    PUSH SI
    PUSH DI
COPY_LOOP:
    MOV AL, [SI]
    MOV [DI], AL
    CMP AL, '$'
    JE COPY_DONE
    INC SI
    INC DI
    JMP COPY_LOOP
COPY_DONE:
    POP DI
    POP SI
    POP AX
    RET
CopyString ENDP
; =====================================================================
; DYNAMIC ENCRYPTION PROCEDURE (Based on your original macro)
; Expects: SI = Source Address (Plaintext)
;          DI = Destination Address (Ciphertext Buffer)
; =====================================================================
EncryptPasswordPROC PROC
    ; --- Preserve Registers ---
    PUSH AX
    PUSH BX
    PUSH CX
    PUSH DX

ENC_CHECK_LOOP:
    MOV AL, [SI]
    CMP AL, '$'
    JE  ENC_EXIT

    CMP AL, 'A'
    JL  ENC_CHECK_SMALL
    CMP AL, 'Z'
    JG  ENC_CHECK_SMALL
    JMP ENC_CAPITAL_BLOCK

ENC_CHECK_SMALL:
    CMP AL, 'a'
    JL  ENC_CHECK_DIGIT
    CMP AL, 'z'
    JG  ENC_CHECK_DIGIT
    JMP ENC_SMALL_BLOCK

ENC_CHECK_DIGIT:
    CMP AL, '0'
    JL  ENC_OTHER_BLOCK
    CMP AL, '9'
    JG  ENC_OTHER_BLOCK
    JMP ENC_DIGIT_BLOCK

ENC_CAPITAL_BLOCK:
    MOV DL, AL
    MOV AL, KEY_IDX
    MOV AH, 0
    LEA BX, KEY
    ADD BX, AX
    MOV CL, [BX]
    SUB CL, 65
    ADD DL, CL
    CMP DL, 'Z'
    JBE ENC_SKIP_WRAP
    SUB DL, 26
ENC_SKIP_WRAP:
    MOV [DI], DL
    INC DI
    MOV AL, KEY_IDX
    INC AL
    CMP AL, KEY_LEN
    JB ENC_SKIP_RESET
    MOV AL, 0
ENC_SKIP_RESET:
    MOV KEY_IDX, AL
    JMP ENC_NEXT_CHAR

ENC_SMALL_BLOCK:
    MOV DL, AL
    MOV AL, KEY_IDX
    MOV AH, 0
    LEA BX, KEY
    ADD BX, AX
    MOV CL, [BX]
    SUB CL, 65
    ADD DL, CL
    CMP DL, 'z'
    JBE ENC_SKIP_WRAP1
    SUB DL, 26
ENC_SKIP_WRAP1:
    MOV [DI], DL
    INC DI
    MOV AL, KEY_IDX
    INC AL
    CMP AL, KEY_LEN
    JB ENC_SKIP_RESET1
    MOV AL, 0
ENC_SKIP_RESET1:
    MOV KEY_IDX, AL
    JMP ENC_NEXT_CHAR

ENC_DIGIT_BLOCK:
    MOV DL, AL
    sub DL, 2
    MOV [DI], DL
    INC DI
    JMP ENC_NEXT_CHAR

ENC_OTHER_BLOCK:
    MOV DL, AL
    sub DL, 2
    MOV [DI], DL
    INC DI
    JMP ENC_NEXT_CHAR

ENC_NEXT_CHAR:
    INC SI
    JMP ENC_CHECK_LOOP

ENC_EXIT:
    MOV BYTE PTR [DI], '$'
    MOV KEY_IDX, 0

    ; --- Restore Registers ---
    POP DX
    POP CX
    POP BX
    POP AX
    RET
EncryptPasswordPROC ENDP

; =====================================================================
; PROCEDURE TO RETRIEVE AND DISPLAY ALL PASSWORDS (FOR MENU OPTION 2)
; =====================================================================
RETRIEVE_PASS_PROC PROC
    PUSH AX
    PUSH BX
    PUSH CX
    PUSH DX
    PUSH SI

    MOV CX, PASS_COUNTER ; Set loop counter to the number of stored passwords
    JCXZ NO_PASSWORDS    ; If counter is zero, jump to the end

    XOR BX, BX           ; Initialize entry index to 0

PRINT_LOOP:
    ; --- Calculate offset ---
    MOV AX, entry_size
    MUL BX             ; AX = BX (current index) * 8
    LEA SI, credentials_table
    ADD SI, AX         ; SI now points to the pointers for the current entry

    ; --- Print Website Name ---
    LEA DX, label_web
    MOV AH, 9
    INT 21H
    MOV DX, [SI]       ; Get the pointer to web_nameX
    MOV AH, 9
    INT 21H



    ; --- Print Encrypted Password ---
    LEA DX, label_enc
    MOV AH, 9
    INT 21H
    MOV DX, [SI+4]     ; Get the pointer to pass_encX
    MOV AH, 9
    INT 21H

    ; --- Print Hint ---
    LEA DX, label_hint
    MOV AH, 9
    INT 21H
    MOV DX, [SI+6]     ; Get the pointer to hintX
    MOV AH, 9
    INT 21H

    ; --- Print a separator for readability ---
    LEA DX, newline
    MOV AH, 9
    INT 21H
    LEA DX, newline
    MOV AH, 9
    INT 21H

    INC BX             ; Move to the next entry index
    LOOP PRINT_LOOP    ; Decrement CX and loop if not zero

NO_PASSWORDS:
    POP SI
    POP DX
    POP CX
    POP BX
    POP AX
    RET
RETRIEVE_PASS_PROC ENDP 
DecryptPasswordPROC PROC
    ; --- Preserve Registers ---
    PUSH AX
    PUSH BX
    PUSH CX
    PUSH DX

D_CHECK_LOOP:
    MOV AL, [SI]
    CMP AL, '$'
    JE  D_EXIT

    CMP AL, 'A'
    JL  D_CHECK_SMALL
    CMP AL, 'Z'
    JG  D_CHECK_SMALL
    JMP D_CAPITAL_BLOCK

D_CHECK_SMALL:
    CMP AL, 'a'
    JL  D_CHECK_DIGIT
    CMP AL, 'z'
    JG  D_CHECK_DIGIT
    JMP D_SMALL_BLOCK

D_CHECK_DIGIT:
    CMP AL, '0'
    JL  D_OTHER_BLOCK
    CMP AL, '9'
    JG  D_OTHER_BLOCK
    JMP D_DIGIT_BLOCK

D_CAPITAL_BLOCK:
    MOV DL, AL
    MOV AL, KEY_IDX
    MOV AH, 0
    MOV BX, OFFSET KEY
    ADD BX, AX
    MOV CL, [BX]
    SUB CL, 65
    SUB DL, CL
    CMP DL, 'A'
    JAE D_SKIP_WRAP
    ADD DL, 26
D_SKIP_WRAP:
    MOV [DI], DL
    INC DI
    MOV AL, KEY_IDX
    INC AL
    CMP AL, KEY_LEN
    JB  D_SKIP_RESET
    MOV AL, 0
D_SKIP_RESET:
    MOV KEY_IDX, AL
    JMP D_NEXT_CHAR

D_SMALL_BLOCK:
    MOV DL, AL
    MOV AL, KEY_IDX
    MOV AH, 0
    MOV BX, OFFSET KEY
    ADD BX, AX
    MOV CL, [BX]
    SUB CL, 65
    SUB DL, CL
    CMP DL, 'a'
    JAE D_SKIP_WRAP1
    ADD DL, 26
D_SKIP_WRAP1:
    MOV [DI], DL
    INC DI
    MOV AL, KEY_IDX
    INC AL
    CMP AL, KEY_LEN
    JB  D_SKIP_RESET1
    MOV AL, 0
D_SKIP_RESET1:
    MOV KEY_IDX, AL
    JMP D_NEXT_CHAR

D_DIGIT_BLOCK:
    MOV DL, AL
    add DL, 2
    CMP DL, '0'
    JAE D_STORE_DIGIT
    ADD DL, 10
D_STORE_DIGIT:
    MOV [DI], DL
    INC DI
    JMP D_NEXT_CHAR

D_OTHER_BLOCK:
    MOV DL, AL
    add DL, 2
    MOV [DI], DL
    INC DI
    JMP D_NEXT_CHAR

D_NEXT_CHAR:
    INC SI
    JMP D_CHECK_LOOP

D_EXIT:
    MOV BYTE PTR [DI], '$'
    MOV KEY_IDX, 0

    ; --- Restore Registers ---
    POP DX
    POP CX
    POP BX
    POP AX
    RET
DecryptPasswordPROC ENDP
END MAIN