artistPhrases = {"To find, is the thing.-Pablo Picasso", "The spectator makes the picture.- Marcel Duchamp", "Color is a power which directly influences the soul-Kandinsky"}

require("L5")

function setup()
   size(800, 600)

     -- All of my paintings I created in Adobe Photoshop in my assets folder
   Painting1 = loadImage("assets/Painting1.png")
   Painting2 = loadImage("assets/Painting2.png")
   Painting3 = loadImage("assets/Painting3.png")
   Painting4 = loadImage("assets/Painting4.png")
   Painting5 = loadImage("assets/Painting5.png")
   Painting6 = loadImage("assets/Painting6.png")
   Painting7 = loadImage("assets/Painting7.png")
   Painting8 = loadImage("assets/Painting8.png")

Painting = {Painting1, Painting2, Painting3, Painting4, Painting5, Painting6, Painting7, Painting8}
paintingOrder = 1
     -- Starting positions of the picture frames created here
   x1 = 50
   y1 = 50

   x2 = 250
   y2 = 70

   x3 = 370
   y3 = 50

   x4 = 630
   y4 = 50

   x5 = 70
   y5 = 300

   x6 = 350
   y6 = 220

   x7 = 210
   y7 = 450

   x8 = 600
   y8 = 330

  -- background color setup for changing color random command (else/if) 
   backgroundColor = 1
   artistPhrase = 1
end 

function draw()

   -- background colors using randomization (else/ if) and then later using mousePressed to create the command
  if backgroundColor < 2 then
   background(0, 102, 255)      -- Blue
elseif backgroundColor < 3 then
   background(255, 20, 147)     -- Pink
else
   background(255, 102, 0)      -- Orange
end

--Use of for loop: I am using two for loops to create decorativness to the background of my piece
    for i = 1, 10, 1 do
        fill(255, 255, 255)
        circle(i * 70, 590, 5)
    end

    for i = 1, 10, 1 do
        fill(255, 255, 255)
        circle(i * 70, 10, 5)
    end

if paintingOrder == 1 then
    Painting = {Painting1, Painting2, Painting3, Painting4,
                 Painting5, Painting6, Painting7, Painting8}

elseif paintingOrder == 2 then
    Painting = {Painting4, Painting1, Painting7, Painting2,
                 Painting8, Painting3, Painting5, Painting6}

else
    Painting = {Painting6, Painting8, Painting2, Painting5,
                 Painting3, Painting7, Painting1, Painting4}
end

   -- painting 1: Large square
  x1 = 50
y1 = 50

    fill(90, 60, 50)
    rect(x1, y1, 160, 160)

    fill(245, 220, 190)
    rect(x1 + 10, y1 + 10, 140, 140)

image(Painting[1], 60, 60, 140, 140)

   -- painting 2: Small vertical
   fill(90, 60, 50)
   rect(250, 70, 80, 140)

   fill(245, 220, 190)
   rect(260, 80, 60, 120)

image(Painting[2], 260, 80, 60, 120)

   -- painting 3: Wide horizontal
   fill(90, 60, 50)
   rect(370, 50, 200, 100)

   fill(245, 220, 190)
   rect(380, 60, 180, 80)

image(Painting[3], 380, 60, 180, 80) 

   -- painting 4: Tall vertical
   fill(90, 60, 50)
   rect(630, 50, 100, 200)

   fill(245, 220, 190)
   rect(640, 60, 80, 180)

image(Painting[4], 640, 60, 80, 160)

   -- painting 5: Small square
   fill(90, 60, 50)
   rect(70, 300, 100, 100)

   fill(245, 220, 190)
   rect(80, 310, 80, 80)

image(Painting[5],80, 310, 80, 80)

   -- painting 6: Large center
   fill(90, 60, 50)
   rect(350, 220, 180, 200)

   fill(245, 220, 190)
   rect(360, 230, 160, 180)

image(Painting[6], 360, 230, 160, 180)

   -- painting 7: Bottom horizontal
   fill(90, 60, 50)
   rect(210, 450, 200, 100)

   fill(245, 220, 190)
   rect(220, 460, 180, 80)

image(Painting[7], 220, 460, 180, 80)

   -- painting 8: Right square
   fill(90, 60, 50)
   rect(600, 330, 130, 130)

   fill(245, 220, 190)
   rect(610, 340, 110, 110)

image(Painting[8], 610, 340, 110, 110)

fill(255, 255, 255)
textSize(16)
if artistPhrase < 2 then
    text(artistPhrases[1], 200, 570)
elseif artistPhrase < 3 then
    text(artistPhrases[2], 200, 570)
else
    text(artistPhrases[3], 200, 570)
end

end
--what makes the paintings move around on the frames in the order that I want them to. 
function mousePressed()
  
--My three random functions at play
backgroundColor = random(1, 4)
paintingOrder = random({1, 2, 3})
artistPhrase = random(1, 4)
end

function keyPressed()
    save("MyArtwork.png")
end






