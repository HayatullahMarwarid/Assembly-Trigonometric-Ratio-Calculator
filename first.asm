
section .data

			PrintSalamForUser: db "Asalamu Aliakum", 10										; simple intilized verible
			LentghOfSalam: equ $ - PrintSalamForUser										; lentgh of the salam 

			SelectionOfChoice: db "Select your choice sin==1 cos==2 tan==3", 10				; select choice message
			ChoiceMlen: equ $ - SelectionOfChoice											; length of the choice message

			MessageForError: db "program ended",10											; message for input error
			ErrorMlen: equ $ - MessageForError												; lenght of the error Message

			MessageForCorect: db "your input is corect",10                                 	; message for perform_function
    		CorectMlen: equ $ - MessageForError                                             ; lenght of the perform_function verible

			MessageForCorect2: db "your input is corect2",10                           		; message for perform_function2
        	CorectMlen2: equ $ - MessageForError                            	            ; lenght of the perform_function2 verible

			MessageForCorect3: db "your input is corect3",10                                ; message for perform_function3
        	CorectMlen3: equ $ - MessageForError                                            ; lenght of the perform_function3 verible

	 		newline: db 10, 0 																; new line after program terminiation


section .bss

	 		input: resb 1 																	; take input from user which must have bit reserve
	
 
section .text

	global _start

			_start:

												;print salam message

				mov		rax, 1																; sys_write system call opcode
				mov		rdi, 1																; stdout system call opcode
				mov		rsi, PrintSalamForUser												; this is the actual verible
				mov     rdx, LentghOfSalam													; this is the length of the verible
				syscall																		; call to kernal


												;print choice message

				mov		rax, 1																; sys_write system call opcode
				mov		rdi, 1																; stdout system call opcode
				mov		rsi, SelectionOfChoice												; message to write
				mov		rdx, ChoiceMlen														; message length
				syscall																		; call to kernal		


												;get input from user

				mov		rax, 0																; sys_read system call opcode
				mov		rbx, 0																; stdin system call opcode
				mov		rsi, input															; pointer to input
				mov		rdx, 1																; lenght of taken input
				syscall																		; call to kernal
			
			



												;check the condition



				cmp byte [input], '1'														; compare the user input with 1
				je perform_function															; if input is corect then run this function

				cmp byte [input], '2'														; compare the user input with 2
				je perform_function2														; if input is corect then run this function		

				cmp byte [input], '3'														; compare the user input with 3
				je perform_function3														; if input is corect then run this function

				jmp exit_program															; if user input is incorect then run this function




			perform_function:		

	 			mov     rax, 1   															; sys_write system call opcode
                mov     rdi, 1                                                  			; stdout system call opcode
                mov     rsi, MessageForCorect                                    			; Message to write
                mov     rdx, CorectMlen                                           			; Message length
                syscall                                                        				; system call to kernal
				jmp	 print_newline															; print new line after execuation the function




			perform_function2:

				mov		rax, 1																; sys_write system call opcode
				mov		rdi, 1																; stdout system call opcode
				mov		rsi, MessageForCorect2												; Message to write
				mov		rdx, CorectMlen2													; Message length
				syscall																		; call to kernal
			 	jmp	print_newline															; print new line after execuation the function




			perform_function3:

                mov		rax, 1                                                      		; sys_write system call opcode
                mov		rdi, 1                                                      		; stdout system call opcode
                mov		rsi, MessageForCorect3                                      		; Message to write
                mov		rdx, CorectMlen3                                            		; Message length
                syscall																		; call to kernal
				jmp	print_newline															; print new line after execuation the function




			exit_program:

				mov		rax, 1																; sys_write system call opcode
				mov		rdi, 1																; stdout system call opcode
				mov		rsi, MessageForError												; Message to write
				mov		rdx,ErrorMlen														; Message length
				syscall																		; call to kernal
						



			print_newline:	
			
			    mov		rax, 1  															; sys_write system call opcode
			    mov 	rdi, 1  															; stdout system call opcode
			    mov 	rsi, newline 														; Message to write
			    mov 	rdx, 1																; Message lenght
			    syscall 																	; call to kernal




												;system exit

				mov		rax, 60																; sys_exit system call opcode
				mov     rdi, 0																; error code
				syscall 																	; call to kernal
