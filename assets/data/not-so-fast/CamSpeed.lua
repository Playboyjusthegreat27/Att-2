function onUpdate()
if getProperty('camGame.zoom') >= 1.1 then

setProperty('cameraSpeed', 5)

end


if getProperty('camGame.zoom') <= 0.9 then

setProperty('cameraSpeed', 1)

end


end