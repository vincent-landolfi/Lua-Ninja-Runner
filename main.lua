local gameOn=0
local highScore1="0000"
local highScore2="0000"
local highScore3="0000"
--sets all highscores to 0
local count = 0
local fileName="test.txt"
local fileName2="test2.txt"
local fileName3="test3.txt"

local function read() -- reads text file

 local path = system.pathForFile( fileName, system.DocumentsDirectory ) -- follows to the directory
   local contents = ""
   local file = io.open( path, "r" ) -- opens the path
   if ( file ) then
      -- read all contents of file into a string
      local contents = file:read( "*a" )
      local contentsNum = tonumber(contents);
      io.close( file ) -- closes the stream
    
     return contentsNum

   else
      print( "Error: could not read scores from ", fileName, "." ) -- error
   end
end

local function read2() -- reads second file

 local path = system.pathForFile( fileName2, system.DocumentsDirectory ) -- gives path
   local contents = ""
   local file = io.open( path, "r" ) -- opens path
   if ( file ) then
      -- read all contents of file into a string
      local contents = file:read( "*a" )
      local contentsNum = tonumber(contents);
      io.close( file ) -- closes path
    
     return contentsNum

   else
      print( "Error: could not read scores from ", fileName, "." ) --error
   end
end
local function read3() -- reads third score

 local path = system.pathForFile( fileName3, system.DocumentsDirectory ) -- goes to directory
   local contents = ""
   local file = io.open( path, "r" ) -- opens path
   if ( file ) then
      -- read all contents of file into a string
      local contents = file:read( "*a" )
      local contentsNum = tonumber(contents);
      io.close( file ) -- closes path
    
     return contentsNum

   else
      print( "Error: could not read scores from ", fileName, "." ) -- error
   end
end

function doesFileExist( fname, path ) -- checks if file exists

    local results = false

    local filePath = system.pathForFile(fname , path ) -- goes through path

    --filePath will be 'nil' if file doesn't exist and the path is 'system.ResourceDirectory'
    if ( filePath ) then -- if its there
        filePath = io.open( filePath, "r" )  -- open the path
    end

    if ( filePath ) then -- if its there
        print( "File found: " .. fname )
        --clean up file handles
        filePath:close() -- close the path
        results = true
    else
        print( "File does not exist: " .. fname )
    end

    return results
end

local function createFile() -- creates the file
 local saveData = highScore1 -- save the highscore

  local path = system.pathForFile( fileName, system.DocumentsDirectory ) -- gives the path




local file = io.open( path, "w" ) -- open the path
if ( file ) then-- if its there
      local contents = tostring( saveData ) --save
      file:write( contents ) -- write the data
      io.close( file ) -- close the stream
      print("File wrote")
   else
      print( "Error: could not read ", fileName, "." )
      return false
   end


end

local function createFile2() -- create another file
 local saveData = highScore2 -- second save data

  local path = system.pathForFile( fileName2, system.DocumentsDirectory ) -- gives the path
local file = io.open( path, "w" ) -- open the path
if ( file ) then -- if file is there
      local contents = tostring( saveData ) -- save the data
      file:write( contents ) -- write the data
      io.close( file ) -- close the stream
      print("File wrote")
   else
      print( "Error: could not read ", fileName2, "." )
      return false
   end


end

local function createFile3() -- create the third file
 local saveData = highScore3 -- save the data

  local path = system.pathForFile( fileName3, system.DocumentsDirectory )
 -- gives the path



local file = io.open( path, "w" ) -- open the stream
if ( file ) then -- if its there
      local contents = tostring( saveData ) -- save contents
      file:write( contents ) -- write contents to the file
      io.close( file ) -- close the stream
      print("File wrote")
   else
      print( "Error: could not read ", fileName3, "." )
      return false
   end


end

local function write(scoreSaved) -- writes the score to the created file
 local saveData = scoreSaved --save

  local path = system.pathForFile( fileName, system.DocumentsDirectory ) -- path


-- same idea as createfile, just with writing

local file = io.open( path, "w" )
if ( file ) then
      local contents = tostring( saveData )
      file:write( contents )
      io.close( file )
      print("File wrote")
   else
      print( "Error: could not read ", fileName, "." )
      return false
   end


end

local function write2(scoreSaved) -- write second score
 local saveData = scoreSaved -- save

  local path = system.pathForFile( fileName2, system.DocumentsDirectory ) -- path


-- same idea as before

local file = io.open( path, "w" )
if ( file ) then
      local contents = tostring( saveData )
      file:write( contents )
      io.close( file )
      print("File wrote")
   else
      print( "Error: could not read ", fileName2, "." )
      return false
   end


end
local function write3(scoreSaved) -- write third score
 local saveData = scoreSaved -- save

  local path = system.pathForFile( fileName3, system.DocumentsDirectory ) -- path



-- same idea
local file = io.open( path, "w" )
if ( file ) then
      local contents = tostring( saveData )
      file:write( contents )
      io.close( file )
      print("File wrote")
   else
      print( "Error: could not read ", fileName3, "." )
      return false
   end


end

local results = doesFileExist( "test.txt", system.DocumentsDirectory ) -- tells us if it exists
local results2 = doesFileExist( "test2.txt", system.DocumentsDirectory ) -- tells us if it exists
local results3 = doesFileExist( "test3.txt", system.DocumentsDirectory ) -- tells us if it exists
if(results==false and results2==false and results3==false) then 
    createFile()
createFile2()
createFile3()
    
    else
        print("file found")
        highScore1=read()
       
        highScore2=read2()
        highScore3=read3()
        

end
print ("Highscore1", highScore1)
local ced = require "caseErrorDetect"
function menu()
    --takes away the menu bar on the device
    display.setStatusBar( display.HiddenStatusBar )
    count = count+1
local widget = require( "widget" ) --import ther ability to create button


--function for picture with left light
local function titleLeft()
local titleLeftLight=display.newImage("leftMenuScreen.png",240,160)

end

--function for picture with right light
local function titleRight(  )
     titleRightLight=display.newImage("RightMenuScreen.png",240,160)
--function for picture with both lights     
end
local function titleCenter(  )
     titleRightLight=display.newImage("centreMenuScreen.png",240,160)
--function for picture with no lights     
end
function titleNone( )
     titleRightLight=display.newImage("noLightsMenuScreen.png",240,160)
     
end
--when you click play game button, takes you to gameplay
local function handleButtonEvent1( event )

    if ( "ended" == event.phase ) then
        print( "Button1 was pressed and released (Play game)" )
        playGame()
        audio.pause(1)
        --moves buttons out of the way
        buttons.x = -100
        buttons2.x = -100
        buttons3.x = -100
    end
end

local function handleTutorialEvent3( event )
--if button pressed
    if ( "ended" == event.phase ) then
    --declare image
       local tutorial3=display.newImage("tutorial3.png",240,160)
       local nextButton = widget.newButton
{
    width = 200,
    height = 50,
    defaultFile = "buttons.png",
    --overFile = "buttonOver.png",
    label = "Main Menu",
    onEvent = handleButtonEvent4
}
--button to next tutorial
nextButton.x=375
nextButton.y=280
    end
    
end

local function handleTutorialEvent2( event )
--if the button is pressed, execute the following command
    if ( "ended" == event.phase ) then
 --declare thirds tutorial image
        local tutorial2=display.newImage("tutorial2.png",240,160)
               local nextButton = widget.newButton
{
    width = 200,
    height = 50,
    defaultFile = "buttons.png",
    --overFile = "buttonOver.png",
    label = "Next",
    onEvent = handleTutorialEvent3
}
--button to next tutorial
nextButton.x=375
nextButton.y=280
    end
end


local function handleButtonEvent2( event )
--if the button is pressed, execute the following command
    if ( "ended" == event.phase ) then
    --declare thirds tutorial image
        local tutorial1=display.newImage("tutorial1.png", 240, 160)
        local nextButton = widget.newButton
{
    width = 200,
    height = 50,
    defaultFile = "buttons.png",
    --overFile = "buttonOver.png",
    label = "Next",
    onEvent = handleTutorialEvent2
}
--button to next tutorial
nextButton.x=375
nextButton.y=280

    end
