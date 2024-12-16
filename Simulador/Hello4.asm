jmp main

Msn0: string "PLAY AGAIN? Y OR N"

Letra: var #1		; Contem a letra que foi digitada

posNave: var #1			; Contem a posicao atual da Nave
posAntNave: var #1		; Contem a posicao anterior da Nave
dirNave: var #1

memPosNave1: var #1
memPosNave2: var #1
memPosNave3: var #1
memPosNave4: var #1
memPosNave5: var #1
memPosNave6: var #1

memNave1: var #1
memNave2: var #1
memNave3: var #1
memNave4: var #1
memNave5: var #1
memNave6: var #1

storeNave: var #1

posAlien: var #1		; Contem a posicao atual do Alien
posAntAlien: var #1		; Contem a posicao anterior do Alien


posTiro: var #1			; Contem a posicao atual do Tiro
posAntTiro: var #1		; Contem a posicao anterior do Tiro
FlagTiro: var #1		; Flag para ver se Atirou ou nao (Barra de Espaco!!)
countPos: var #1
countPos2: var #1


;--------------------------------
IncRand: var #1			; Incremento para circular na Tabela de nr. Randomicos
Rand : var #170			; Tabela de nr. Randomicos entre 0 - 7
	static Rand + #0, #3
    static Rand + #1, #3
    static Rand + #2, #3
    static Rand + #3, #3
    static Rand + #4, #3
    static Rand + #5, #3
    static Rand + #6, #3
    static Rand + #7, #3
    static Rand + #8, #3
    static Rand + #9, #3
    static Rand + #10, #3
    static Rand + #11, #3
    static Rand + #12, #3
    static Rand + #13, #3
    static Rand + #14, #3
    static Rand + #15, #3
    static Rand + #16, #3
    static Rand + #17, #1
    static Rand + #18, #1
    static Rand + #19, #1
    static Rand + #20, #1
    static Rand + #21, #1
    static Rand + #22, #1
    static Rand + #23, #1
    static Rand + #24, #1
    static Rand + #25, #1
    static Rand + #26, #1
    static Rand + #27, #1
    static Rand + #28, #1
    static Rand + #29, #1
    static Rand + #30, #1
    static Rand + #31, #1
    static Rand + #32, #1
    static Rand + #33, #1
    static Rand + #34, #2
    static Rand + #35, #2
    static Rand + #36, #2
    static Rand + #37, #2
    static Rand + #38, #2
    static Rand + #39, #2
    static Rand + #40, #2
    static Rand + #41, #2
    static Rand + #42, #2
    static Rand + #43, #2
    static Rand + #44, #2
    static Rand + #45, #2
    static Rand + #46, #2
    static Rand + #47, #2
    static Rand + #48, #2
    static Rand + #49, #2
    static Rand + #50, #2
    static Rand + #51, #2
    static Rand + #52, #2
    static Rand + #53, #2
    static Rand + #54, #2
    static Rand + #55, #2
    static Rand + #56, #2
    static Rand + #57, #2
    static Rand + #58, #2
    static Rand + #59, #2
    static Rand + #60, #2
    static Rand + #61, #2
    static Rand + #62, #2
    static Rand + #63, #2
    static Rand + #64, #2
    static Rand + #65, #2
    static Rand + #66, #2
    static Rand + #67, #2
    static Rand + #68, #1
    static Rand + #69, #1
    static Rand + #70, #1
    static Rand + #71, #1
    static Rand + #72, #1
    static Rand + #73, #1
    static Rand + #74, #1
    static Rand + #75, #1
    static Rand + #76, #1
    static Rand + #77, #1
    static Rand + #78, #1
    static Rand + #79, #1
    static Rand + #80, #1
    static Rand + #81, #1
    static Rand + #82, #1
    static Rand + #83, #1
    static Rand + #84, #1
    static Rand + #85, #3
    static Rand + #86, #3
    static Rand + #87, #3
    static Rand + #88, #3
    static Rand + #89, #3
    static Rand + #90, #3
    static Rand + #91, #3
    static Rand + #92, #3
    static Rand + #93, #3
    static Rand + #94, #3
    static Rand + #95, #3
    static Rand + #96, #3
    static Rand + #97, #3
    static Rand + #98, #3
    static Rand + #99, #3
    static Rand + #100, #3
    static Rand + #101, #3
    static Rand + #102, #0
    static Rand + #103, #0
    static Rand + #104, #0
    static Rand + #105, #0
    static Rand + #106, #0
    static Rand + #107, #0
    static Rand + #108, #0
    static Rand + #109, #0
    static Rand + #110, #0
    static Rand + #111, #0
    static Rand + #112, #0
    static Rand + #113, #0
    static Rand + #114, #0
    static Rand + #115, #0
    static Rand + #116, #0
    static Rand + #117, #0
    static Rand + #118, #0
    static Rand + #119, #3
    static Rand + #120, #3
    static Rand + #121, #3
    static Rand + #122, #3
    static Rand + #123, #3
    static Rand + #124, #3
    static Rand + #125, #3
    static Rand + #126, #3
    static Rand + #127, #3
    static Rand + #128, #3
    static Rand + #129, #3
    static Rand + #130, #3
    static Rand + #131, #3
    static Rand + #132, #3
    static Rand + #133, #3
    static Rand + #134, #3
    static Rand + #135, #3
    static Rand + #136, #0
    static Rand + #137, #0
    static Rand + #138, #0
    static Rand + #139, #0
    static Rand + #140, #0
    static Rand + #141, #0
    static Rand + #142, #0
    static Rand + #143, #0
    static Rand + #144, #0
    static Rand + #145, #0
    static Rand + #146, #0
    static Rand + #147, #0
    static Rand + #148, #0
    static Rand + #149, #0
    static Rand + #150, #0
    static Rand + #151, #0
    static Rand + #152, #0
    static Rand + #153, #2
    static Rand + #154, #2
    static Rand + #155, #2
    static Rand + #156, #2
    static Rand + #157, #2
    static Rand + #158, #2
    static Rand + #159, #2
    static Rand + #160, #2
    static Rand + #161, #2
    static Rand + #162, #2
    static Rand + #163, #2
    static Rand + #164, #2
    static Rand + #165, #2
    static Rand + #166, #2
    static Rand + #167, #2
    static Rand + #168, #2
    static Rand + #169, #2



