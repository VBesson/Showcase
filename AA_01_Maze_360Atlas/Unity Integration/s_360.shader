/* 360 views Atlas renderer v0_1
	
	
	By Valentin Besson 
	https://www.linkedin.com/in/vbesson/
	https://www.artstation.com/artist/valentinbesson
	https://github.com/VBesson
	
	feel free to contact me at
	v.besson@rubika-edu.com
	
*/

Shader "Unlit/s_360Billboard"
{
	Properties
	{
		_MainTex ("Texture", 2D) = "white" {}
		_ScaleX("BillboardScaleX", Float) = 1.0
		_ScaleY("BillboardScaleY", Float) = 1.0
			_AngleX("angleX", Float) = 0.0
			_AngleY("angleY", Float) = 0.0
		_AtlasSize("AtlasSize", Float) = 8.0
	}
	SubShader
	{
		Tags { "RenderType"="Opaque" }
		LOD 100

		Pass
		{
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			// fog off
			// #pragma multi_compile_fog
			
			#include "UnityCG.cginc"

			struct appdata
			{
				float4 vertex : POSITION;
				float2 uv : TEXCOORD0;
			};

			struct v2f
			{
				float2 uv : TEXCOORD0;
				float4 vertex : SV_POSITION;
			};

			sampler2D _MainTex;
			float4 _MainTex_ST;
			float _ScaleX;
			float _ScaleY;
			float _AngleX;
			float _AngleY;
			float _AtlasSize;
			
			v2f vert (appdata v)
			{
				v2f o;
				o.vertex = mul (UNITY_MATRIX_P, 
					mul(UNITY_MATRIX_MV, float4(0.0, 0.0, 0.0, 1.0))
					- float4(v.vertex.x, v.vertex.y, 0.0, 0.0)
					* float4(_ScaleX, _ScaleY, 1.0, 1.0));

				o.uv = TRANSFORM_TEX(v.uv, _MainTex);
				//UNITY_TRANSFER_FOG(o,o.vertex);
				return o;
			}
			
			fixed4 frag (v2f i) : SV_Target
			{
				// sample the texture

				i.uv /= _AtlasSize; //AtlasSize is 8
			i.uv.x += _AngleX;
			i.uv.y += _AngleY;
				
				

				fixed4 col = tex2D(_MainTex, i.uv);
				//col.r = lerp(col.r, _AngleX / 2, 0.5); //Debug
				//col.g = lerp(col.g, _AngleY / 2, 0.5);
			
				// apply fog
				//UNITY_APPLY_FOG(i.fogCoord, col);
				return col;
			}
			ENDCG
		}
	}
}