end

--function that displays the actual button image
local function menuButton()
local menuButton = widget.newButton
{
    width = 200,
    height = 50,
    defaultFile = "buttons.png",
    --overFile = "buttonOver.png",
    label = "Number 2",
    onEvent = handleButtonEvent4
}

-- Center the button
menuButton.x = 0
menuButton.y = 600

-- Change the button's label text
menuButton:setLabel( "Main Menu" )
transition.to( menuButton, { time=1500, x=360, y=270} )
end
local function handleButtonEvent5( event )

    if ( "ended" == event.phase ) then
    --if you press the highscore button
       print "high score touched"
       local highScoreScreen =display.newImage("HighScoreScreen.png",240,160)
        local text1=display.newText(highScore1,200,100,native.systemFontBold, 18)
       local text2=display.newText(highScore2,200,200,native.systemFontBold, 18)
       local text3=display.newText(highScore3,200,300,native.systemFontBold, 18)
       menuButton() --back to the menu
    end
end
--when the main menu button is pressed in the tutorial take you back to the main menu
function handleButtonEvent4( event )

    if ( "ended" == event.phase ) then
    --declares the buttons again and reshows the background
       titleNone()
      buttons = widget.newButton
{
    width = 200,
    height = 50,
    defaultFile = "buttons.png",
    --overFile = "buttonOver.png",
    label = "button",
    onEvent = handleButtonEvent1
}

-- Center the button
buttons.x = 0
buttons.y = 0

-- Change the button's label text
buttons:setLabel( "Play game" )
transition.to( buttons, { time=1500, x=240, y=120} )

buttons2 = widget.newButton
{
    width = 200,
    height = 50,
    defaultFile = "buttons.png",
    --overFile = "buttonOver.png",
    label = "Number 2",
    onEvent = handleButtonEvent2
}

-- Center the button
buttons2.x = 500
buttons2.y = 600

-- Change the button's label text
buttons2:setLabel( "Tutorial" )
transition.to( buttons2, { time=1500, x=240, y=180} )


--highscore button
buttons3 = widget.newButton
{
    width = 200,
    height = 50,
    defaultFile = "buttons.png",
    --overFile = "buttonOver.png",
    label = "Number 2",
    onEvent = handleButtonEvent5
}

-- Center the button
buttons3.x = 0
buttons3.y = 600

-- Change the button's label text
buttons3:setLabel( "High Score" )
transition.to( buttons3, { time=1500, x=240, y=240} )
    end
end
--on main menu this is the play game button image
local function button1()
 buttons = widget.newButton
{
    width = 200,
    height = 50,
    defaultFile = "buttons.png",
    --overFile = "buttonOver.png",
    label = "button",
    onEvent = handleButtonEvent1
}

-- Center the button
buttons.x = 0
buttons.y = 0

-- Change the button's label text
buttons:setLabel( "Play game" )
transition.to( buttons, { time=1500, x=240, y=120} )
end
--on main menu this is the tutorial button image
local function button2()
buttons2 = widget.newButton
{
    width = 200,
    height = 50,
    defaultFile = "buttons.png",
    --overFile = "buttonOver.png",
    label = "Number 2",
    onEvent = handleButtonEvent2
}

-- Center the button
buttons2.x = 500
buttons2.y = 600

-- Change the button's label text
buttons2:setLabel( "Tutorial" )
transition.to( buttons2, { time=1500, x=240, y=180} )
end
--on main menu this is the highscore button image
local function button3()
 buttons3 = widget.newButton
{
    width = 200,
    height = 50,
    defaultFile = "buttons.png",
    --overFile = "buttonOver.png",
    label = "Number 2",
    onEvent = handleButtonEvent5
}

-- Center the button
buttons3.x = 0
buttons3.y = 600

-- Change the button's label text
buttons3:setLabel( "High Score" )
transition.to( buttons3, { time=1500, x=240, y=240} )
end
if (count==1) then

local backgroundMusic=audio.loadStream("introSong.mp3") --loads up the intro song
local backgroundMusicChannel = audio.play( backgroundMusic, { channel=1, loops=0, fadein=5000 } ) -- plays the intro song

    

--separates all of the light frames
timer.performWithDelay( 0, titleLeft )
timer.performWithDelay( 700, titleCenter)
timer.performWithDelay( 2100, titleRight )
timer.performWithDelay( 3000, titleLeft )
timer.performWithDelay( 4400, titleCenter )
timer.performWithDelay( 4800, titleNone )
timer.performWithDelay( 5300, titleCenter )
timer.performWithDelay( 5900, titleNone )
timer.performWithDelay( 6700, titleCenter)
timer.performWithDelay( 7700, titleLeft )
timer.performWithDelay( 8300, titleRight )
timer.performWithDelay( 8900, titleCenter )
timer.performWithDelay( 9600, titleNone )
timer.performWithDelay( 11100, titleLeft )
timer.performWithDelay( 12000, titleCenter )
timer.performWithDelay( 12400, titleNone )
timer.performWithDelay( 13100, titleLeft )
timer.performWithDelay( 14000, titleCenter)
timer.performWithDelay( 17800, titleNone  )
timer.performWithDelay(18000,button1)
timer.performWithDelay(18000,button2)
timer.performWithDelay(18000,button3)
else
    --show all the buttons
    button1()
    button2()
    button3()
