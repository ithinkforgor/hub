local me = game.Workspace.Jack257_BackWithHax
local meroot = me.HumanoidRootPart

game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(v)
	if v:byte() == 114 then
		if meroot.Anchored == true then
			
			for i,v in pairs(me.Humanoid:GetPlayingAnimationTracks()) do
				v:Play()
			end
			meroot.Anchored = false
		else
			
			for i,v in pairs(me.Humanoid:GetPlayingAnimationTracks()) do
				v:Stop()
			end
			meroot.Anchored = true
		end
	end
end)

--R