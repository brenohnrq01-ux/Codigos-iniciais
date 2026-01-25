// ----------------------------------------
// Bigode Paint Ball
// ----------------------------------------

SetWindowTitle("Bigode Paint Ball")
SetClearColor(18,18,24)

// --- Configuração de tela ---
SetWindowAllowResize(2)
SetWindowSize(GetDeviceWidth(), GetDeviceHeight(), 1)
SetVirtualResolution(1920,1080)
SetSyncRate(60,0)
SetScissor(0,0,0,0)

global full as integer
full = 1

// ---- ESTADO DO JOGO ----
estado = 0 
screenW = 1920
screenH = 1080

// ---- IMAGENS ----
imgBG     = LoadImage("fundo.png")
imgFloor  = LoadImage("chao.png")
imgPlayer = LoadImage("player.png")
imgPlayerJump = LoadImage("player_jump.png")
imgRun1 = LoadImage("run1.png")
imgRun2 = LoadImage("run2.png")
imgRun3 = LoadImage("run3.png")
imgRun4 = LoadImage("run4.png")
imgCoin   = LoadImage("coin.png")
imgEnemy  = LoadImage("enemy.png")
imgInicio = LoadImage("inicio.png")
imgLife  = LoadImage("life.png")


// ---- SON ----
sndGameOver   = LoadSound("gameover.wav")
sndMoeda      = LoadSound("moeda.wav")
sndPulo       = LoadSound("pulo.wav")
sndDamage = LoadSound("damage.wav")
sndLife  = LoadSound("life.wav")
bgMusic = LoadMusic("mfundo.mp3")

// ---- SPRITES FUNDO/CHÃO ----
bgID    = CreateSprite(imgBG)
floorID = CreateSprite(imgFloor)
SetSpriteSize(bgID, screenW, screenH)
SetSpritePosition(bgID, 0, 0)
floorHeight = 120
SetSpriteSize(floorID, screenW, floorHeight)
SetSpritePosition(floorID, 0, screenH - floorHeight)
SetSpriteDepth(bgID, 100)
SetSpriteDepth(floorID, 90)

// ---- SPRITE MENU ----
inicioID = CreateSprite(imgInicio)
SetSpriteSize(inicioID, screenW, screenH)
SetSpritePosition(inicioID, 0, 0)
SetSpriteDepth(inicioID, 200)
SetSpriteVisible(inicioID, 1)

// ---- SPRITES JOGO ----
playerID = CreateSprite(imgPlayer)
coinID   = CreateSprite(imgCoin)
enemyID  = CreateSprite(imgEnemy)
lifeID   = CreateSprite(imgLife)

lifeW      = 64 : lifeH = 64
playerW = 100 : playerH = 100
coinW   = 64  : coinH   = 64
enemyW  = 80  : enemyH  = 80

SetSpriteSize(playerID, playerW, playerH)
SetSpriteSize(coinID, coinW, coinH)
SetSpriteSize(enemyID, enemyW, enemyH)

playerX = 100
playerY = screenH - floorHeight - playerH
SetSpritePosition(playerID, playerX, playerY)
currentPlayerImage = 0 

posYBottom = screenH - floorHeight - coinH - 10
posYMiddle = posYBottom - 100
posYTop    = posYBottom - 200
if posYTop < 0 then posYTop = 0

coinX = screenW
coinY = posYMiddle
SetSpritePosition(coinID, coinX, coinY)

enemyX = screenW + 200
enemyY = posYMiddle
SetSpritePosition(enemyID, enemyX, enemyY)
SetSpriteDepth(enemyID, 50)
enemySpeed = 10

SetSpriteSize(lifeID, lifeW, lifeH)
SetSpriteDepth(lifeID, 50)


// ---- FÍSICA ----
velX = 0.0
velY = 0.0
gravity    = 1.2
moveSpeed  = 8.0
jumpForce  = 22.0
onGround   = 1
groundY    = screenH - floorHeight - playerH
jumpLock   = 0