end
end
menu()
--function play game that is called when button is pushed on main menu
function playGame() -- starts the game
local physics = require("physics") --gets physics started
physics.setDrawMode("normal")
physics.start()
-- all variables being declared
local gameCount = 0
local lifeTable = {}
local collisionCount = 0
local speed = 3
local count = 0
local shakeCount = 0
local xShake = 8
local yShake = 4
local shakePeriod = 2
local score = 0
local bossPresent = false
local bossCount = 0
local bossCount2 = 0
local bossCount3 = 0
local bossPresent2 = false
local bossPresent3 = false
local bossNumber = 0
local monsterCount = 0
local monsterAttacking = false
local health = 5
local soundCount = 0
local deadCount = 0
local lifeCount = 0
local orbCount = 0
local pauseCount= 0
local ground = true
local starActive = false
--declare all the sounds and music
local lifeSound = audio.loadSound("lostLife.wav")
local orbSound = audio.loadSound("orb.wav")
local jumpSound = audio.loadSound( "jump.wav" )
local roarSound = audio.loadSound( "roar.wav" )
local roarSound = audio.loadSound( "roar.wav" )
--predeclaring sound options
local options =
{
    channel = 3,
    loops = -1,
    fadein = 5000
}
-- more sounds
local bossSound = audio.loadSound( "boss.wav" )
local backgroundSong = audio.loadSound ("default.mp3")
audio.play (backgroundSong,{loops=-1,channel=2})
-- declares all the dimensions for sprite sheets, for animations
local heartPowerSheet =
{
    width = 60,
    height = 60,
    numFrames = 3
}
local autoSheet =
{
    width = 75,
    height = 75,
    numFrames = 3
}
local starSheet =
{
    width = 55,
    height = 55,
    numFrames = 7
}
local deadSheet =
{
    width = 62,
    height = 53,
    numFrames = 3
}
local bossLaughSheet =
{
    width = 278,
    height = 300,
    numFrames = 12
}
local kingDieSheet =
{
    width = 371,
    height = 291,
    numFrames = 34
}
local bossAttackSheet =
{
    width = 408,
    height = 313,
    numFrames = 21
}
local raiseSheet = 
{
    width = 180,
    height = 100,
    numFrames = 6
}
local attackUpSheet = 
{
    width = 150,
    height = 100,
    numFrames = 9
}
local attackLeftSheet =
{
    width = 175,
    height = 100,
    numFrames = 9
}
local attackRightSheet = 
{
    width = 224,
    height = 100,
    numFrames = 9
}
local idleSheet =
{
    width = 178,
    height = 100,
    numFrames = 7
}
local retractSheet =
{
    width = 183,
    height = 100,
    numFrames = 6
}
local runSheet =
{
    width = 46,
    height = 55,
    numFrames = 8
}
local burnSheet = {
    width = 114,
    height = 80,
    numFrames = 1
}
local ogreSheet =
{
    width = 210,
    height = 200,
    numFrames = 6
}
local landingSheet =
{
    width = 218,
    height = 180,
    numFrames = 2
}
local fightSheet = 
{
    width = 187,
    height = 180,
    numFrames = 3
}
local dieSheet = 
{
    width = 208,
    height = 170,
    numFrames=4
}
local jumpSheet =
{
    width = 41,
    height = 53,
    numFrames = 3
}
local shootSheet = {
    width = 46,
    height = 55,
    numFrames = 2
}
local ninjaSheet = {
    width = 94,
    height = 63,
    numFrames = 7
}
-- sets all the sprite sheets to their pictures
local sheet_burn = graphics.newImageSheet("burned.png",burnSheet)
local sheet_ogre = graphics.newImageSheet("ogreSheet.png",ogreSheet)
local sheet_boss = graphics.newImageSheet("landingBoss.png",landingSheet)
local sheet_boss2 = graphics.newImageSheet("fightSheet.png",fightSheet)
local sheet_king = graphics.newImageSheet("kingBoss1.png",bossLaughSheet)
local sheet_king2 = graphics.newImageSheet("attackKing1.png",bossAttackSheet)
local sheet_king3 = graphics.newImageSheet("kingDie1.png",kingDieSheet)
local sheet_boss3 = graphics.newImageSheet("die.png",dieSheet)
local sheet_run = graphics.newImageSheet("running.png",runSheet)
local sheet_run2 = graphics.newImageSheet("jumping.png",jumpSheet)
local sheet_run3 = graphics.newImageSheet("shootSheet.png",shootSheet)
local sheet_run4 = graphics.newImageSheet("dead.png", deadSheet)
local sheet_monsterRaise = graphics.newImageSheet("raiseMonster.png",raiseSheet)
local sheet_monsterUp = graphics.newImageSheet("attackUpMonster.png",attackUpSheet)
local sheet_monsterLeft = graphics.newImageSheet("attackLeftMonster.png",attackLeftSheet)
local sheet_monsterRight = graphics.newImageSheet("attackRightMonster.png",attackRightSheet)
local sheet_monsterIdle = graphics.newImageSheet("idleMonster.png",idleSheet)
local sheet_monsterRetract = graphics.newImageSheet("retractMonster.png",retractSheet)
local sheet_star = graphics.newImageSheet("Star.png",starSheet)
local sheet_auto = graphics.newImageSheet("auto.png",autoSheet)
local sheet_heartPower = graphics.newImageSheet("heartPower.png",heartPowerSheet)
-- setting the sequences for the sprite sheet, essentially what parts of the sheet we will use
local sequences_heartPower = {
    name = "heartPower",
    sheet = sheet_heartPower,
    start = 1,
    count = 3,
    time = 500,
    loopCount=0,
    loopDirection = "bounce"
}
local sequences_auto = {
    name = "auto",
    sheet = sheet_auto,
    start = 1,
    count = 3,
    time = 500,
    loopCount=0,
    loopDirection = "bounce"
}
local sequences_star = {
    name = "star",
    sheet = sheet_star,
    start = 1,
    count = 7,
    time = 1000,
    loopCount=0,
    loopDirection = "forward"
}
local sequences_king = {
    {
    name = "laugh",
    sheet = sheet_king,
    start = 1,
    count = 12,
    time = 2000,
    loopCount = 1,
    loopDirection = "forward"
},
{
    name = "attack",
    sheet = sheet_king2,
    start = 1,
    count = 21,
    time = 2000,
    loopCount = 1,
    loopDirection = "forward"
},
{
    name = "die",
    sheet = sheet_king3,
    start = 1,
    count = 34,
    time = 4500,
    loopCount = 1,
    loopDirection = "forward"
}
}
local sequences_monster = {
    {
    name = "raise",
    sheet = sheet_monsterRaise,
    start = 1,
    count = 6,
    time = 1000,
    loopCount=1,
    loopDirection = "forward"
},
{
    name = "attackLeft",
    sheet = sheet_monsterLeft,
    start = 1,
    count = 9,
    time = 1000,
    loopCount=1,
    loopDirection = "forward"
},
{
    name = "attackRight",
    sheet = sheet_monsterRight,
    start = 1,
    count = 9,
    time = 1000,
    loopCount=1,
    loopDirection = "forward"
},
{
    name = "idle",
    sheet = sheet_monsterIdle,
    start = 1,
    count = 7,
    time = 1000,
    loopCount=0,
    loopDirection = "forward"
},
{
    name = "retract",
    sheet = sheet_monsterRetract,
    start = 1,
    count = 6,
    time = 1200,
    loopCount=1,
    loopDirection = "forward"
}
}
 sequences_run = {
   {
    name = "run",
    sheet = sheet_run,
    start = 1,
    count = 8,
    time = 1000,
    loopCount = 0,
    loopDirection = "forward"
},
{
    name = "dead",
    sheet = sheet_run4,
    start = 1,
    count = 8,
    time = 1500,
    loopCount = 1,
    loopDirection = "forward"
},
{
    name = "jump",
    sheet = sheet_run2,
    start = 1,
    count = 3,
    time = 600,
    loopCount = 1,
    loopDirection = "forward"
},
{
    name = "jump2",
    sheet = sheet_run2,
    start = 2,
    count = 1,
    time = 100,
    loopCount = 1,
    loopDirection = "forward"
},
{
    name = "jump3",
    sheet = sheet_run2,
    start = 3,
    count = 1,
    time = 1000,
    loopCount = 1,
    loopDirection = "forward"
},
{
    name = "burn",
    sheet = sheet_burn,
    start = 1,
    count = 1,
    time = 300,
    loopCount = 1,
    loopDirection = "forward"
},
{
    name = "shoot",
    sheet = sheet_run3,
    start = 1,
    count = 2,
    time = 600,
    loopCount = 1,
    loopDirection = "forward"
}
}
local sequences_ogre = {
    {
    name = "attack",
    sheet = sheet_ogre,
    start = 1,
    count = 6,
    time = 1000,
    loopCount = 0,
    loopCount = "forward"
}
}
local sequences_boss = {
    {
    name = "fall",
    sheet = sheet_boss,
    start = 1,
    count = 1,
    time = 100,
    loopCount = 1,
    loopDirection = "forward"
},
{
    name = "land",
    sheet = sheet_boss,
    start = 2,
    count = 1,
    time = 100,
    loopCount = 1,
    loopDirection = "forward"
},
{
    name = "fight",
    sheet = sheet_boss2,
    start = 1,
    count = 3,
    time = 400,
    loopCount = 1,
    loopDirection = "forward"
},
{
    name = "die",
    sheet = sheet_boss3,
    start = 1,
    count = 4,
    time = 1500,
    loopCount = 1,
    loopDirection = "forward"
}
}
local sheet_ninja = graphics.newImageSheet("Ninja.png",ninjaSheet)
local sequences_ninja ={
{
    name = "ninja",
    sheet = sheet_ninja,
    start = 1,
    count = 7,
    time = 500,
    loopCount = 0,
    loopDirection = "forward"
}
}
-- creates outlines of the obstacles
-- basically means that the collision won't be a rectangle, but the shape of the object

