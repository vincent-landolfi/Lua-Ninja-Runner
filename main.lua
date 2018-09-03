-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here
counter = 0
k = 0
x = " "
y = " "
z = " "
h = " "
username = "vincent"
password = "Buddy123"
username2 = "stl"
password2 = "compsci"
local backgroundMusic = audio.loadStream( "D12-Purple pills -mrtzc.ch.mp3" )
local myImage = display.newImage( "background.jpg" )
local myText = display.newText( "Password Application", 160, 20, native.systemFont, 24 )
myText:setFillColor( 1, 0, 0 )
local myText5 = display.newText( "Welcome!", 160, 150, native.systemFont, 24 )
myText5:setFillColor( 1, 0, 0 )
local myText6 = display.newText( "Try Again", 160, 80, native.systemFont, 24 )
myText6:setFillColor( 1, 0, 0 )
local myText7 = display.newText( "Invalid User", 160, 80, native.systemFont, 24 )
myText7:setFillColor( 1, 0, 0 )
myText7.isVisible = false
myText6.isVisible = false
myText5.isVisible = false
local myText1 = display.newText( "Username", 50, 170, native.systemFont, 12 )
myText1:setFillColor( 1, 0, 0 )
local myText2 = display.newText( "Password", 50, 210, native.systemFont, 12 )
myText2:setFillColor( 1, 0, 0 )
local myText3 = display.newText( "Status:", 40, 130, native.systemFont, 12 )
myText3:setFillColor( 1, 0, 0 )
local myText4 = display.newText( "Status:", 180, 130, native.systemFont, 12 )
myText4:setFillColor( 1, 0, 0 )
local question = display.newText( "What is your dog's name?", 160, 310, native.systemFont, 12 )
question:setFillColor( 1, 0, 0 )
question.isVisible = false
local question2 = display.newText( "What is your street name?", 160, 310, native.systemFont, 12 )
question2:setFillColor( 1, 0, 0 )
question2.isVisible = false
local question3 = display.newText( "What is your dad's name?", 160, 310, native.systemFont, 12 )
question3:setFillColor( 1, 0, 0 )
question3.isVisible = false
local whichText = display.newText( "For which User?", 160, 310, native.systemFont, 12 )
whichText:setFillColor(1,0,0)
local resetq = display.newText( "Enter new password", 160, 310, native.systemFont, 12 )
resetq:setFillColor( 1, 0, 0 )
resetq.isVisible = false
local resetBox = native.newTextField(160,340,200,25)
resetBox.isVisible = false
resetBox:addEventListener("userInput", resetBox) 
local feedback = display.newText("", 100, 130,native.systemFont, 12)
local feedback1 = display.newText("", 240, 130,native.systemFont, 12)
local txtUser = native.newTextField(190,170,200,25)
txtUser:addEventListener("userInput", txtUser)
local txtPass = native.newTextField(190,210,200,25)
txtPass:addEventListener("userInput", txtPass)
local whichUser = native.newTextField(160,340,200,25)
whichUser:addEventListener("userInput", whichUser)
whichText.isVisible = false
whichUser.isVisible = false
local questionBox = native.newTextField(160,340,200,25)
questionBox:addEventListener("userInput", questionBox)
local questionBox2 = native.newTextField(160,340,200,25)
questionBox2:addEventListener("userInput", questionBox2)
local questionBox3 = native.newTextField(160,340,200,25)
questionBox3:addEventListener("userInput", questionBox3)
questionBox.isVisible = false
questionBox2.isVisible = false
questionBox3.isVisible = false
local widget = require( "widget" )

-- Function to handle button events
local function handleButtonEvent( event )
    if ( "ended" == event.phase ) then
        whichText.isVisible = true
        whichUser.isVisible = true

    end
end
local function btn( event )
    if ( "ended" == event.phase ) then
        

    end
