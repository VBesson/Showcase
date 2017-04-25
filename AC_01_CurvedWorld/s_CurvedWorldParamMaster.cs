/* CurvedWorldShader v0_1
	
	
	By Valentin Besson 
	https://www.linkedin.com/in/vbesson/
	https://www.artstation.com/artist/valentinbesson
	https://github.com/VBesson
	
	feel free to contact me at
	v.besson@rubika-edu.com
	
*/

using UnityEngine;
using UnityEditor;
using System.Collections;

//[InitializeOnLoad]
[ExecuteInEditMode]
public class s_CurvedWorldParamMaster : MonoBehaviour {

	[Header("Active&Désactive la courbure")]
	public bool CurvingOn = false;
	public float OpacityThreshold = 0.5f;

	[Header("Attention: Ce sont les parametres du shader de courbure")]
    public float TerrainHeight = 1.8f;
	public float DistancePower = -0.42f;
	public float SpherizeDistance = 3.28f;

	delegate bool Mydelegate ();

	/* 	
	 * //A reflechir:

	public void SetDefault()
	{
		Debug.Log("Set Default Curvature Shader Params");
		Shader.SetGlobalFloat("_terrainHeight", TerrainHeight);

		Shader.SetGlobalFloat("_OpacityThresh", OpacityThreshold);
		Shader.SetGlobalFloat("_Displacement",  1.0f * System.Convert.ToSingle(CurvingOn));

		Shader.SetGlobalFloat("_DistancePower", DistancePower);
		Shader.SetGlobalFloat("_SpherizeDistance", SpherizeDistance);

		EditorApplication -= SetDefault;
	}

	static s_CurvedWorldParamMaster(){
		EditorApplication.update += SetDefault;
	}
	*/

	// Use this for initialization
	bool test()
	{
		return Selection.Contains (gameObject);
	}

	bool noTest()
	{
		return true;
	}

	void Awake () {
		UpdateShaderParams (noTest);
	}


	void UpdateShaderParams(Mydelegate context)
	{
		if (context == null)
			context = test;
		else
		{

			Debug.Log("Poom");
			Shader.SetGlobalFloat("_terrainHeight", TerrainHeight);

			Shader.SetGlobalFloat("_OpacityThresh", OpacityThreshold);
			Shader.SetGlobalFloat("_Displacement",  1.0f * System.Convert.ToSingle(CurvingOn));

			Shader.SetGlobalFloat("_DistancePower", DistancePower);
			Shader.SetGlobalFloat("_SpherizeDistance", SpherizeDistance); 


			/*
			 * Old Method, completely not optimized!
        MeshRenderer[] MeshR = GetComponentsInChildren<MeshRenderer>();
        foreach (MeshRenderer MR in MeshR)
        {
            Material tempMat = new Material(MR.sharedMaterial);
                //Setting Parameters
            
                tempMat.SetFloat("_Displacement", 1.0f * System.Convert.ToSingle(CurvingOn));
				tempMat.SetFloat ("_OpacityThreshold", OpacityThreshold);

            MR.sharedMaterial = tempMat;
        }
        Debug.Log("boop");
        */


		}
	}

    // Update is called once per frame
	void Update()
    {
		UpdateShaderParams(test);
    }
}