local runOutline = graphics.newOutline(2,sheet_run,1)
local bossOutline = graphics.newOutline(11,sheet_boss,2)
local monsterOutline = graphics.newOutline(14,sheet_monsterRaise,6)
local kingOutline = graphics.newOutline(5,sheet_king2,5)
local blackOrbOutline = graphics.newOutline(15,"blackOrb.png")
local rampcopyOutline =graphics.newOutline(2,"rampcopy.png")
local FireOutline = graphics.newOutline(2,"Fire.png")
--background image
local background = display.newImage("background.png")
background.x = 240
background.y = 160
local sun = display.newImage("cartoon-moon.png",440,40) -- sun/moon
-- score and life text
local scoreText = display.newText("Score: " .. score, 130, 30, "PressStart2P.ttf", 20)
local lifeText = display.newText ("Health: ".. "",90,60,"PressStart2P.ttf",20)
local pause = display.newImage("pause.png", 50,110) -- pause button picture
local play = display.newImage("play.png",50,110) -- play button picture
local G = display.newImage("G.png", 100,110) -- G button picture
play.isVisible = false -- don't show the play button
G.myName="G" -- name g button "g"
gMode=false --gmod not activated
pause.myName = "pause"-- call the pause button "pause"
-- show the hearts for the health
for i = 1, health, 1 do
    lifeTable[i] = display.newImage("heart.png",140 +i*25,62)
end
--far background 2
local bgfar2 = display.newImage("bgfar.png")
bgfar2.x = 960+480
bgfar2.y = 160
-- first farbackground
local backgroundfar = display.newImage("bgfar.png")
backgroundfar.x = 480
backgroundfar.y = 160
backgroundfar.speed = 1 -- speed of scrolling
bgfar2.speed = 1 -- speed of scrolling
-- 2 blocks of street
local street = display.newImage("street.png")
local street2 = display.newImage("street.png")
street.x = 480
street.y = 160
street2.x = 960+480
street2.y = 160
street.speed = 5 -- speed of street movement
street2.speed = 5 --speed of other block street movement
local mask = graphics.newMask( "rampcopy.png" ) --useless
-- more outlines for collision
-- creating sprites of the runner and the bosses
local run = display.newSprite(sheet_run,sequences_run) --
local boss = display.newSprite(sheet_boss,sequences_boss)
local monster = display.newSprite(sheet_monsterRaise,sequences_monster)
local king = display.newSprite(sheet_king,sequences_king)
-- putting first boss of the screen
boss.x = 380
boss.y = -300
-- making the runner and the bosses physics bodies
physics.addBody(run,"dynamic",{density=0,friction=2,bounce=0.2,filter={ groupIndex = 2 }})
physics.addBody(boss,"dynamic",{outline=bossOutline,density=0})
physics.addBody(monster,"dynamic",{density=0,outline=monsterOutline})
physics.addBody(king,"dynamic",{density=0,outline=kingOutline})
-- putting the other boss off the screen
king.y = -1200
king.x = 280
king.gravityScale = 0 -- gravity doesn't apply to the king
king.myName = "king" -- setting name of king to "king"
boss.gravityScale = 0 -- gravity does not apply to boss
-- putting other boss off screen
monster.x = 380
monster.y = -600
monster.gravityScale = 0 -- gravity does not apply to the monster
monster.myName = "monster" -- setting name of monster to "monster"
-- putting the runner in his position
run.x = 80
run.y=300

local objs = display.newGroup() -- new group of obstacles
i=0
j=0
z=0
r=0 --Letters are used as counts for various functions
num=0

local bottomWall = display.newLine(0,320,480,320) -- make a wall on the road

run.myName = "run" -- call the runner "run"
sun.myName = "sun" -- call the sun "sun"
bottomWall.myName = "road" -- call the road "road"
boss.myName = "boss" -- cal the boss "boss"

run:play() -- begin runner's animation
local function updateScore() -- updates score
    scoreText.text = "Score: " .. score -- prints the word "score" and then the score
end
local function shake() -- shakes the screen when boss comes
   if(shakeCount % shakePeriod == 0 ) then
      display.currentStage.x = display.currentStage.x0 + math.random( -xShake, xShake ) -- shake animation
      display.currentStage.y = display.currentStage.y0 + math.random( -yShake, yShake ) -- shake animation
   end
   shakeCount = shakeCount + 1 -- counts how long the shake is
end

local function startShake() -- starts the shake
   display.currentStage.x0 = display.currentStage.x -- changes the x
   display.currentStage.y0 = display.currentStage.y -- changes the y
   shakeCount = 0
   Runtime:addEventListener( "enterFrame", shake ) -- adds shake to the frame
end
function stopShake() -- stops the shake
   Runtime:removeEventListener( "enterFrame", shake ) -- removes the shake from the fram
   -- stops the shake with slight delay
   timer.performWithDelay( 50, 
   function() 
      display.currentStage.x = display.currentStage.x0 
      display.currentStage.y = display.currentStage.y0
   end )
end 
local function attackMonster() -- sets the monster to attack mode
    monsterAttacking=true -- tell us monster is attacking
end
local function bossBattle3() -- third boss battle
    if (bossPresent3) then -- if the boss is there
        if (soundCount==2) then -- we haven't played to bossbattle song yet
          audio.pause(2)
        audio.resume(3)
        soundCount = 0 -- tell it that we played to song
    end
    if (king.y==-300) then -- if boss it off screen
        king:setSequence("laugh") -- make him laugh
        king:play() -- play the laugh sequence
end

    if (king.y<180 and bossCount3<80) then -- if the kind hasn't hit the ground yet
        king.y = king.y+3 -- push him lower
        elseif (king.y>=180 and bossCount3 == 0) then -- if he lands
            king:setSequence("laugh") -- make him laugh
            king:play() -- play the laugh
                    startShake() -- start the screen shake
            bossCount3 = 1 -- start counting
            audio.play(roarSound) -- play the roar
    end
    if ((bossCount3>=1 and bossCount3<80) or (bossCount3>=81 and bossCount3<600)) then -- if he's not fighting
        bossCount3 = bossCount3+1 -- up the counter
    end

    if (bossCount3 == 79) then -- once the first count is up
        stopShake() -- stop shaking
    end
    if (bossCount3==80) then -- if he's fighting
        if (math.random(1,30)==27 and king.isPlaying==false and health>0) then -- if a random number is 27 and the king isnt busy
            king.x=350 -- make sure the king is where he should be
            orbCount = 0 -- make sure we don't shoot 30 orbs at once
            king:setSequence("attack") -- set the king's animation to attack
            king:play() -- play the animation
    end
       if (score==102000 and bossCount3==80) then -- if you reach a certain score and the boss is fighting
        king:setSequence("die") -- set animation to dying
        king:play() -- play die animation
        bossCount3=81 -- start next counter
            startShake() -- start shaking
        end
        makeSludge() -- shoot an orb (boss)
    end
            if (bossCount3==500) then --once the counter is up
                            audio.resume(2)
              audio.pause(3)
            stopShake() -- stop shaking
            speed=speed-0.005
                king:removeSelf() -- remove the boss to clear up ram
                bossPresent3=false -- boss is no longer present
                score = score + 5000 -- add 5000 to your score
        end
    king.x = 380 -- make sure the king is where he's supposed to be
    boss.rotation = 0 -- make sure the king doesn't roll
    end
end
local function bossBattle2() -- second boss battle
  print(soundCount)
            if (soundCount==1) then -- if we haven't played a sound yet
              audio.pause(2)
        audio.resume(3) -- play boss battle song
        soundCount = 2 -- don't play it again
    end
    if (monster.y<260 and bossCount2<80) then -- if monster isn't in his position
        monster.y = monster.y+2 -- lower him
        monster:setSequence("raise") -- set the animation to the raise animation
        elseif (monster.y>=260 and bossCount2 == 0) then -- if he lands
                    startShake() -- start shaking
            bossCount2 = 1 -- start the counter
