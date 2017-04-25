/* 360 views Atlas renderer v0_1
	
	
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

public class CamMouse : MonoBehaviour {

    public Vector2 MouseSensitivity = new Vector2(1, 1);

    private Vector3 curXRot;

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {

        Vector2 mousePos = new Vector2(Input.mousePosition.x * MouseSensitivity.x,
                                        Input.mousePosition.y * MouseSensitivity.y);


        //mousePos.x = Mathf.Clamp(mousePos.x, -180 , 90);
        //mousePos.y = Mathf.Clamp(mousePos.y, -90, 90);

        Quaternion vecAxis = Quaternion.AngleAxis(mousePos.x, Vector3.up);
                transform.rotation = vecAxis * Quaternion.AngleAxis(mousePos.y, Vector3.right);
        //transform.rotation = Quaternion.AngleAxis(mousePos.y, vecAxis * Vector3.right);
    
    

    
    }
}
