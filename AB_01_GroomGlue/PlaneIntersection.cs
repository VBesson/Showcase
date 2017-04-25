/* PlaneIntersection v0_1
	
	
	By Valentin Besson 
	https://www.linkedin.com/in/vbesson/
	https://www.artstation.com/artist/valentinbesson
	https://github.com/VBesson
	
	feel free to contact me at
	v.besson@rubika-edu.com
	
*/

using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlaneIntersection : MonoBehaviour {

    private Material GroomMat;
    

    public Transform Plane;

	// Use this for initialization
	void Start () {

        Vector4 PlaneEquation = new Vector4(Plane.up.x,
                                                  Plane.up.y,
                                                  Plane.up.z,
                                                  -Vector3.Dot(Plane.up, Plane.position)); // Getting dat damn Planar Equation, mtfckerrrrrzz (yes Bapt'/Aug'/Dude, it's late at now)

        GroomMat = GetComponent<Renderer>().material;
        GroomMat.SetVector("_PlaneEqu", PlaneEquation);
	}
	
	// Update is called once per frame
	void Update () {
        Vector4 PlaneEquation = new Vector4(Plane.up.x,
                                                  Plane.up.y,
                                                  Plane.up.z,
                                                  -Vector3.Dot(Plane.up, Plane.position)); // Getting dat damn Planar Equation, mtfckerrrrrzz (yes Bapt'/Aug'/Dude, it's late at now)
        GroomMat.SetVector("_PlaneEqu", PlaneEquation);
    }
}