monster:setSequence("raise") -- set animation to raise
        monster:play() -- play that animation
    end
        if ((bossCount2>=1 and bossCount2<80) or (bossCount2>=81 and bossCount2<300)) then -- if the counter is running
        bossCount2 = bossCount2+1 -- count by one
    end
        if (bossCount2 == 79) then -- if the monster has landed and counter is up
        stopShake() -- stop shaking
        monster:setSequence("idle") -- set animation to idle
        monster:play() -- play the animation
    end
    if (monster.isPlaying==false and monster.sequence=="retract" and monsterCount== 1) then -- if we retract the monster
        monster.x = run.x+100 -- change the x to be right infront of the runner
        monster:setSequence("raise") -- set animation to raise animation
        monster:play() -- play the animation
        monsterCount = 0 -- change the attacking count to 0
        timer.performWithDelay(2000,attackMonster()) -- wait two second and attack
    end

        if (bossCount2==80) then -- if boss is in attack mode
                monster.y=260 -- make sure he's where he should be
                local attackNum = math.random(1,125) -- pick a random number
                if (monster.x>=run.x+120) then -- if the monster is where he should be
                        if (attackNum==10  and monster.sequence~="retract") then -- if we get 10 as our number
                            monster:setSequence("attackLeft") -- set animation to swipe attack
                            monster:play() -- play the animation
                            monsterAttacking = true -- say the mosnter is attacking
                            elseif (attackNum==68  and monster.sequence~="attackLeft") then -- if we get 68
                                monster:setSequence("retract") -- set animation to retract
                                monster:play() -- play the animation
                                monster.outline = 0 -- doesnt do anything
                                monsterCount = 1 -- start the counter
        end
    end
end
               if (score==26500 and bossCount2==80) then -- if the score is 4500
            monster:setSequence("retract") -- set animation to retract
            monster:play() -- play animation
            bossCount2=81 -- start this counter
            startShake() -- start shaking
        end
                    if (bossCount2==300) then -- if the counter reaches 300
                                    audio.resume(2)
              audio.pause(3)
            stopShake() -- stop shaking
            monster.y = monster.y-5 -- raise the monster off the screen
            speed=speed-0.005
            if (monster.y<-500) then -- once he's high enough
                monster:removeSelf() -- remove monster to save ram
                bossPresent2=false -- monster isnt present
                score = score + 500 -- raise the score by 500
            end
        end
        if (monsterAttacking) then -- if the monster is attacking
            monster.x = monster.x-3 -- monster moves closer to runner
end
if (monster.x<-45) then -- if monster passes runner offscreen
    monster.x = 500 -- reset his x to other side
end
if (monster.x>370 and monster.x<390 and monster.isPlaying==false) then     -- if monster is where he should be   
 monster:setSequence("idle") -- make monster idle
        monster:play() -- play idling animation
        end
if (monster.x>380) then -- if monster is too far left
    collisionCount=0 -- set count to 0
    monster.x = monster.x-2 -- move him right
    monsterAttacking=false -- don't let him attack
       monster:setSequence("idle") -- set animation to idle
        monster:play() -- play animation
end
    monster.rotation = 0 -- make sure monster won't spin
    end
local function bossBattle1() -- first boss battle
    if (bossPresent) then -- if he's there
      audio.pause(2)
        if (soundCount==0) then -- if we havent played anything
        audio.play(bossSound,options) -- play the boss sound
        soundCount = 1 -- set the sound counter to 1
    end
    if (boss.y==-300) then -- if boss is above screen
        boss:setSequence("fall") -- set animation to fall 
    boss:play() -- play animation
end
if (run.isPlaying==false and run.sequence=="burn") then  -- if runner gets burnt
    run:setSequence("run") -- set animation to run
    run:play() -- play animation
end
    if (boss.y<215 and bossCount<80) then -- if boss hasn't hit the ground
        boss.y = boss.y+2 -- lower him
        elseif (boss.y>=215 and bossCount == 0) then -- if he hits the ground
            boss:setSequence("land") -- set animation to landing
            boss:play() -- play animation
                    startShake() -- start shaking
            bossCount = 1 -- start the boss counter
            audio.play(roarSound) -- play the roaring sound
    end
    if ((bossCount>=1 and bossCount<80) or (bossCount>=81 and bossCount<300)) then -- if counter is on
        bossCount = bossCount+1 -- count by one
    end

    if (bossCount == 79) then -- if the counter is about to stop
        stopShake() -- stop shaking
        boss:setSequence("fight") -- set animation to fighting
        boss:play() -- play fight animation
    end
    if (bossCount==80) then -- if boss is in fight monde
        if (math.random(1,300)==27) then -- if a random number is 27
          boss:setSequence("fight") -- set animation to fight
        boss:play() -- play animation
    end
       if (score==10900 and bossCount==80) then -- if you reach a score
            boss:setSequence("die") -- set animation to dying
            boss:play() -- play animation
            bossCount=81 -- start the counter
            startShake() -- start the shaking
        end
    makeFire() -- see if the monster should shoot fire balls
    end
            if (bossCount==300) then -- if the counter reaches
              audio.resume(2)
              audio.pause(3)
            stopShake() -- stop shaking
            boss.y = boss.y-5 -- raise the boss
            speed=speed-0.005
            if (boss.y<-500) then -- once the boss is high enough
                boss:removeSelf() -- remove boss to save ram
                bossPresent=false -- boss no longer present
                score = score + 500 -- raise score by 500
            end
        end
    boss.x = 380 -- make sure boss stays
    boss.rotation = 0 -- make sure boss doesnt spin
end
end
local function myTouchListener( event ) -- if screen is touched

    if ( event.phase == "began" ) then -- if touch began
        if (event.target.myName=="sun" and run~=nil) then -- if they touched the sun
         run:setSequence("shoot") -- set animation to shoot
         run:play() -- play the animation
    end
    if (event.target.myName=="pause") then -- if the press pause button
        print "pause clicked"
        if (pauseCount==0) then -- if it hasnt been pressed yet
        physics.pause() -- pause physics
        deadCount = 3 -- set count
        play.isVisible = true -- make play button visible
        pauseCount = 1 -- say button has been pressed
        else -- if it has been pressed
        physics.start() -- start physics again
        deadCount =0 -- set count back to 0
        pauseCount=0 -- set pause count back to 0
        play.isVisible = false -- make play button invisible
        end
    end
    if (event.target.myName=="G") then -- if the g button is pressed
        if(gMode==false)then -- if g mode isnt on
            starActive=true -- star mode activate
            gMode=true -- gmode activate
        else -- otherwise
            G:setFillColor(1) -- make g white
            run:setFillColor(1) -- make runner regular color
            starActive=false -- turn of star mode
            gMode=false -- turn off g mode
        end
    end
    elseif ( event.phase == "moved" ) then -- if you drag finger
        print( "touch location in content coordinates = "..event.x..","..event.y )
    elseif ( event.phase == "ended" ) then -- if touch is over
        if (event.target.myName=="run" ) then -- if you touched runner
            if (ground == true) then -- if he's on the ground
                ground = false -- get him off the ground
                run:setLinearVelocity(0,-250) -- shoot him upwards
                run:setSequence("jump2") -- set animation to jump
                run:play() -- play animation
                audio.play(jumpSound) -- play jump sound
                print( "touch ended on object "..tostring(event.target.myName) )
            else -- otherwise
                print (ground)
                run:setLinearVelocity(0,250) -- shoot him downwards
                run:setSequence("jump3") -- set animaiton to land
                run:play() -- play animation
                audio.play(jumpSound) -- play jump sound
                print( "touch ended on object "..tostring(event.target.myName) )
            
            end
        end
    end
    return true  --prevents touch propagation to underlying objects
end

function scrollBG(self,event) -- frame function, runs 30x per second
    if (deadCount==0 or 1) then -- if he is alive or dead

if (deadCount==0) then -- if runner is alive
    powerUps() -- show powerups
    updateRoad(num) -- keep the road moving
    makeOrb() -- shoot orbs if need be
    updateScore() -- update the score
speed = speed + .0001 --speeds up the game slightly
    if self.x<-960 then -- if the buildings passed out of the window
    self.x=940 -- reset the buildings
else
    self.x = self.x - (self.speed/0.5) -- move buildings slowly to the right
end
elseif (deadCount==1) then -- if he's dead
    print("dead")
    local highScore1Num=tonumber(highScore1) -- set highscore
    print(highScore1Num)
    local highScore2Num=tonumber( highScore2 ) -- set highcore
   local highScore3Num=tonumber(highScore3) -- set highscore
