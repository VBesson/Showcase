/* 360 views Atlas renderer v0_1
	
	
	By Valentin Besson 
	https://www.linkedin.com/in/vbesson/
	https://www.artstation.com/artist/valentinbesson
	https://github.com/VBesson
	
	feel free to contact me at
	v.besson@rubika-edu.com
	
*/

// Spinners yet to implement.
// Viewer closure toggling yet to implement



rollout threeSixty "360AtlasRenderer" width:162
(
	button 'btn' "Go Go 360" pos:[6,11] width:142 height:68 align:#left
	spinner 'spn3' "StepsX" type:#integer pos:[35,101] width:120 height:16 align:#left
	spinner 'spn5' "StepsY" type:#integer pos:[35,122] width:120 height:16 align:#left
	
	
	On btn pressed do
		(
			i = 0;
			j = 0;
			inX = 0;
			inY = 0;
			
			StepAmnt = 8;
			
			ArrMap = #() -- empty array
			
			while (i < StepAmnt) do
			(
				
				print i;
				while (j < StepAmnt) do 
				(
					--currentFrame = i * StepAmnt + j;
					
					
					
					for o in $ do ( o.rotation += EulerToQuat(EulerAngles 0 0 45)/*o.rotation.z_rotation = inY; */	)
					
					tempMap = bitmap 256 256 numframes:1; -- stock each image in frame, temporarly
		
					-- f_name = ("C:\Users\v.besson\Pictures\RenderTmp\ " + (i as string) + " " + (j as string) + ".png")
					render camera:$Camera001 frame:1 to:tempMap
					append ArrMap tempMap -- Put the image in the Array
					close tempMap -- close the preview
					
					-- tempMap.filename = f_name;
					-- save tempMap frame:currentFrame
					-- close tempMap
					
					print (inY as string) + "j";
					j+=1;
					inY += 45;
		
				)	-- whike J
				
				
				inX += 45;
				for o in $ do
				(
					-- o.rotation.y_rotation = inX; -- local rotation has gimbal (?) issues
					o.rotation += EulerToQuat(EulerAngles 45 0 0)
				)
				j = 0;
				inY = 0;
				i+=1;
	
			)	 -- while I
		
			
			-- GATHERING PROCESS
			
			finalmap = bitmap 2048 2048; -- gather each frames in one.
			
			i = 0;
			Coord = [0, 0]
			
			print "fillingProcessBegins";
			
			inX = 0;
			inY = 0;
			
			
			
			while(inX < 8) do (
				
				while(inY < 8) do (
					
					pasteBitmap ArrMap[inX*8 + inY + 1 /*must be positive*/] finalmap (point2 0 0) (point2 (inY * 256) (inX * 256));
					inY += 1;
						print " " + (inY as string)
					)
				print inX
				inX +=1;
					inY = 0;
			)
			
			
			
			
			
			RowAmnt = StepAmnt*StepAmnt*256
			
			
			
			
			/*
			while i < RowAmnt do -- filling process
			(
				print (i as string);
				
				Coord.x = 0; -- start of row
				Coord.y = mod(i 256); -- implying frames are contiguous
				
				px = getPixels ArrMap[mod(i 256)] Coord 256 ; -- always access full row (256)
				
				print (px as string);
				
				--Reuse of Coord
				Coord.x = (mod(floor(i / 256) * 256) (256*8));
				Coord.y = (mod i 256)+(floor(i/256/8))*256;
				setPixels finalmap Coord px;
				
				i+= 1;
			)
			*/
			
			f_name = "E:\PIctures\Atlas.png"
			display finalMap;
			finalMap.filename = f_name;
			print "saving";
			save finalMap
			display finalMap;
			close finalMap
		
		) -- on pressed
	
	
)
createDialog threeSixty