// ---- VARIÁVEIS DO JOGO ----
score = 0
gameOver = 0
vidas = 5
faseAtual = 1
moedasPorFase = 10
moedasColetadas = 0
coinSpeed = 8

// ---- TEXTOS (todos amarelos) ----
CreateText(1,"")
SetTextSize(1,55)
SetTextPosition(1,30,30)
SetTextColor(1,255,230,120,255)

// Game Over
textGameOver = CreateText("")
SetTextSize(textGameOver, 55)
SetTextColor(textGameOver, 255,230,120,255)
SetTextDepth(textGameOver, 0)      
SetTextVisible(textGameOver, 0)    

// Título menu
CreateText(3,"Bigode Paint Ball") 
SetTextSize(3,135)
SetTextColor(3,255,230,80,255)
SetTextPosition(3, (screenW - GetTextTotalWidth(3))/2.0, (screenH - GetTextTotalHeight(3))/2.0 - 100)

CreateText(4,"Aperte ESPAÇO ou clique para começar")
SetTextSize(4,60)
SetTextColor(4,255,230,120,255)
SetTextPosition(4, (screenW - GetTextTotalWidth(4))/2.0, screenH*0.7 - GetTextTotalHeight(4)/2.0)

CreateText(5,"   ESC para voltar ao menu "+ chr(10) +"Aperte duas vezes Esc para sair")
SetTextSize(5,45)
SetTextColor(5,255,230,120,255)
SetTextPosition(5, (screenW - GetTextTotalWidth(5))/2.0, screenH*0.8 - GetTextTotalHeight(5)/2.0)

// ---------- Função de reset ----------
function ResetGame()
    global playerID, playerX, playerY, playerH
    global animFrame as integer = 1
	global animTimer as integer = 0
    dim imgRun[3] as integer
    global floorHeight
    global coinID, coinX, coinY, posYMiddle
    global enemyID, enemyX, enemyY,enemySpeed
    global screenW, screenH
    global score, moedasColetadas, faseAtual, vidas, coinSpeed, gameOver
    global velX, velY, onGround, jumpLock
    global lifeID, lifeX, lifeY, lifeW, lifeH, lifeAtiva, lifeSpeed, lifeTimer
    Global textGameOver,extTotalHeight
    global escCount as integer = 0
    global escTimer as integer = 0
    global lastEscMs as integer = -100000
    global escHintMs as integer = 0    
    global pegoucoin as integer = 0


    score = 0
    moedasColetadas = 0
    lifeAtiva = 0 
    lifeGerada = 0
    faseAtual = 1
    vidas = 5
    coinSpeed = 8
    enemySpeed = 10 
    gameOver = 0

    playerX = 100
    playerY = screenH - floorHeight - playerH
    velX = 0 : velY = 0 : onGround = 1 : jumpLock = 0
    SetSpritePosition(playerID, playerX, playerY)

    coinX = screenW
    coinY = posYMiddle
    SetSpritePosition(coinID, coinX, coinY)

    enemyX = screenW + 200
    enemyY = posYMiddle
    SetSpritePosition(enemyID, enemyX, enemyY)
    
    lifeX      = screenW + Random(500,1000)
    lifeY      = posYMiddle
    lifeActive = 1
    SetSpritePosition(lifeID, lifeX, lifeY)
    
    SetTextVisible(textGameOver, 0)

endfunction