-- 1st highscore setting
if (score>highScore1Num) then
    highScore2=highScore1
        highScore1=tostring(score)
print(highScore1)
       highScore1=tostring(score)
        write(highScore1)
        write2(highScore2)
        write3(highScore3)
-- 2nd highscore setting
    elseif (score>highScore2Num)then
        highScore3=highScore2
        highScore1=tostring(score)
print(highScore2)
        write2(highScore2)
        write3(highScore3)
-- 3rd highscore setting
    elseif (score>highScore3Num )then
        highScore3=tostring(score)
print(highScore3)
        write3(highScore3)
    end 
    local deadText = display.newText("Game Over", 240, 150, "PressStart2P.ttf", 30) -- displays game over text
    deadText:setFillColor(250,250,250) -- sets the color of text 
    run:removeSelf() -- removes the runner to save ram
if (bossCount~=300) then -- if the boss was not killed
    boss:removeSelf() -- remove the boss
end
if (bossCount2~=300) then -- if the monster was not killed
    monster:removeSelf() -- remove the monster
end
if (bossCount3~=500) then -- if the king was not killed
    king:removeSelf() -- remove the king
end
    timer.performWithDelay( 2000, menu) -- wait 2 seconds then display the menu
    i=0 -- reset starter variable
    deadCount=2 -- runner is dead
            for k=1,objs.numChildren do -- for all obstacles
        objs[k].x=-200 -- set all ovstacles off the screen
  end
end
if (deadCount==0 or deadCount==1) then -- if the runner is alive
    if (health==1 and lifeCount<30) then -- if you have on life left, and the counter is less than 30
        lifeTable[1].isVisible = false -- dont show the heart
    end
    if (lifeCount>=30 and lifeCount<60) then -- if the counter is between 30 and 60
        lifeTable[1].isVisible = true -- show the heart
    end
    if (lifeCount==60) then -- if the count reaches 60
        lifeCount=0 -- reset the count
    end
    lifeCount = lifeCount+1 -- increase the counter
    if (run.y>800) then -- if the runner falls off the screen
        health = 0 -- he's dead
    end
    if (deadCount == 0 and health == 0) then -- if he's dead
        run:setSequence("dead") -- set animation to dying       
        run:play() -- play animation
  deadCount=1 -- set deadCount to where he is dead
    end
    if (deadCount==1) then -- if he's dead
                        for k=1,objs.numChildren do
        objs[k].x=-200 -- set all objects off the screen
  end
end
    if (score>=10000 and score<=10900 and bossCount<10) then -- if he reaches 10000
        bossPresent =true -- make the first boss present
        for k=1,objs.numChildren do
        objs[k].x=-200 -- set all obstacles off the screen
  end
end
    if (score>=100000 and score<=102000 and bossCount3<10) then -- if he reaches 100000
        bossPresent3 =true -- make the third boss present
        for k=1,objs.numChildren do
        objs[k].x=-200 -- set obstacles off the screen
  end
    end
    if (score>=25000 and score<=26500 and bossCount2<10) then -- if he reaches 25000
        bossPresent2 = true -- make the second boss present
        for k=1,objs.numChildren do
        objs[k].x=-200 -- set obstacles off the screen
  end
    end
if (run.y>300) then -- if runner is where he should be
    run:setSequence("run") -- set animation to run
    run:play() -- play animation
end
if (run.rotation>-180 and run.rotation<0) then -- if runner is slightly off angle
    run.rotation = run.rotation+5 -- slowly reset the angle
    elseif (run.rotation< 180 and run.rotation>0) then -- same
        run.rotation = run.rotation - 5 -- just other direction
end
if run.x<80 then -- if runner is too far left
    run.x=run.x+2 -- move him right
elseif run.x>80 then -- if runner is too far right
    run.x=run.x-2 -- move him left
end

if (bossPresent==false and bossPresent2==false and bossPresent3==false) then -- if no bosses are present
newObjLimit=600 -- set object limit
if (newObjLimit>450)then -- if object limit gets too big
    newObjLimit=450 -- set it back
end

    if (i==0 or obj.x == nil or obj.x>-100000)then -- if the object doesnt exist or is too far off
  --print("obs1")
        if(i==0 or obj.x==nil or obj.x<newObjLimit)then -- if object has already passed through
            if(num~=0)then -- make sure num isnt 0
            num = math.random(0,9) -- pick random number from 0-9
        else

            num = math.random(1,9) -- pick number from 1-9
        end
        if(i==1 and objs[1]~=nil and objs[1].x<-98 ) then -- if object did its job
            if (deadCount==0) then -- if runner isnt dead
                print(objs[1])
            objs[1]:removeSelf() -- remove the object to save ram
            --objs:remove(1)
              print("removed")
            end
        end
        if (num>6)then -- if the num is > 6
            if(math.random(1,1)==1)then
                print("POOOWWEEERR") -- will be a power up
                obj=makeObs(num) -- make an object based on that number
                objs:insert(obj) -- insert the object into the group
            else
                num = math.random(1,6) -- pick random number form one to 6
                obj=makeObs(num) -- make object corresponding to that number
                objs:insert(obj) -- insert object into the group
            end
        else
            obj=makeObs(num) -- make object corresponding to that number
            objs:insert(obj) -- insert object into the group
        end
         
        else
            for k=1,objs.numChildren do -- for all the objects
                moveObs(objs[k]) -- move them
            end
        end
        i=1 
    end
        score = score+1 -- score slowly increased
elseif (bossPresent==true)then -- if boss is present
    powerUps() -- remove powerups
    if(gMode==false)then -- if gmode is off
    autoOrbsActive=false
    starActive=false -- keep it off
else
    starActive=true -- keep it on
end
    bossBattle1() -- start boss battle
    elseif (bossPresent2==true) then --if second boss is present
        powerUps() -- remove powerups
if(gMode==false)then -- if gmode is off
    autoOrbsActive=false
    starActive=false -- keep it off
    else
    starActive=true -- keep it on
end
        bossBattle2() -- second boss battle
        elseif (bossPresent3==true) then -- if third boss is present
            powerUps() -- remove powerups
          if(gMode==false)then -- if gmode is not on
    autoOrbsActive=false
    starActive=false -- keep it off
    else
    starActive=true -- keep it on
end
            bossBattle3() -- play the third boss battle
    end
end
end
end
local function spriteListener( event ) -- track sprite actions
    if (event.phase=="began" and event.target.myName=="sun") then
    elseif (event.phase=="ended") then
   if (run.phase=="ended") then -- is run is done dooing whatever it was doing
        run:setSequence("run") -- set animation to run
        run:play() -- play animation
    end
end
end

local function onGlobalCollision( event ) -- collision listener, for all collisions
    if ( event.phase == "began" ) then -- if a collision happened
if (starActive==true) then -- if gmode is on
            if (event.object1.myName=="run" and event.object2.myName == "road")then -- runner is on road
                ground = true   
                if (run.sequence=="jump3" or run.sequence=="jump2") then -- if runner is jumping
                    run:setSequence("run") -- set animation to run
                    run:play() -- play animation
                end
            end
            if (event.object1.myName=="run" and event.object2.myName == "ramp")then -- if runner is on ramp
                ground = true
                print("RunRAMP")
                if (run.sequence=="jump3" or run.sequence=="jump2") then -- if runner is jumping
                    run:setSequence("run") -- set animation to run
                    run:play() -- play animation
                end
            end   
            if (event.object1.myName=="run" and event.object2.myName ~= "road" and event.object2.myName ~= "ramp" and event.object2.myName ~= "orb" and event.object2.myName ~= "monster")then -- if run is not in contact with these opjects
                event.object2:removeSelf() -- remove the second object
            end
            if (event.object1.myName=="boss" and event.object2.myName=="orb") then -- if an orb hits the boss
            event.object2:removeSelf() -- remove the orb
            score = score+100 -- raise the score
        end
                if (event.object1.myName=="monster" and event.object2.myName=="orb") then -- if orb hit the monster
            event.object2:removeSelf() -- remove orb
            score = score+100 -- raise score
        end
                if (event.object1.myName=="orb" and event.object2.myName=="monster") then -- same as last time
            event.object1:removeSelf()
            score = score+100
        end
        if (event.object1.myName=="king" and event.object2.myName=="orb") then -- if orb hits the king
            event.object2:removeSelf() -- remove orb
            score=score+100 -- raise score
        end
