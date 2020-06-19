PauseState = Class{__includes = BaseState}

function PauseState:enter()
    scrolling = false
end

function PauseState:exit(key)
    function PauseState:exit()
        if love.keyboard.wasPressed('p') then
            scrolling = true
            gStateMachine:change('countdown')
        end
    end
end