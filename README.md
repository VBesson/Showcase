PortFolio
=======
Valentin Besson 2017
Showcase project for portefolio


360 Atlas Generator
-------------

Maxscript macro opening a rollout that renders and packs in an atlas image file a specified number of renders from some objects. Each render is shot from a specific view angle. 
Then, in Unity, the Atlas image file can be used by the billboard shader to display only the shot corresponding to the current camera view angle.

![screenshot] (http://i.imgur.com/NupiYKM.png)



TerrainPainter
-------------

Unity Scripts
City builder game project. I'm feeling a bit funny about this project, as my work so far on it was focused on learning how to use the textures for stocking data via the use of cameras render Texture, that would then be altered by compute shaders. Now, I realise all the work can be handled by compute shaders. 
This project is then a very rough and un-optimized concept that I fully re-orient into a compute-shader experiment soon.

Start event: redimensionning terrain planes to fit parameters. Alters UVs so they are normalized in a ortho-normed space, where 1 corresponds to the nearest superior power of 2 value in world-space units.
Update: Spawning items when player clicks on the terrain plane. The instanced items are set on another render layer and are then rendered to texture. This texture is used in the terrain shader (which is rendered to screen) to mask constructed areas. They could also be used for Flow Field generation, or for displaying specific data on the terrain (like water suppling, remaining food in each house, or any City-builder related data)

![gif] (https://media.giphy.com/media/3oKIPA3EXcVlCGeHO8/giphy.gif)
![screenshot] (http://i.imgur.com/SRbpAnq.png)

GroomGlue
-------------

ShaderLab / Unity CG shader
I've done this little shader as extern on The Key, my friend's fifth year project at Supinfogame.
This Thriller / Shining ambiance project happens in an Hostel. Some ennemy - the grooms - may walk through the walls. They wanted them to look like they would glue-stick to the walls. 
Then, this shader basically uses a cartesian Plane coordinate to offset the groom's vertices nearest to the wall.


CurvedWorld
-------------

ShaderForge Shader
This shader is inspired by Animal Crossing and the curvedWorld Unity Plugin.
It curves the terrain and the items so that the world seems to be exaggeratedly curved like the top of a planet. 
This is a completely GPU process that does not interfer with CPU gameplay and physic computation, allowing the Game Designer to keep thinking the game on a planar dimension.
However, if another feature would use the Zdepth pass for whatever reason, the shader should contain a supplementary pass to render the Zdepth without any vertex offset.
I'd like to insert this feature in the standard Unity Shader eventually.

![gif] (https://media.giphy.com/media/3oKIPA3EXcVlCGeHO8/giphy.gif)



Nomenclature - folders
-------------
Each project folder start by a capital letter couple that corresponds to the project nature:

AA_ projects are experimental ensemble of features or systems I have been working on with a lot of freedom to push them as far as I can.
AB_ projects are commission and freelance works I have been allowed to showcase. They are usually small features.
AC_ projects are features extracted from cancelled projects. Maybe would they resurrect one day or another?


Compatibility
-------------


3DSmax 2017
Unity 5.5.1
(for every currently available projects)