;Codigo principal
main:
	call ApagaTela
	loadn R1, #tela2Linha0	; Endereco onde comeca a primeira linha do cenario!!
	loadn R2, #0			; cor branca!
	cmp R3, R4
	ceq ImprimeTela2   		;  Rotina de Impresao de Cenario na Tela Inicial

	call WaitForSpace		; Espera uma tecla
    
    call ApagaTela
	loadn R1, #tela1Linha0	; Endereco onde comeca a primeira linha do cenario!!
	loadn R2, #0			; cor branca!
	call ImprimeTela2   		;  Rotina de Impresao de Cenario na Tela Inteira

	call imprimeNaveAnt

	Loadn R0, #0
	store posNave, R0		; Zera Posicao Atual da Nave
	store posAntNave, R0	; Zera Posicao Anterior da Nave
	
	store countPos, R0      ; Inicializa o contador
	store countPos2, R0
	
	
	Loadn R0, #620
	store posAlien, R0		; Zera Posicao Atual do Alien
	store posAntAlien, R0	; Zera Posicao Anterior do Alien


	
	Loadn R0, #0			; Contador para os Mods	= 0
	loadn R2, #0			; Para verificar se (mod(c/10)==0

	Loop:

		loadn R1, #3			; if (mod(c/3)==0 // define velocidade
		mod R1, R0, R1
		cmp R1, R2		
		ceq MoveNave			; Chama Rotina de movimentacao da Nave

		loadn R1, #2			; if (mod(c/2)==0 // define velocidade
		mod R1, R0, R1
		cmp R1, R2				
		ceq UpdateNavePosition	; Chama Rotina de posicao da nave

		loadn R1, #1			; if (mod(c/5)==0 // define velocidade
		mod R1, R0, R1
		cmp R1, R2				
		ceq MoveAlien			; Chama Rotina de movimentacao do alien
	
		call Delay				; Mediador da velocidade
		inc R0 	;c++
		jmp Loop
	
;Funcoes
;--------------------------


imprimeNaveAnt:				; Lembra a posicao anterior da nave
	push R0
	push R5
	push R6

	load R0, posNave

	load R1, memNave1		; Imprime a nave a partir das informacoes armazenadas
	load R2, memPosNave1
	outchar R2, R1
	load R1, memNave2
	load R2, memPosNave2
	outchar R2, R1
	load R1, memNave3
	load R2, memPosNave3
	outchar R2, R1
	load R1, memNave4
	load R2, memPosNave4
	outchar R2, R1
	load R1, memNave5
	load R2, memPosNave5
	outchar R2, R1
	load R1, memNave6
	load R2, memPosNave6
	outchar R2, R1
	


	pop R6
	pop R5
	pop R0

	rts

;;


PosicaoAnterior:
	push R0
	push R1

	





MoveNave:
	push r0		; Protege os registradores
	push r1
	
	call MoveNave_RecalculaPos		; Recalcula Posicao da Nave