// ----------------------
// LOOP PRINCIPAL
// ----------------------
do
    if estado = 0
		
		//===== Duplo ESC para sair ===== 
		if GetRawKeyPressed(27) = 1
			nowMs = GetMilliseconds()
		if nowMs - lastEscMs <= 600   
        End
		else
        lastEscMs = nowMs
        escHintMs = nowMs        
			endif
		endif

        // ---------- MENU INICIAL ----------
        SetSpriteVisible(inicioID, 1)
		SetSpriteVisible(coinID, 0)
		SetSpriteVisible(enemyID, 0)
		SetSpriteVisible(lifeID, 0)
        SetSpriteVisible(inicioID, 1)
        SetTextVisible(3, 1)
        SetTextVisible(4, 1)
        SetTextVisible(5, 1)
        SetTextVisible(2, 0)   
        SetTextVisible(1, 0)   

        // Iniciar jogo
        if GetRawKeyPressed(32) = 1 or GetPointerPressed() = 1
            PlayMusic(bgMusic, 1)
            ResetGame()
            estado = 1
            SetSpriteVisible(inicioID, 0)
            SetSpriteVisible(playerID, 1)
            SetSpriteVisible(coinID, 1)
			SetSpriteVisible(enemyID, 1)
			SetSpriteVisible(lifeID, 1)
            SetSpriteVisible(inicioID, 0)
            SetTextVisible(3, 0)
            SetTextVisible(4, 0)
            SetTextVisible(5, 0)
            SetTextVisible(2, 0)
            SetTextString(2, "")
            SetTextVisible(1, 1)
        endif

		else
        // ---------- JOGO ----------
          
        // Voltar ao menu com ESC
        if GetRawKeyPressed(27) = 1
            estado = 0
            PauseMusic()
            SetTextVisible(3, 1)
            SetTextVisible(4, 1)
            SetTextVisible(5, 1)
            SetTextVisible(1, 0)
		endif

	// -------- HUD & GAME OVER --------
	if gameOver = 1
		PauseMusic()
	SetTextString(textGameOver, "          GAME OVER" + chr(10) + "Pressione ESPAÇO para reiniciar" + chr(10) + "         ESC para sair")
    w = GetTextTotalWidth(textGameOver)
    h = GetTextTotalHeight(textGameOver)
    SetTextPosition(textGameOver, (screenW - w)/2, (screenH - h)/2)
    SetTextVisible(textGameOver, 1)

    // Reinício
    if GetRawKeyPressed(32) = 1
        ResetGame()
        gameOver = 0
        SetTextVisible(textGameOver, 0)
        ResumeMusic()
    elseif GetRawKeyPressed(27) = 1
        estado = 0
        SetTextVisible(textGameOver, 0)
    
		endif
 

        else
            // -------- CONTROLES --------
            velX = 0
            if GetRawKeyState(37)=1 or GetRawKeyState(65)=1 then velX = -moveSpeed
            if GetRawKeyState(39)=1 or GetRawKeyState(68)=1 then velX =  moveSpeed

            if (GetRawKeyPressed(32)=1 or GetRawKeyPressed(38)=1) and jumpLock = 0 and onGround = 1
                PlaySound(sndPulo)
                velY = -jumpForce
                onGround = 0
                jumpLock = 1
            endif

            if GetRawKeyState(32)=0 and GetRawKeyState(38)=0
                jumpLock = 0
            endif

            // -------- FÍSICA --------
            velY = velY + gravity
            playerX = playerX + velX
            playerY = playerY + velY

			
			// Colisão com o chão
			if playerY > groundY
				playerY = groundY
				velY = 0
				onGround = 1
			endif

			//Impede sair da tela pros lados e teto
			if playerX < 0 then playerX = 0
			if playerX > screenW - playerW then playerX = screenW - playerW
			if playerY < 0 then playerY = 0

			SetSpritePosition(playerID, playerX, playerY)

            if onGround = 1
			if velX <> 0
				animTimer = animTimer + 1
			if animTimer > 5   // menor valor = troca mais rápido
				animFrame = animFrame + 1
            if animFrame > 4 then animFrame = 1
            if animFrame = 1 then SetSpriteImage(playerID, imgRun1)
            if animFrame = 2 then SetSpriteImage(playerID, imgRun2)
            if animFrame = 3 then SetSpriteImage(playerID, imgRun3)
            if animFrame = 4 then SetSpriteImage(playerID, imgRun4)
				animTimer = 0
				endif
		else
				SetSpriteImage(playerID, imgPlayer) // parado
			endif
		else
			SetSpriteImage(playerID, imgPlayerJump) // no ar
		endif

            // -------- INIMIGO --------
            enemyX = enemyX - enemySpeed
            if enemyX < -enemyW
                enemyX = screenW + Random(100,300)
                altura = Random(1,3)
                if altura = 1 then enemyY = posYTop
                if altura = 2 then enemyY = posYMiddle
                if altura = 3 then enemyY = posYBottom
            endif
            SetSpritePosition(enemyID, enemyX, enemyY)

            // -------- COLISÃO COM INIMIGO --------
			if GetSpriteCollision(playerID, enemyID)=1
			PlaySound(sndDamage)
				score = score - 5
			if score < 0 then score = 0
				vidas = vidas - 1
				enemyX = screenW + Random(100,300)
			if vidas <= 0
				gameOver = 1
			PlaySound(sndGameOver)
			endif
		endif
		
		if lifeAtiva = 1
		if GetSpriteCollision(playerID, lifeID)
        PlaySound(sndLife)
        vidas = vidas + 1
        SetSpriteVisible(lifeID, 0)
        lifeAtiva = 0
			endif
		endif
            // -------- MOEDA --------
            coinX = coinX - coinSpeed
            if coinX < -coinW
                coinX = screenW
                altura = Random(1,3)
                if altura = 1 then coinY = posYTop
                if altura = 2 then coinY = posYMiddle
                if altura = 3 then coinY = posYBottom
            endif
            SetSpritePosition(coinID, coinX, coinY)
            if GetSpriteCollision(playerID, coinID)=1
				PlaySound(sndMoeda)
                score = score + 1
                moedasColetadas = moedasColetadas + 1
                if moedasColetadas >= moedasPorFase
                    faseAtual = faseAtual + 1
                    lifeGerada = 0
                    lifeAtiva = 0
                    SetSpriteVisible(lifeID, 0)
                    score = score + 50
                    moedasColetadas = 0
                    lifeSpeed  = coinSpeed
                    coinSpeed = coinSpeed + 2
                    enemySpeed = enemySpeed + 2
                endif
                coinX = screenW
                altura = Random(1,3)
                if altura = 1 then coinY = posYTop
                if altura = 2 then coinY = posYMiddle
                if altura = 3 then coinY = posYBottom
            endif

    // Gerar vida só uma vez por fase
			if lifeGerada = 0
				lifeX = screenW + Random(300, 800) 
				lifeLane = Random(1,3)             
			if lifeLane = 1 then lifeY = posYBottom
			if lifeLane = 2 then lifeY = posYMiddle
			if lifeLane = 3 then lifeY = posYTop
		SetSpritePosition(lifeID, lifeX, lifeY)
		SetSpriteVisible(lifeID, 1)
			lifeAtiva = 1
			lifeGerada = 1  
			endif
			if lifeAtiva = 1
				lifeX = lifeX - enemySpeed 
			SetSpriteX(lifeID, lifeX)
		endif
		
        // Colisão com player
        if GetSpriteCollision(playerID, lifeID) = 1
            PlaySound(sndLife)
            vidas = vidas + 1
            lifeActive = 0
            // Esconde até o próximo respawn
            SetSpritePosition(lifeID, -999, -999)
        endif
    
        // Após 5 segundos, reativa a coin de vida
       // Static timerLife = 0
		   timerLife = timerLife + 1
        if timerLife >= 300  
            lifeActive = 1
            timerLife        = 0
            lifeX        = screenW + Random(800,1500)
        endif
    endif
            // -------- HUD --------
            SetTextString(1,"Pontuação: " + str(score) + " | Fase: " + str(faseAtual) + " | Vidas: " + str(vidas))
           SetTextString(2, "") 
        endif
   
    Sync()
loop
