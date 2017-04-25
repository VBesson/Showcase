/*
// copyright Valentin Besson 2017
//version 1.0

// Further ideas: 
	Add texture map gestion (for maps that was put by the User)
	Add Center of rotation droplist selecter (default should be world origin, and not each object's pivot)
	Add AO control (intensity, contrast, etc)
*/


macroScript VBess
	category:"VBesson" 	
	buttonText:"360Render"	
	toolTip:"360RenderTool"
(
	rollout threeSixty "360AtlasRenderer" width:162
	(		
		button 'btn' "Go Go 360" pos:[9,11] width:142 height:68 align:#left
		label 'lab' "Press Escape to" 
		label 'lab2' "emergency stop rendering"
		
		button 'consign' "How to use" pos: [9, 140] width:142 
		
		spinner 'PicSize' "ImageSize" range: [4, 512, 256] type:#float pos: [12, 170] width: 120 height:20 align: #left
		
		spinner 'StepX' "StepsX" range: [1, 128, 1] type:#integer width:60 height:16 align:#right
		spinner 'StepY' "StepsY" range: [1, 128, 1] type:#integer width:60 height:16 align:#right
		
		
		-- checkbox 'Viz' -- is it CheckBox?
		
		
		
		On btn pressed do
			(
				
				--SecurityChecks
				
				-- Security Check: is PicSize a power of two?
				Sq = 1
				Okay = false
				while(Sq != 0) do(
					Sq += 1
					if(PicSize.Value == pow 2 Sq) do (Okay = true; Sq = 0)
					
					if(Sq == 10) do Sq = 0;
				)
				if(Okay == false) do ( Okay = queryBox "You filled the ImageSize value with a non-power of two number. Do you really want to render?" title: "Unusual ImageSize" beep:true)
				if(Okay == false) then (messageBox "You cancelled the rendering" title: "Rendering Aborted" beep: false) else (
				-- Secuity Check: will the outputted image be reasonable for 2017 game engines?
				if (((PicSize.Value*StepX.Value) > 8192) or ((PicSize.Value*StepY.Value) > 8192)) do ( Okay = queryBox "The outputted Atlas image resolution will be superior to 8K. Do you really want to render?" title: "warning: huge Image output" beep:true)
				if(Okay == false) then (messageBox "You cancelled the rendering" title: "Rendering Aborted" beep: false) else (
				-- Checkings done
					
				
					
					
					
					
					-- ALGORITHM Setup
				(
					--RendererSetup
				renderers.current = 	mental_ray_renderer ()
					
					--MaterialsSetup
						-- A. make remplacement materials
					NorMat = mrMaterial () -- do not forget these brackets after the class call or it won't be a constructor !
					(
						-- Maxscript doc needs investigations!
						-- http://help.autodesk.com/view/3DSMAX/2017/ENU/index.html?guid=__files_GUID_D8C6EE99_784E_4CC1_A3A6_448CD18053AC_htm
						-- http://docs.autodesk.com/MENTALRAY/2015/ENU/mental-ray-help/files/shaders/reference/occlusion.html#mi_shader__mib_bent_normal_env
							-- http://docs.autodesk.com/3DSMAX/16/ENU/MAXScript-Help/index.html?url=files/GUID-ACB9748A-C89B-46CA-87E2-97F1DC9245BD.htm,topicNumber=d30e792821
						
						
						tmpNMap = Ambient_Reflective_Occlusion__3dsmax () 
						tmpNMap.output_mode = 4 				-- 'coordinate space' in Mr documentation is like 'type' in Max material editor
						tmpNMap.occlusion_in_alpha = true 	-- stores AO in alpha channel ! 
						
						NorMat.Surface = tmpNMap;
					)
					DifMat = mrMaterial()
					(
						-- http://docs.autodesk.com/3DSMAX/16/ENU/MAXScript-Help/index.html?url=files/GUID-8BAFF875-2AB6-4885-AA93-C05D30A59841.htm,topicNumber=d30e807807
						
						tmpTex = Gradient()  -- Default is White color
						
						
						 DifMat.Surface = tmpTex
					)
					
					
					
						--B. store current materials et set remplacement materials instead.
				ObjIndex = #()
				OldMat = #()
				ObjIndex = for o in $ collect o
				OldMat for o in ObjIndex collect o.material
				
				-- Iterators	
				i = 0;
				j = 0;
				
				--Increment by rotation step
				IncX = 360/StepX.Value
				IncY = 360/StepY.Value
				
				
				--TmpImages arrays
				ArrMapN = #() -- empty array, which will be filled with images
				ArrMapD = #() -- empty array, which will be filled with images
				
				MatArr = #(NorMat, DifMat) -- Array containing each material pass, to compact the code.
				MapArrs = #(ArrMapN, ArrMapD) -- 2D array, to compact the code. Must correspond to MatArr
				
				RenderStopped = false -- Allows user to stop rendering during process
						
						
					
						
						
				
				) -- Algorithm setup end
					
					
					
					--
				--
				--
					-- ALGORITHM in itself
									
				while ((i < StepX.value) and (RenderStopped == false)) do
				(
					
					print i;
					while ((j < StepY.value) and (RenderStopped == false)) do 
					(
						--currentFrame = i * StepAmnt + j;
						
						
						for o in $ do ( o.rotation += EulerToQuat(EulerAngles 0 0 IncY)/*o.rotation.z_rotation = inY; */	)
						
						tempMap = bitmap PicSize.Value PicSize.Value numframes:1; -- stock each image in frame, temporarly
						
						T = 0
						while(T < MapArrs.count and (RenderStopped == false)) do
						(
							T +=1;
							
							for o in ObjIndex do(
								o.material = MatArr[T])
							-- f_name = ("C:\Users\v.besson\Pictures\RenderTmp\ " + (i as string) + " " + (j as string) + ".png")
							render camera:$Camera001 frame:1 to:tempMap cancelled: &RenderStopped 
							append MapArrs[T] tempMap -- Put the image in the Array
							close tempMap -- close the preview
							
							
						)
						
						
						-- tempMap.filename = f_name;
						-- save tempMap frame:currentFrame
						-- close tempMap
						
						print j;
						j+=1;
			
					)	-- whike J
					
					
					for o in $ do
					(
						-- o.rotation.y_rotation = inX; -- local rotation has gimbal (?) issues
						o.rotation += EulerToQuat(EulerAngles IncX 0 0)
					)
					j = 0;
					i+=1;
		
				)	 -- while I
				
				if(RenderStopped == false) then(
				
				-- GATHERING PROCESS
				
				
				DimX = StepX.Value * PicSize.Value
				DimY = StepY.Value * PicSize.Value
				
					--Generate as much final maps as needed. They will gather each corresponding temp map in one atlas.
				finalmaps = #()
					T = 0
					while(T < MapArrs.count) do(
						T +=1
						finalmap = bitmap DimX DimY;
						append finalmaps finalmap
					)
				
				i = 0;
				Coord = [0, 0]
				
				print "fillingProcessBegins";
				
				inX = 0;
				inY = 0;
				
				
				-- Juxtaposing each tempMaps in their respective final maps to make atlas(es)
				while(inX < StepX.Value) do (
					
					while(inY < StepY.Value) do (
						
							T = 0
							while(T < MapArrs.count) do(
								T = T + 1
								print ("T= " + (T as string))
								pasteBitmap MapArrs [T] [inY*StepX.Value + inX + 1 /* because index starts at 1*/] finalmaps [T] (point2 0 0) (point2 (inX * PicSize.Value) (inY * PicSize.Value));
								
								)
							inY += 1;
							print (inY as string)
						)
					
					inX +=1;
					inY = 0;
					print inX
				)
				
				T = 0
				while(T < MapArrs.count) do (
					T+=1
					
					f_name = "E:\PIctures\Atlas" + (T as string) + ".png";
					finalmaps[T].filename = f_name;
					print ("saving " + (T as string));
					save finalmaps[T]
					display finalmaps[T]
					sleep 1.0
					close finalmaps[T]
				)
				
				
			) -- if renderStopped was false
		) -- Outputted image size check
		) -- imageSize value check
			
			) -- on pressed
			
			
			




			-- Reset each object rotation, in its own transform space
			button 'resRot' "Reset Selection Rotation"
		
		
		On consign pressed do
			(
				messageBox "First, select the object you want to render. This object will rotate on its pivot during rendering \nThen enter the desired parameters and press 'Go Go 360'. " title: "how to use 360AtlasRenderer"
			)
			
		On resRot pressed do
		(
			for o in $ do (o.rotation = EulerToQuat(EulerAngles 0 0 0) )
		)
		
	)
	createDialog threeSixty width:160

)