; So' Apaga e Redesenha se (pos != posAnt)
;	If (posNave != posAntNave)	{	
	load r0, posNave
	load r1, posAntNave
	
	pop r1
	pop r0
	rts

;--------------------------------
	

	
MoveNave_RecalculaPos:		; Recalcula posicao da Nave em funcao das Teclas pressionadas
	push R0
	push R1
	push R2
	push R3

	

	load R0, posNave
	
	inchar R1				; Le Teclado para controlar a Nave

	loadn R2, #'a'					; Se tecla for "a"
	cmp R1, R2
	jeq MoveNave_RecalculaPos_A		; Rotina nave para esquerda
	
	loadn R2, #'d'					; Se tecla for "d"
	cmp R1, R2
	jeq MoveNave_RecalculaPos_D		; Rotina nave para direita

	loadn R2, #'w'					; Se tecla for "w"
	cmp R1, R2
	jeq MoveNave_RecalculaPos_W		; Rotina nave para cima
		
	loadn R2, #'s'					; Se tecla for "s"
	cmp R1, R2
	jeq MoveNave_RecalculaPos_S		; Rotina nave para baixo
		

	loadn R2, #' '
	cmp R1, R2
	jeq MoveNave_RecalculaPos_Tiro
	
  MoveNave_RecalculaPos_Fim:	; Finaliza a rotina de recalculacao
	load R0, posNave
	store posNave, R0			; Guarda a posicao da nave
	store dirNave, R2			; Guarda a direcao da nave

	pop R3
	pop R2
	pop R1
	pop R0
	rts

  MoveNave_RecalculaPos_A:	; Move Nave para Esquerda
		call MoveNave_Apaga_S
		call MoveNave_Apaga_D
		call MoveNave_Apaga_W
		
        call MoveNave_Desenha_A	

        jmp MoveNave_RecalculaPos_Fim
	
  MoveNave_RecalculaPos_D:	; Move Nave para Direita
 		call MoveNave_Apaga_S
		call MoveNave_Apaga_A
		call MoveNave_Apaga_W	
	
		call MoveNave_Desenha_D

        jmp MoveNave_RecalculaPos_Fim


	
 MoveNave_RecalculaPos_W:	; Move Nave para Cima
		call MoveNave_Apaga_S
		call MoveNave_Apaga_D
		call MoveNave_Apaga_A		
		
		call MoveNave_Desenha_W

        jmp MoveNave_RecalculaPos_Fim

  MoveNave_RecalculaPos_S:	; Move Nave para Baixo
		call MoveNave_Apaga_D
		call MoveNave_Apaga_W
		call MoveNave_Apaga_A
		
		call MoveNave_Desenha_S

        jmp MoveNave_RecalculaPos_Fim
	
  MoveNave_RecalculaPos_Tiro:	
	loadn R1, #1			; Se Atirou:
	store FlagTiro, R1		; FlagTiro = 1
	store posTiro, R0		; posTiro = posNave
	jmp MoveNave_RecalculaPos_Fim	
;----------------------------------



MoveNave_Desenha_S:	; Desenha caractere da Nave
	; Mantem registradores depois da função
	push r1
	push r3
	push r4
	push r6

	load R6, posAntNave

	loadn r0, #0	; Reset em r0
	loadn r3, #1099
	store memNave1, r3
	loadn r1, #'e'
	store memPosNave1, r1
	outchar r1, r3  ; Desenha 1ro char
	loadn r1, #'f'
	store memPosNave2, r1
	loadn r4, #1100
	store memNave2, r4
	add r3, r0, r4
	outchar r1, r3  ; Desenha 2ro char
	loadn r1, #'a'
	store memPosNave3, r1
	loadn r4, #1138
	store memNave3, r4
	add r3, r0, r4
	outchar r1, r3 ; Desenha 3ro char
	loadn r1, #'b'
	store memPosNave4, r1
	loadn r4, #1139
	store memNave4, r4
	add r3, r0, r4
	outchar r1, r3  ;  Desenha 4ro char
	loadn r1, #'c'
	store memPosNave5, r1
	loadn r4, #1140
	store memNave5, r4
	add r3, r0, r4
	outchar r1, r3 ; Desenha 5ro char
	loadn r1, #'d'
	store memPosNave6, r1
	loadn r4, #1141
	store memNave6, r4
	add r3, r0, r4
	outchar r1, r3  ;  Desenha 6ro char
	loadn r0, #0	; Reset em r0
	; Mantem registradores depois da função
	pop r6
	pop r4
	pop r3
	pop r1

	rts
;---desenha

MoveNave_Apaga_S:	; apaga caractere da Nave
	; Mantem registradores depois da função
	push r1
	push r3
	push r4
	

	loadn r0, #0	; Reset em r0
	loadn r3, #1099
	loadn r1, #' '
	outchar r1, r3  ; apaga 1ro char
	loadn r1, #' '
	loadn r4, #1100
	add r3, r0, r4
	outchar r1, r3  ; apaga 2ro char
	loadn r1, #' '
	loadn r4, #1138
	add r3, r0, r4
	outchar r1, r3 ; apaga 3ro char
	loadn r1, #' '
	loadn r4, #1139
	add r3, r0, r4
	outchar r1, r3  ;  apaga 4ro char
	loadn r1, #' '
	loadn r4, #1140
	add r3, r0, r4
	outchar r1, r3 ; apaga 5ro char
	loadn r1, #' '
	loadn r4, #1141
	add r3, r0, r4
	outchar r1, r3  ;  apaga 6ro char
	loadn r0, #0	; Reset em r0
	; Mantem registradores depois da função

	; Mantem registradores depois da função
	pop r4
	pop r3
	pop r1

	rts
;---apaga


MoveNave_Desenha_D:	; Desenha caractere da Nave
	; Mantem registradores depois da função
	push r1
	push r3
	push r4
	push r6

	load R6, posAntNave

	loadn r0, #0	; Reset em r0
	loadn r3, #677
	store memNave1, r3
	loadn r1, #'g'
	store memPosNave1, r1
	outchar r1, r3  ; Desenha 1ro char
	loadn r1, #'h'
	store memPosNave2, r1
	loadn r4, #637
	store memNave2, r4
	add r3, r0, r4
	outchar r1, r3  ; Desenha 2ro char
	loadn r1, #'i'
	store memPosNave3, r1
	loadn r4, #597
	store memNave3, r4
	add r3, r0, r4
	outchar r1, r3 ; Desenha 3ro char
	loadn r1, #'j'
	store memPosNave4, r1
	loadn r4, #557
	store memNave4, r4
	add r3, r0, r4
	outchar r1, r3  ;  Desenha 4ro char
	loadn r1, #'k'
	store memPosNave5, r1
	loadn r4, #636
	store memNave5, r4
	add r3, r0, r4
	outchar r1, r3 ; Desenha 5ro char
	loadn r1, #'l'
	store memPosNave6, r1
	loadn r4, #596
	store memNave6, r4
	add r3, r0, r4
	outchar r1, r3  ;  Desenha 6ro char
	loadn r0, #0	; Reset em r0

	; Mantem registradores depois da função
	pop r6
	pop r4
	pop r3
	pop r1

	rts
;---desenha

MoveNave_Apaga_D:	; apaga caractere da Nave
	; Mantem registradores depois da função
	push r1
	push r3
	push r4

	loadn r0, #0	; Reset em r0
	loadn r3, #677
	loadn r1, #' '
	outchar r1, r3  ; apaga 1ro char
	loadn r1, #' '
	loadn r4, #637
	add r3, r0, r4
	outchar r1, r3  ; apaga 2ro char
	loadn r1, #' '
	loadn r4, #597
	add r3, r0, r4
	outchar r1, r3 ; apaga 3ro char
	loadn r1, #' '
	loadn r4, #557
	add r3, r0, r4
	outchar r1, r3  ;  apaga 4ro char
	loadn r1, #' '
	loadn r4, #636
	add r3, r0, r4
	outchar r1, r3 ; apaga 5ro char
	loadn r1, #' '
	loadn r4, #596
	add r3, r0, r4
	outchar r1, r3  ;  apaga 6ro char
	loadn r0, #0	; Reset em r0

	; Mantem registradores depois da função
	pop r4
	pop r3
	pop r1

	rts
;---apaga

MoveNave_Desenha_W:	; Desenha caractere da Nave
	; Mantem registradores depois da função
	push r1
	push r3
	push r4
	push r6

	load R6, posAntNave

	loadn r0, #0	; Reset em r0
	loadn r3, #58
	store memNave1, r3
	loadn r1, #'m'
	store memPosNave1, r1
	outchar r1, r3  ; Desenha 1ro char
	loadn r1, #'n'
	store memPosNave2, r1
	loadn r4, #59
	store memNave2, r4
	add r3, r0, r4
	outchar r1, r3  ; Desenha 2ro char
	loadn r1, #'o'
	store memPosNave3, r1
	loadn r4, #60
	store memNave3, r4
	add r3, r0, r4
	outchar r1, r3 ; Desenha 3ro char
	loadn r1, #'p'
	store memPosNave4, r1
	loadn r4, #61
	store memNave4, r4
	add r3, r0, r4
	outchar r1, r3  ;  Desenha 4ro char
	loadn r1, #'q'
	store memPosNave5, r1
	loadn r4, #99
	store memNave5, r4
	add r3, r0, r4
	outchar r1, r3 ; Desenha 5ro char
	loadn r1, #'r'
	store memPosNave6, r1
	loadn r4, #100
	store memNave6, r4
	add r3, r0, r4
	outchar r1, r3  ;  Desenha 6ro char
	loadn r0, #0	; Reset em r0

	; Mantem registradores depois da função
	pop r6
	pop r4
	pop r3
	pop r1

	rts
;---desenha

MoveNave_Apaga_W:	; apaga caractere da Nave
	; Mantem registradores depois da função
	push r1
	push r3
	push r4

	loadn r0, #0	; Reset em r0
	loadn r3, #58
	loadn r1, #' '
	outchar r1, r3  ; apaga 1ro char
	loadn r1, #' '
	loadn r4, #59
	add r3, r0, r4
	outchar r1, r3  ; apaga 2ro char
	loadn r1, #' '
	loadn r4, #60
	add r3, r0, r4
	outchar r1, r3 ; apaga 3ro char
	loadn r1, #' '
	loadn r4, #61
	add r3, r0, r4
	outchar r1, r3  ;  Desenha 4ro char
	loadn r1, #' '
	loadn r4, #99
	add r3, r0, r4
	outchar r1, r3 ; apaga 5ro char
	loadn r1, #' '
	loadn r4, #100
	add r3, r0, r4
	outchar r1, r3  ;  apaga 6ro char
	loadn r0, #0	; Reset em r0

	; Mantem registradores depois da função
	pop r4
	pop r3
	pop r1

	rts
;---apaga

MoveNave_Desenha_A: ; Desenha caractere da Nave
    ; Mantem registradores depois da função
    push r1
    push r3
    push r4
	push r6

	load R6, posAntNave

	loadn r0, #0	; Reset em r0
	loadn r3, #642
	store memNave1, r3
	loadn r1, #'s'
	store memPosNave1, r1
	outchar r1, r3  ; Desenha 1ro char
	loadn r1, #'t'
	store memPosNave2, r1
	loadn r4, #602
	store memNave2, r4
	add r3, r0, r4
	outchar r1, r3  ; Desenha 2ro char
	loadn r1, #'u'
	store memPosNave3, r1
	loadn r4, #562
	store memNave3, r4
	add r3, r0, r4
	outchar r1, r3 ; Desenha 3ro char
	loadn r1, #'v'
	store memPosNave4, r1
	loadn r4, #522
	store memNave4, r4
	add r3, r0, r4
	outchar r1, r3  ;  Desenha 4ro char
	loadn r1, #'w'
	store memPosNave5, r1
	loadn r4, #603
	store memNave5, r4
	add r3, r0, r4
	outchar r1, r3 ; Desenha 5ro char
	loadn r1, #'x'
	store memPosNave6, r1
	loadn r4, #563
	store memNave6, r4
	add r3, r0, r4
	outchar r1, r3  ;  Desenha 6ro char
	loadn r0, #0	; Reset em r0


    ; Mantem registradores depois da função
	pop r6
    pop r4
    pop r3
    pop r1


    rts




;----------------------------------


MoveNave_Apaga_A:   ; apaga caractere da Nave
    ; Mantem registradores depois da função
    push r1
    push r3
    push r4

	loadn r0, #0	; Reset em r0
    loadn r3, #642
    loadn r1, #' '
    outchar r1, r3  ; apaga 1ro char
    loadn r1, #' '
    loadn r4, #602
    add r3, r0, r4
    outchar r1, r3  ; apaga 2ro char
    loadn r1, #' '
    loadn r4, #562
    add r3, r0, r4
    outchar r1, r3 ; apaga 3ro char
    loadn r1, #' '
    loadn r4, #522
    add r3, r0, r4
    outchar r1, r3  ;  apaga 4ro char
    loadn r1, #' '
    loadn r4, #603
    add r3, r0, r4
    outchar r1, r3 ; apaga 5ro char
    loadn r1, #' '
    loadn r4, #563
    add r3, r0, r4
    outchar r1, r3  ;  apaga 6ro char
	loadn r0, #0	; Reset em r0



    ; Mantem registradores depois da função
    pop r4
    pop r3
    pop r1


    rts



;----------------------------------

UpdateNavePosition:		; Atualiza a posicao da nava para a flag de colisao
    push R0
    push R1
    push R2

    ; Salva posicao atual como posicao anterior
    load R0, posNave
    store posAntNave, R0

    ; Atualiza posicao atual basiada na direcao
	load R1, dirNave
    loadn R2, #'a'
    cmp R1, R2
    jeq UpdateNavePosition_Left

    loadn R2, #'d'
    cmp R1, R2
    jeq UpdateNavePosition_Right

    loadn R2, #'w'
    cmp R1, R2
    jeq UpdateNavePosition_Up

    loadn R2, #'s'
    cmp R1, R2
    jeq UpdateNavePosition_Down

    jmp UpdateNavePosition_End

UpdateNavePosition_Left:
	loadn R0, #604				; Posicao na esquerda
    store posNave, R0
	store storeNave, R0
    jmp UpdateNavePosition_End

UpdateNavePosition_Right:
    loadn R0, #636				; Posicao na direita
    store posNave, R0
	store storeNave, R0
    jmp UpdateNavePosition_End

UpdateNavePosition_Up:
    loadn R0, #140				; Posicao em cima
    store posNave, R0
	store storeNave, R0
    jmp UpdateNavePosition_End

UpdateNavePosition_Down:
    loadn R0, #1100				; Posicao em baixo
    store posNave, R0
	store storeNave, R0

UpdateNavePosition_End:
    pop R2
    pop R1
    pop R0
    rts



;;
MoveAlien:
	push r0
	push r1
	push r2
	push r3
	
	call MoveAlien_RecalculaPos
	
	load r2, countPos	; Inicia o contador
	inc r2				; Incrementa o contador
	store countPos, r2	; Gurada o valor do contador
	loadn r3, #17		; Limite do contador
	cmp r2, r3			; if (contador == limite), termina
	jeq MoveAlien_fim_count	
; So Apaga e Redezenha se (pos != posAnt)
;	If (pos != posAnt)	{
	load r0, posAlien
	load r1, posAntAlien
	cmp r0, r1
	jeq MoveAlien_Skip		
		call MoveAlien_Apaga
		call MoveAlien_Desenha		;}
  MoveAlien_Skip:
	
	pop r3
	pop r2
	pop r1
	pop r0
	rts
		
; ----------------------------

MoveAlien_fim_count:
loadn r2, #0		; Reinicia o contador

pop r3
pop r2
rts
		
MoveAlien_Apaga:
	push R0
	push R1
	push R2
	push R3
	push R4
	push R5

	load R0, posAntAlien	; R0 == posAnt
	load R1, posAntNave		; R1 = posAnt
	cmp r0, r1
	jne MoveAlien_Apaga_Skip
		loadn r5, #' '		; Se o Tiro passa sobre a Nave, apaga com um X, senao apaga com o cenario 
		jmp MoveAlien_Apaga_Fim

  MoveAlien_Apaga_Skip:	
  
	; --> R2 = Tela1Linha0 + posAnt + posAnt/40  ; tem que somar posAnt/40 no ponteiro pois as linas da string terminam com /0 !!
	loadn R1, #tela0Linha0	; Endereco onde comeca a primeira linha do cenario!!
	add R2, R1, r0	; R2 = Tela1Linha0 + posAnt
	loadn R4, #40
	div R3, R0, R4	; R3 = posAnt/40
	add R2, R2, R3	; R2 = Tela1Linha0 + posAnt + posAnt/40
	
	loadi R5, R2	; R5 = Char (Tela(posAnt))
  
  MoveAlien_Apaga_Fim:	
	outchar R5, R0	; Apaga o Obj na tela com o Char correspondente na memoria do cenario
	loadn r2, #0

	pop R5
	pop R4
	pop R3
	pop R2
	pop R1
	pop R0
	rts
;----------------------------------	
; sorteia nr. randomico entre 0 - 3
;					switch rand
;						case 0 : posNova = posAnt -1
;						case 1 : posNova = posAnt -40
;						case 2 : posNova = posAnt +1
;						case 3 : posNova = posAnt +40

	
MoveAlien_RecalculaPos:
	push R0
	push R1
	push R2
	push R3
	push R4
	push R5
	
	load R0, posAlien
    load R4, posNave
	load R5, storeNave

    cmp R0, R4                         ;flag para colisao alien/nave
    jeq MoveTiro_RecalculaPos_Boom

	cmp R0, R5
	jeq MoveTiro_RecalculaPos_Boom
	
; sorteia nr. randomico entre 0 - 4
	loadn R2, #Rand 	; declara ponteiro para tabela rand na memoria!
	load R1, IncRand	; Pega Incremento da tabela Rand
	add r2, r2, r1		; Soma Incremento ao inicio da tabela Rand
						; R2 = Rand + IncRand
	loadi R3, R2 		; busca nr. randomico da memoria em R3
						; R3 = Rand(IncRand)				
	inc R1			; Incremento ++
	loadn r2, #170
	cmp r1, r2			; Compara com o Final da Tabela e re-estarta em 0
	jne MoveAlien_RecalculaPos_Skip
		loadn r1, #0		; re-estarta a Tabela Rand em 0
  MoveAlien_RecalculaPos_Skip:
	store IncRand, r1	; Salva incremento ++



; Switch Rand (r3)
 ; Case 0 : posAlien = posAlien -1
	loadn r2, #0
	cmp r3, r2	; Se Rand = 0
	jne MoveAlien_RecalculaPos_Case1
	loadn r1, #1
	sub r0, r0, r1
	jmp MoveAlien_RecalculaPos_FimSwitch	; Break do Switch


 ; Case 1 : posAlien = posAlien -40
   MoveAlien_RecalculaPos_Case1:
	loadn r2, #1
	cmp r3, r2	; Se Rand = 1
	jne MoveAlien_RecalculaPos_Case2
	loadn r1, #40
	sub r0, r0, r1
	jmp MoveAlien_RecalculaPos_FimSwitch	; Break do Switch

 ; Case 2 : posAlien = posAlien  +1
   MoveAlien_RecalculaPos_Case2:
	loadn r2, #2	; Se Rand = 2
	cmp r3, r2
	jne MoveAlien_RecalculaPos_Case3
	loadn r1, #1
	add r0, r0, r1
	jmp MoveAlien_RecalculaPos_FimSwitch	; Break do Switch

 ; Case 3 : posAlien = posAlien  +40
   MoveAlien_RecalculaPos_Case3:
	loadn r2, #3	; Se Rand = 3
	cmp r3, r2
	jne MoveAlien_RecalculaPos_FimSwitch
	loadn r1, #40
	add r0, r0, r1
	jmp MoveAlien_RecalculaPos_FimSwitch	; Break do Switch

 

 ; Fim Switch:
  MoveAlien_RecalculaPos_FimSwitch:	
	store posAlien, R0	; Grava a posicao alterada na memoria

	pop R5
	pop R4
	pop R3
	pop R2
	pop R1
	pop R0
	rts


;----------------------------------
MoveAlien_Desenha:
	push R0
	push R1
	

	Loadn R1, #'@'	; Alien
	load R0, posAlien
	outchar R1, R0
	store posAntAlien, R0	; Guarda posicao do alien
	
	pop R1
	pop R0
	rts

;----------------------------------
;----------------------------------
;--------------------------


	
MoveTiro_RecalculaPos_Boom:	
	; Limpa a Tela !!
  	loadn R1, #tela0Linha0	; Endereco onde comeca a primeira linha do cenario!!
	loadn R2, #0  			; cor branca!
	call ImprimeTela   		;  Rotina de Impresao de Cenario na Tela Inteira
	call ApagaTela

  
	;imprime quer jogar novamente
	loadn R4, #0
	store IncRand, R4
	loadn r0, #530
	loadn r1, #Msn0
	loadn r2, #0
	call ImprimeStr

	

	MoveTiro_RecalculaPos_Boom_Loop:	
	call DigLetra
	loadn r0, #'n'
	load r1, Letra
	cmp r0, r1				; tecla == 'n' ?
	jeq MoveTiro_RecalculaPos_Boom_FimJogo	; tecla e' 'n'
	
	loadn r0, #'y'
	cmp r0, r1				; tecla == 'y' ?
	jne MoveTiro_RecalculaPos_Boom_Loop	; tecla nao e' 'y'
	
	
	
	; Se quiser jogar novamente...
	call ApagaTela
	
	pop r2
	pop r1
	pop r0

	pop r0	; Da um Pop a mais para acertar o ponteiro da pilha, pois nao vai dar o RTS !!
	jmp main

 MoveTiro_RecalculaPos_Boom_FimJogo:
	call ApagaTela
	halt


;----------------------------------

WaitForSpace:
    inchar r3            ; Lê entrada do teclado
    cmp r3, r4           ; Compara a tecla pressionada com 255
    jeq WaitForSpace     ; Continua esperando se nada for digitado

    

;********************************************************
;                       DELAY
;********************************************************		


Delay:
						;Utiliza Push e Pop para nao afetar os Ristradores do programa principal
	Push R0
	Push R1
	
	Loadn R1, #100  ; a
   Delay_volta2:				;Quebrou o contador acima em duas partes (dois loops de decremento)
	Loadn R0, #5000	; b
   Delay_volta: 
	Dec R0					; (4*a + 6)b // 1000000  == 1 seg  em um clock de 1MHz
	JNZ Delay_volta	
	Dec R1
	JNZ Delay_volta2
	
	Pop R1
	Pop R0
	
	RTS							;return

;-------------------------------


;********************************************************
;                       IMPRIME TELA
;********************************************************	

ImprimeTela: 	;  Rotina de Impresao de Cenario na Tela Inteira
		;  r1 = endereco onde comeca a primeira linha do Cenario
		;  r2 = cor do Cenario para ser impresso

	push r0	; protege o r3 na pilha para ser usado na subrotina
	push r1	; protege o r1 na pilha para preservar seu valor
	push r2	; protege o r1 na pilha para preservar seu valor
	push r3	; protege o r3 na pilha para ser usado na subrotina
	push r4	; protege o r4 na pilha para ser usado na subrotina
	push r5	; protege o r4 na pilha para ser usado na subrotina

	loadn R0, #0  	; posicao inicial tem que ser o comeco da tela!
	loadn R3, #40  	; Incremento da posicao da tela!
	loadn R4, #41  	; incremento do ponteiro das linhas da tela
	loadn R5, #1200 ; Limite da tela!
	
   ImprimeTela_Loop:
		call ImprimeStr
		add r0, r0, r3  	; incrementaposicao para a segunda linha na tela -->  r0 = R0 + 40
		add r1, r1, r4  	; incrementa o ponteiro para o comeco da proxima linha na memoria (40 + 1 porcausa do /0 !!) --> r1 = r1 + 41
		cmp r0, r5			; Compara r0 com 1200
		jne ImprimeTela_Loop	; Enquanto r0 < 1200

	pop r5	; Resgata os valores dos registradores utilizados na Subrotina da Pilha
	pop r4
	pop r3
	pop r2
	pop r1
	pop r0
	rts
				
;---------------------

;---------------------------	
;********************************************************
;                   IMPRIME STRING
;********************************************************
	
ImprimeStr:	;  Rotina de Impresao de Mensagens:    r0 = Posicao da tela que o primeiro caractere da mensagem sera' impresso;  r1 = endereco onde comeca a mensagem; r2 = cor da mensagem.   Obs: a mensagem sera' impressa ate' encontrar "/0"
	push r0	; protege o r0 na pilha para preservar seu valor
	push r1	; protege o r1 na pilha para preservar seu valor
	push r2	; protege o r1 na pilha para preservar seu valor
	push r3	; protege o r3 na pilha para ser usado na subrotina
	push r4	; protege o r4 na pilha para ser usado na subrotina
	
	loadn r3, #'\0'	; Criterio de parada

   ImprimeStr_Loop:	
		loadi r4, r1
		cmp r4, r3		; If (Char == \0)  vai Embora
		jeq ImprimeStr_Sai
		add r4, r2, r4	; Soma a Cor
		outchar r4, r0	; Imprime o caractere na tela
		inc r0			; Incrementa a posicao na tela
		inc r1			; Incrementa o ponteiro da String
		jmp ImprimeStr_Loop
	
   ImprimeStr_Sai:	
	pop r4	; Resgata os valores dos registradores utilizados na Subrotina da Pilha
	pop r3
	pop r2
	pop r1
	pop r0
	rts
	
;------------------------	
	

;-------------------------------


;********************************************************
;                       IMPRIME TELA2
;********************************************************	

ImprimeTela2: 	;  Rotina de Impresao de Cenario na Tela Inteira
		;  r1 = endereco onde comeca a primeira linha do Cenario
		;  r2 = cor do Cenario para ser impresso

	push r0	; protege o r3 na pilha para ser usado na subrotina
	push r1	; protege o r1 na pilha para preservar seu valor
	push r2	; protege o r1 na pilha para preservar seu valor
	push r3	; protege o r3 na pilha para ser usado na subrotina
	push r4	; protege o r4 na pilha para ser usado na subrotina
	push r5	; protege o r5 na pilha para ser usado na subrotina
	push r6	; protege o r6 na pilha para ser usado na subrotina

	loadn R0, #0  	; posicao inicial tem que ser o comeco da tela!
	loadn R3, #40  	; Incremento da posicao da tela!
	loadn R4, #41  	; incremento do ponteiro das linhas da tela
	loadn R5, #1200 ; Limite da tela!
	loadn R6, #tela0Linha0	; Endereco onde comeca a primeira linha do cenario!!
	
   ImprimeTela2_Loop:
		call ImprimeStr2
		add r0, r0, r3  	; incrementaposicao para a segunda linha na tela -->  r0 = R0 + 40
		add r1, r1, r4  	; incrementa o ponteiro para o comeco da proxima linha na memoria (40 + 1 porcausa do /0 !!) --> r1 = r1 + 41
		add r6, r6, r4  	; incrementa o ponteiro para o comeco da proxima linha na memoria (40 + 1 porcausa do /0 !!) --> r1 = r1 + 41
		cmp r0, r5			; Compara r0 com 1200
		jne ImprimeTela2_Loop	; Enquanto r0 < 1200

	pop r6	; Resgata os valores dos registradores utilizados na Subrotina da Pilha
	pop r5
	pop r4
	pop r3
	pop r2
	pop r1
	pop r0
	rts
				
;---------------------

;---------------------------	
;********************************************************
;                   IMPRIME STRING2
;********************************************************
	
ImprimeStr2:	;  Rotina de Impresao de Mensagens:    r0 = Posicao da tela que o primeiro caractere da mensagem sera' impresso;  r1 = endereco onde comeca a mensagem; r2 = cor da mensagem.   Obs: a mensagem sera' impressa ate' encontrar "/0"
	push r0	; protege o r0 na pilha para preservar seu valor
	push r1	; protege o r1 na pilha para preservar seu valor
	push r2	; protege o r1 na pilha para preservar seu valor
	push r3	; protege o r3 na pilha para ser usado na subrotina
	push r4	; protege o r4 na pilha para ser usado na subrotina
	push r5	; protege o r5 na pilha para ser usado na subrotina
	push r6	; protege o r6 na pilha para ser usado na subrotina
	
	
	loadn r3, #'\0'	; Criterio de parada
	loadn r5, #' '	; Espaco em Branco

   ImprimeStr2_Loop:	
		loadi r4, r1
		cmp r4, r3		; If (Char == \0)  vai Embora
		jeq ImprimeStr2_Sai
		cmp r4, r5		; If (Char == ' ')  vai Pula outchar do espaco para na apagar outros caracteres
		jeq ImprimeStr2_Skip
		add r4, r2, r4	; Soma a Cor
		outchar r4, r0	; Imprime o caractere na tela
   		storei r6, r4
   ImprimeStr2_Skip:
		inc r0			; Incrementa a posicao na tela
		inc r1			; Incrementa o ponteiro da String
		inc r6
		jmp ImprimeStr2_Loop
	
   ImprimeStr2_Sai:	
	pop r6	; Resgata os valores dos registradores utilizados na Subrotina da Pilha
	pop r5
	pop r4
	pop r3
	pop r2
	pop r1
	pop r0
	rts
	

;------------------------		
;********************************************************
;                   DIGITE UMA LETRA
;********************************************************

DigLetra:	; Espera que uma tecla seja digitada e salva na variavel global "Letra"
	push r0
	push r1
	loadn r1, #255	; Se nao digitar nada vem 255

   DigLetra_Loop:
		inchar r0			; Le o teclado, se nada for digitado = 255
		cmp r0, r1			;compara r0 com 255
		jeq DigLetra_Loop	; Fica lendo ate' que digite uma tecla valida

	store Letra, r0			; Salva a tecla na variavel global "Letra"

	pop r1
	pop r0
	rts



;----------------
	
;********************************************************
;                       APAGA TELA
;********************************************************
ApagaTela:
	push r0
	push r1
	
	loadn r0, #1200		; apaga as 1200 posicoes da Tela
	loadn r1, #' '		; com "espaco"
	
	   ApagaTela_Loop:	;;label for(r0=1200;r3>0;r3--)
		dec r0
		outchar r1, r0
		jnz ApagaTela_Loop
 
	pop r1
	pop r0
	rts	
	
;------------------------	
; Declara uma tela vazia para ser preenchida em tempo de execussao:

tela0Linha0  : string "                                        "
tela0Linha1  : string "                                        "
tela0Linha2  : string "                                        "
tela0Linha3  : string "                                        "
tela0Linha4  : string "                                        "
tela0Linha5  : string "                                        "
tela0Linha6  : string "                                        "
tela0Linha7  : string "                                        "
tela0Linha8  : string "                                        "
tela0Linha9  : string "                                        "
tela0Linha10 : string "                                        "
tela0Linha11 : string "                                        "
tela0Linha12 : string "                                        "
tela0Linha13 : string "                                        "
tela0Linha14 : string "                                        "
tela0Linha15 : string "                                        "
tela0Linha16 : string "                                        "
tela0Linha17 : string "                                        "
tela0Linha18 : string "                                        "
tela0Linha19 : string "                                        "
tela0Linha20 : string "                                        "
tela0Linha21 : string "                                        "
tela0Linha22 : string "                                        "
tela0Linha23 : string "                                        "
tela0Linha24 : string "                                        "
tela0Linha25 : string "                                        "
tela0Linha26 : string "                                        "
tela0Linha27 : string "                                        "
tela0Linha28 : string "                                        "
tela0Linha29 : string "                                        "	

; Declara e preenche tela linha por linha (40 caracteres):
tela1Linha0  : string "&))))))))))))))))))))))))))))))))))))))%"
tela1Linha1  : string " =(                                  !; "
tela1Linha2  : string " H &                                % F "
tela1Linha3  : string " H  &))))))))))))))))))))))))))))))%  F "
tela1Linha4  : string " H   =(                          !;   F "
tela1Linha5  : string " H   H &                        % F   F "
tela1Linha6  : string " H   H  &))))))))))))))))))))))%  F   F "
tela1Linha7  : string " H   H   =(                  !;   F   F "
tela1Linha8  : string " H   H   H &                % F   F   F "
tela1Linha9  : string " H   H   H  &))))))))))))))%  F   F   F "
tela1Linha10 : string " H   H   H   $(          !#   F   F   F "
tela1Linha11 : string " H   H   H   H &))))))))% F   F   F   F "
tela1Linha12 : string " H   H   H   H  &      %  F   F   F   F "
tela1Linha13 : string " H   H   H   H  H$(  !#F  F   F   F   F "
tela1Linha14 : string " H   H   H   H  H  -,  F  F   F   F   F "
tela1Linha15 : string " H   H   H   H  H  +*  F  F   F   F   F "
tela1Linha16 : string " H   H   H   H  H!#  $(F  F   F   F   F "
tela1Linha17 : string " H   H   H   H  %      &  F   F   F   F "
tela1Linha18 : string " H   H   H   H %////////& F   F   F   F "
tela1Linha19 : string " H   H   H   !#          $(   F   F   F "
tela1Linha20 : string " H   H   H  %//////////////&  F   F   F "
tela1Linha21 : string " H   H   H %                & F   F   F "
tela1Linha22 : string " H   H   >#                  $<   F   F "
tela1Linha23 : string " H   H  %//////////////////////&  F   F "
tela1Linha24 : string " H   H %                        & F   F "
tela1Linha25 : string " H   >#                          $<   F "
tela1Linha26 : string " H  %//////////////////////////////&  F "
tela1Linha27 : string " H %                                & F "
tela1Linha28 : string " >#                                  $< "
tela1Linha29 : string "%//////////////////////////////////////&"

; Declara e preenche tela linha por linha (40 caracteres):
tela2Linha0  : string "                                        "
tela2Linha1  : string "                                        "
tela2Linha2  : string "         @                       @      "
tela2Linha3  : string "                                        "
tela2Linha4  : string "                     @                  "
tela2Linha5  : string "       B                           B    "
tela2Linha6  : string "                    B                   "
tela2Linha7  : string "             B                B         "
tela2Linha8  : string "                         B              "
tela2Linha9  : string "B                                      B"
tela2Linha10 : string "       @                                "
tela2Linha11 : string "                STELLAR X               "
tela2Linha12 : string "                                        "
tela2Linha13 : string "                                        "
tela2Linha14 : string "             ~ PRESS SPACE |            "
tela2Linha15 : string "                                        "
tela2Linha16 : string "                                        "
tela2Linha17 : string "                                        "
tela2Linha18 : string "                  B                     "
tela2Linha19 : string "                                        "
tela2Linha20 : string "   B                           B        "
tela2Linha21 : string "                      [                 "
tela2Linha22 : string "B         [                            B"
tela2Linha23 : string "                                   [    "
tela2Linha24 : string "      B                   B             "
tela2Linha25 : string "              B                 B       "
tela2Linha26 : string "                 [                      "
tela2Linha27 : string "        B              B           B    "
tela2Linha28 : string "                                        "
tela2Linha29 : string "    [             @            B        "