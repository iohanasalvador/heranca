local composer = require("composer")
local scene = composer.newScene()

function scene:create(event)
    local sceneGroup = self.view

    local background = display.newImageRect(sceneGroup, "assets/capa.png", display.contentWidth, display.contentHeight);
    background.x = display.contentCenterX
    background.y = display.contentCenterY

    local nextButton = display.newText(sceneGroup, "Próximo", 428, 1003, native.systemFont, 14);
    nextButton:setFillColor(0, 0, 0, 0.1);

    nextButton:addEventListener("tap", function()
        composer.gotoScene("pags.contracapa", {
            effect = "slideLeft",
            time = 500
        });
    end)

end

scene:addEventListener("create", scene)

return scene