elseif (starActive==false) then -- if were not in gmode
    if (event.object1.myName=="run" and event.object2.myName == "star")then  -- if runner hits the star
        starActive = true   -- turn on gmode

        event.object2:removeSelf() -- remove the star
    end 
    if (event.object1.myName=="run" and event.object2.myName == "auto")then -- if runner hits auto powerup
        autoOrbsActive = true   -- automatic orbs is true
        event.object2:removeSelf() -- remove the powerup
    end
    if (event.object1.myName=="run" and event.object2.myName == "heartPower")then -- if runner hits the heart
         health = health +1 -- raise health
        lifeTable[health]=display.newImage("heart.png",140 +health*25,62) -- add a heart
            
            audio.play(lifeSound) -- play the live sound
        event.object2:removeSelf() -- remove the powerup
    end
    if (event.object1.myName=="run" and event.object2.myName == "road")then -- if runner is on the road
        ground = true   
        if (run.sequence=="jump3" or run.sequence=="jump2") then -- if hes jumping
            run:setSequence("run") -- set animation to run
            run:play() -- play animation
        end
    end
    if (event.object1.myName=="run" and event.object2.myName == "ramp")then -- in runner is on ramp
        ground = true
        if (run.sequence=="jump3" or run.sequence=="jump2") then -- if hes jumping
            run:setSequence("run") -- set animation to run
            run:play() -- play animation
        end
    end
        if (event.object1.myName=="ninja" and event.object2.myName == "orb")then -- if orb hits ninja
            event.object1:removeSelf() -- remove ninja
            event.object2:removeSelf() -- remove orb
        end
        if (event.object1.myName=="orb" and event.object2.myName == "ninja")then -- same
            event.object1:removeSelf()
            event.object2:removeSelf()
        end
        if (event.object1.myName=="boss" and event.object2.myName=="orb") then -- if orb hits boss
            event.object2:removeSelf() -- remove orb
            score = score+100 -- raise score
        end
                if (event.object1.myName=="monster" and event.object2.myName=="orb") then -- if orb hits monster
            event.object2:removeSelf() -- get rid of orb
            score = score+100 -- raise score
        end
                if (event.object1.myName=="orb" and event.object2.myName=="monster") then --same
            event.object1:removeSelf()
           score = score+100
        end
        if (event.object1.myName=="king" and event.object2.myName=="orb") then -- if orb hits king
            event.object2:removeSelf() -- remove orb
            score=score+100 -- raise score
        end
        if (event.object1.myName=="run" and event.object2.myName == "fire")then -- if runner gets hit by fire
            if (deadCount==0) then -- if hes not dead
            event.object2:removeSelf() -- remove the fire
            event.object1:setSequence("burn") -- set burn animation
            event.object1:play() -- play animation
            lifeTable[health]:removeSelf() -- remove heart
            health = health -1 -- lower health
            audio.play(lifeSound) -- play lifesound 
        end
        end
    if (event.object1.myName=="run" and event.object2.myName == "blackorb") then -- if kings orb hits runner
        event.object2:removeSelf() -- remove kings orb
        if (health==0) then -- fixing health bug by resetting things
            health=5
                            for i = 1, health, 1 do
    lifeTable[i] = display.newImage("heart.png",140 +i*25,62)
end
        end
        lifeTable[health]:removeSelf() -- remvoe a heart
        health = health-1 -- lower the health
        audio.play(lifeSound) -- play life sound
    end
    if (event.object1.myName=="orb" and event.object2.myName == "ogre")then -- if orb hits ogre
        event.object1:removeSelf() -- remove orb
            event.object2:removeSelf() -- remove ogrew
    end
    if (event.object1.myName=="ogre" and event.object2.myName == "orb")then -- same
        event.object1:removeSelf()
            event.object2:removeSelf()
    end
    if (event.object1.myName=="run" and (event.object2.myName=="ogre" or event.object2.myName=="spike" or event.object2.myName=="ninja" or event.object2.myName =="ceilingSpike")) then -- if runner hits something that can hurt him
        print (collisionCount)
        if (deadCount==0) then -- if hes not dead
            lifeTable[health]:removeSelf() -- remove a heart
            health = health-1 -- lower health
            audio.play(lifeSound) --play life sound
            monster.x=380 -- set monsters x
            run:setLinearVelocity(0,50) -- shoot runner forwad
        end
    end
        if (event.object1.myName=="run" and event.object2.myName == "monster" ) then -- if runner hits something that can hurt him
        print (collisionCount)
        if (deadCount==0 and collisionCount==0) then -- if hes not dead
            lifeTable[health]:removeSelf() -- remove a heart
            health = health-1 -- lower health
            audio.play(lifeSound) --play life sound
            monster.x=380 -- set monsters x
            run:setLinearVelocity(0,50) -- shoot runner forwad
            collisionCount = 1 -- up collision count
        end
    end
end
end
end

local road = display.newGroup() -- holds road blocks
local minRoad = 430 -- minimum road height
local maxRoad = 340 -- max road height
local roadLevel = minRoad -- roadlevel is minimum road height
for b = 1,8, 1 do -- make 8 road bloacks
    local newRoad = display.newImage("road.png") -- draw road picture
    physics.addBody(newRoad,"static",{bounce=0}) -- add physics body
    newRoad.name = ("road".. b) -- name road
    newRoad.myName="road" -- myname for it is road
    newRoad.id = b -- id is b
    newRoad.x = (b*79)-79 -- reset the x
    newRoad.y = roadLevel -- set the y
    road:insert(newRoad) -- insert road into group
end
function makeOrb() -- make an orb if necessary
    if (run.isPlaying==false and run.sequence=="shoot") then -- if run is done with shooting animation
    local orb = display.newImage("orb.png") -- draw orb picture

         orb.x, orb.y = run.x + 20,run.y - 5 -- sett x and y
         physics.addBody(orb,"dynamic",{filter={ groupIndex = -2  }}) -- make orb physics body
         orb.gravityScale = 0 -- remove gravity on orb
         orb:setLinearVelocity(300,0) -- shoot orb forward in x
         audio.play(orbSound) -- play orb sound
         run:setSequence("run") -- set runner animation to run
         run:play() -- play animation

         orb.myName="orb" -- name the orb orb
         print (speed)
    end
end
function makeSludge() -- kings attack
    if (king.frame==8 and king.sequence=="attack" and orbCount==0) then -- if king is in middle of attack animation
        local blackOrb = display.newImage("blackOrb.png") -- draw orb picture
        blackOrb.x = 180 -- set x
        blackOrb.y = 260 -- set y
        physics.addBody(blackOrb,"dynamic",{outline=blackOrbOutline,filter={groupIndex=-2}}) -- make orb a physics body
        blackOrb.myName = "blackorb" -- name it blackorb
        blackOrb.gravityScale = 0 -- remove gravity on the orb
        blackOrb:setLinearVelocity(-150, 0) -- shoot the orb left
        orbCount =1 -- count the orb as 1
    end
end
function makeFire() -- make fire if necessary
    if (boss.isPlaying==false and boss.sequence=="fight") then -- if boss is done fight sequence
                boss:setSequence("fight") -- set animation to fight
        boss:play() -- play animation
        local fire = display.newImage("Fire.png") -- draw fire picture
        fire.x,fire.y = 250,140 -- set x and y
        physics.addBody(fire,"dynamic",{radius=40,filter={groupIndex=-2}}) -- add physisc to fire
        fire.myName = "fire" -- name it fire
        fire.gravityScale=0 -- remove gravity
        fire:setLinearVelocity(math.random(-400,-100),math.random(-100,300)) -- shoot it in somewhat random direction
        boss:setSequence("land") -- set animation to landing
        boss:play() -- play animation
    end
    if (boss.isPlaying==false and boss.sequence=="die" and bossCount==81) then -- if boss is dying
        startShake() -- start shaking
        bossCount=82 -- get counter going
    end
