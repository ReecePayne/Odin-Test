package game

import rl "vendor:raylib"

main ::proc() 
{
	rl.InitWindow(1920, 1080, "TestGame")
	player_pos := rl.Vector2  {  960 , 540 }
	player_vel: rl.Vector2

	for !rl.WindowShouldClose() 
	{
		rl.BeginDrawing()
		rl.ClearBackground({0 , 0 , 0  ,  255})

	
		if rl.IsKeyDown(.A) 
		{
			player_vel.x = -300
		}
		else if rl.IsKeyDown(.D)
		{
			player_vel.x = 300
		}
		else
		{
			player_vel.x = 0
		}

		if rl.IsKeyDown(.W)
		{
			player_vel.y = -300
		}
		else if rl.IsKeyDown(.S)
		{
			player_vel.y  = 300
		}
		else
		{
			player_vel.y = 0
		}

		player_pos += player_vel * rl.GetFrameTime()

		


		rl.DrawRectangleV(player_pos, {64, 64}, {160, 32, 240, 255})

		rl.EndDrawing()
	}

	rl.CloseWindow()
}