end
-- Create the widget
local button1 = widget.newButton
{
    label = "button",
    onEvent = handleButtonEvent,
    emboss = false,
    --properties for a rounded rectangle button...
    shape="roundedRect",
    width = 200,
    height = 40,
    cornerRadius = 2,
    fillColor = { default={ 1, 0, 0, 1 }, over={ 1, 0.1, 0.7, 0.4 } },
    strokeColor = { default={ 1, 0.4, 0, 1 }, over={ 0.8, 0.8, 1, 1 } },
    strokeWidth = 4
}
local button2 = widget.newButton
{
    label = "test",
    onEvent = btn,
    emboss = false,
    --properties for a rounded rectangle button...
    shape="roundedRect",
    width = 200,
    height = 40,
    cornerRadius = 2,
    fillColor = { default={ 1, 0, 0, 1 }, over={ 1, 0.1, 0.7, 0.4 } },
    strokeColor = { default={ 1, 0.4, 0, 1 }, over={ 0.8, 0.8, 1, 1 } },
    strokeWidth = 4
}

-- Center the button
button1.x = 160
button1.y = 270
button2.x = 160
button2.y = 350
button2:setLabel("Go Back")
button2.isVisible = false
-- Change the button's label text
button1:setLabel( "Reset Password" )
-- listener
function txtUser:userInput(event)
    if event.phase == "began" then
    event.target.text = ""
    feedback.text = "Waiting"
    elseif event.phase == "submitted" then
x = event.target.text
    feedback.text = "Submitted"
    elseif event.phase == "editing" then
    feedback.text = event.startPosition
    end
print (x)
end
function resetBox:userInput(event)
    if event.phase == "submitted" then
	if (k == 0) then
	password = event.target.text
	else
	password2 = event.target.text
	end
	print (password)
	resetq.isVisible = false
	resetBox.isVisible = false
    end
end
function txtPass:userInput(event)
    if event.phase == "began" then
    event.target.text = ""
    feedback1.text = "Waiting"
    elseif event.phase == "submitted" then
    feedback1.text = "Submitted"
	print (password)
    y = event.target.text
if ( (username == (string.lower(x)) and password == y) or (username2 == x and password2 == y)) then
        feedback.isVisible = false
    myText1.isVisible = false
    myText2.isVisible = false
    myText3.isVisible = false
    myText4.isVisible = false
myText6.isVisible = false
    feedback1.isVisible = false
    txtUser.isVisible = false
    txtPass.isVisible = false
    myText5.isVisible = true
    button1.isVisible = false
button2.isVisible = true
button2.isVisible = true
    audio.play( backgroundMusic )
    else
    myText6.isVisible = true
    event.target.text = ""
txtUser.text = ""
native.setKeyboardFocus(nil)
counter = counter+1
	if (counter >= 3) then
	os.exit()
end
end
    elseif event.phase == "editing" then
    feedback1.text = event.startPosition
    end
end

function whichUser:userInput(event)
if event.phase == "submitted" then
if (event.target.text == username or event.target.text == username2) then
	if (event.target.text == username) then
	k = 0
	else
	k = 1
	end
	whichUser.isVisible = false
	whichText.isVisible = false
	question.isVisible = true
	questionBox.isVisible = true
	myText7.isVisible = false
else
event.target.text = ""
myText7.isVisible = true
end
end
end
function questionBox2:userInput(event)
if event.phase == "submitted" then
if (event.target.text == "red rock drive") then
	question2.isVisible = false
	questionBox2.isVisible = false
	question3.isVisible = true
	questionBox3.isVisible = true
	myText6.isVisible = false
else
event.target.text = ""
myText6.isVisible = true
end
end
end
function questionBox3:userInput(event)
if event.phase == "submitted" then
if (event.target.text == "mario") then
	question3.isVisible = false
	questionBox3.isVisible = false
	resetq.isVisible = true
	resetBox.isVisible = true
	myText6.isVisible = false
else
event.target.text = ""
myText6.isVisible = true
end
end
end
function questionBox:userInput(event)
    if event.phase == "began" then
    elseif event.phase == "submitted" then
print (event.target.text)
    if (event.target.text == "buddy") then
	questionBox.isVisible = false
	question.isVisible = false
	myText6.isVisible = false
	questionBox2.isVisible = true
	question2.isVisible = true
    else 
	myText6.isVisible = true
	event.target.text = ""
end
    elseif event.phase == "editing" then
    end
end

function myImage:tap(event)
	native.setKeyboardFocus(nil)
end
myImage:addEventListener("tap",myImage)
