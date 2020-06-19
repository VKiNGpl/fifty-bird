Cup = Class{}

-- include cup image files
local GOLD_CUP = love.graphics.newImage('gold.png')
local SILVER_CUP = love.graphics.newImage('silver.png')
local BRONZE_CUP = love.graphics.newImage('bronze.png')

function Cup:init(score)
    if score > 5 and score < 10 then
        self.image = BRONZE_CUP
    elseif score >= 10 and score < 13 then
        self.image = SILVER_CUP
    elseif score >= 13 then
        self.image = GOLD_CUP
    end
    
    self.x = VIRTUAL_WIDTH / 2 - CUP_WIDTH / 2
    self.y = VIRTUAL_HEIGHT / 2 - CUP_HEIGHT / 2
end

function Cup:render()
    love.graphics.draw(self.image, self.x, self.y)
end