end

function makeObs(num) -- makes the obstacles
        if (num==1) then
            local ceilingSpike = display.newImage("Celing-Spike.png",400,120) -- draw spike
            ceilingSpike.myName = "ceilingSpike"
        obj = ceilingSpike -- make the object spike
        ceilingSpike.x=1000  -- set x    
        ceilingSpike.y = 280    
        elseif (num==2) then          
            local ramp = display.newImage("ramp.png") -- draw ramp
            obj=ramp -- make the object the ramp
            ramp.myName="ramp" -- name it ramp
            ramp.x = 1000 
            ramp.y = 270
            physics.addBody(obj,"static",{shape ={-98,50,98,-50,98,50},filter={ groupIndex = -2  }}) -- add physics to ramp
        elseif (num==3) then           
            local engine = display.newImage("engine.png",200,180) -- draw engine
            obj=engine
            engine.x=1000
        elseif (num==4) then
            local metalSpike = display.newImage("Metal-Spike.png",400,280) -- draw ground spike
            metalSpike.myName="spike" -- name it spike
            obj=metalSpike -- make object the spike
            metalSpike.x=1000
        elseif (num==5) then           
            local ninja = display.newSprite(sheet_ninja,sequences_ninja) -- draw ninja as sprite
            obj = ninja -- make ninja the object
            obj.myName="ninja" -- name it ninja
            ninja.x=1000
            ninja.y=280
            physics.addBody(obj,"static",{density=0,filter={ groupIndex = 2  },shape = {-23,23,23,-23,23,23,-23,-23}}) -- add physics to ninja
            ninja:play() -- play animation
        elseif (num==0) then
            local nin= display.newRect(0,0,0,0) -- draw rectangle        
            obj=nin -- make object
             nin.x=-1
             nin.y=90
        elseif(num==6) then
            local ogre = display.newSprite(sheet_ogre,sequences_ogre) -- draw ogre sprite
            obj=ogre -- make object ogre
            ogre.myName = "ogre" -- name it ogre
            ogre.x =1000
            ogre.y = 224
            physics.addBody(obj,"static",{density=0,filter={ groupIndex = 2  },shape = {-40,-50,40,-50,40,90,-40,90}}) --  add physics
            ogre:play() -- play that animation
        elseif(num==7) then
            local star = display.newSprite(sheet_star,sequences_star) -- draw star sprite
            star.x=1000
            star.y=200
            star.myName="star" -- name it star
            star:play() -- play animation
            obj = star  -- make obj the star
        elseif(num==8) then
            local auto = display.newSprite(sheet_auto,sequences_auto) -- draw auto powerup as sprite
            auto.x=1000
            auto.y=200
            auto.myName="auto" -- name it auto
            auto:play() -- play animation
            obj = auto -- make object
        elseif(num==9) then
            local heartPower = display.newSprite(sheet_heartPower,sequences_heartPower) -- make star powerup as sprite
            heartPower.x=1000
            heartPower.y=200
            heartPower.myName="heartPower" -- name it heartpower
            heartPower:play() -- play animation
            obj = heartPower -- make obj heartpower
        end

        if (num ~= 5 and num ~= 2 and num ~=6) then
            physics.addBody(obj,"static",{density=0,friction=2,filter={ groupIndex = -2  }}) -- add physics to the obj
        end
    return obj -- return the object
end

function moveObs(obj) -- move object
   (obj):translate(speed*-1,0) -- just translate it based on the speed
end

function powerUps() 
    if (autoOrbsActive==true) then -- if automatic shoot powerup is active
        z=z+1
        r=r+1
        if(z==60)then --every two seconds
            run:setSequence("shoot") -- set animation to shoot
            run:play() -- play animation
        makeOrb() -- make an orb
        z=0
        end
        if(r==1000)then -- once counter raches 1000
            autoOrbsActive=false -- turn off autoshoot
            r=0 -- reset variable
        end
    end
    if (starActive==true) then -- if gmode is active
        z=z+1
        r=r+1
        if(z==120)then -- once count reacces 120 rest
            z=0
        end
        -- change colors of runner to look like super mario
        if (z<20) then run:setFillColor( 255/255,0,0 ) 
        elseif (z<40) then run:setFillColor( 255/255,255/255,0)
        elseif (z<60) then run:setFillColor( 0/255,255/255,0)
        elseif (z<80) then run:setFillColor( 0/255,255/255,255/255 )
        elseif (z<100) then run:setFillColor( 0, 127/255, 255/255)
        elseif (z<120) then run:setFillColor( 255/255, 0/255,127/255)
        end
        if(gMode==true)then -- if gmode is one
            G:setFillColor(0) -- make g black so you cant see it
        else
            if (r == 1000)then -- once count reaches
            run:setFillColor(0) -- set color of runner back to normal
            run:setFillColor(1)
            r=0 -- reset variable
            starActive=false -- turn off gmode
            end
        end
    end
end

function updateRoad(num) -- updates the road
for b = 1, road.numChildren, 1 do -- for loop for drawing road
local rand = math.random(1,25) -- pick random number
if(b > 1) then -- if it is any road block
    if (num~=0) then 
newX = (road[b - 1]).x + 79 -- next road will go right beside it
else
   newX = (road[b - 1]).x+ 316 + 79 -- make a gap
end
else
newX = (road[8]).x + 79 - speed -- base speed of how far it need to be
end
local newY = roadLevel -- change the y
if((road[b]).x < -40) then -- if road is off the screen
(road[b]).x, (road[b]).y = newX, newY -- give it a new x and y
else
(road[b]):translate(speed*-1,0) -- move it based on the speed
end

end
end
-- add all the listeners
run:addEventListener( "sprite", spriteListener )
backgroundfar.enterFrame = scrollBG
Runtime:addEventListener("enterFrame",backgroundfar)
street.enterFrame = scrollBG
Runtime:addEventListener("enterFrame",street)
street2.enterFrame = scrollBG
Runtime:addEventListener("enterFrame",street2)
bgfar2.enterFrame = scrollBG
Runtime:addEventListener("enterFrame",bgfar2)
sun: addEventListener("touch",myTouchListener)
pause: addEventListener("touch",myTouchListener)
G: addEventListener("touch",myTouchListener)
run:addEventListener( "touch", myTouchListener )  --add a "touch" listener to the object
run.collision = onLocalCollision
run:addEventListener( "collision", run )
Runtime:addEventListener( "collision", onGlobalCollision )
end
function reset() -- reset all the variables
lifeTable = {}
speed = 3
count = 0
shakeCount = 0
xShake = 8
yShake = 4
shakePeriod = 2
score = 5000
bossPresent = false
bossCount = 0
bossCount2 = 0
bossPresent2 = false
bossNumber = 0
monsterCount = 0
monsterAttacking = false
health = 1
soundCount = 0
deadCount = 0
lifeCount = 0
lifeSound = audio.loadSound("lostLife.wav")
orbSound = audio.loadSound("orb.wav")
jumpSound = audio.loadSound( "jump.wav" )
roarSound = audio.loadSound( "roar.wav" )
roarSound = audio.loadSound( "roar.wav" )
bossSound = audio.loadSound( "boss.wav" ,{channel=1,loops=-1})
backgroundSong = audio.loadSound ("default.mp3",{loops=-1})
Runtime:removeEventListener( "sprite", spriteListener  )
Runtime:removeEventListener( "enterFrame",scrollBG)
Runtime:removeEventListener( "enterFrame",street )
Runtime:removeEventListener("enterFrame",street2 )
Runtime:removeEventListener( "enterFrame",bgfar2 )
Runtime:removeEventListener( "touch",myTouchListener)
Runtime:removeEventListener(  "collision", run)
Runtime:removeEventListener(  "collision", onGlobalCollision  )
end
--menu()
