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

public class TurnAround : MonoBehaviour {

    private Material itMat;
    private float AtlasSize;
    public Vector2 angle = new Vector2(0, 0);

	// Use this for initialization
	void Start () {
        itMat = GetComponent<Renderer>().material;
        AtlasSize = itMat.GetFloat("_AtlasSize");
        //"Prototype"
        itMat.SetFloat("_XAngle", angle.x); //
        itMat.SetFloat("_XSide", angle.y);
	}
	
	// Update is called once per frame
	void Update () {
        
        Vector3 vecAxis = transform.position - Camera.main.transform.position;
        vecAxis = Vector3.Normalize(vecAxis);


        // Y axis rotation angle
        angle.x = (Mathf.Atan2(vecAxis.x, vecAxis.z) / (Mathf.PI)); // ATAN2 is the key!
        angle.x = (angle.x >= 0) // WIP: Divising By 2 before the select and biasing by 0.5 in the select reduces the jumping range but increase its frequency.
                    ? (angle.x + 1f)
                    : 1f - Mathf.Abs(angle.x); // Constant Bias

        // Elevation rotation angle

        // Rotating matrix using precedent rotation.
        Vector3 vecAxis2 = Quaternion.AngleAxis(angle.x, Vector3.up) * vecAxis; // not commutative!


        angle.y = (Mathf.Atan2(vecAxis2.y, vecAxis2.z) / (Mathf.PI)); 
        angle.y = (angle.y >= 0) // Constant Bias
                    ? (angle.y + 1f)
                    : 1f - Mathf.Abs(angle.y);


        angle /= 2f;

        angle.x = Mathf.Floor(angle.x * AtlasSize) / AtlasSize;
        angle.y = Mathf.Floor(angle.y * AtlasSize) / AtlasSize;
        itMat.SetFloat("_AngleX", angle.x);
        itMat.SetFloat("_AngleY", angle.y);


        //NB: we must check camera self rotation to avoid brutal 0.5 jumps when 180axis is crossed

        float tmpRot = Camera.main.transform.rotation.x;

        float Angle = Vector3.Dot(vecAxis, vecAxis2);

        Debug.Log(Angle);
        
        if (tmpRot > 180)
        {
            
            //angle.x += 0.5f;
            //Debug.Log("stop");
        }

        angle /= 2f;

        angle.x = Mathf.Floor(angle.x * AtlasSize) / AtlasSize;
        angle.y = Mathf.Floor(angle.y * AtlasSize) / AtlasSize;
        itMat.SetFloat("_AngleX", angle.x);
        itMat.SetFloat("_AngleY", angle.y);

    }
}
