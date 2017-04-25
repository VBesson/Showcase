/* PlaneIntersection v0_1
	
	
	By Valentin Besson 
	https://www.linkedin.com/in/vbesson/
	https://www.artstation.com/artist/valentinbesson
	https://github.com/VBesson
	
	feel free to contact me at
	v.besson@rubika-edu.com
	
*/


// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'

Shader "Unlit/s_PlaneIntersection"
{
	Properties
	{
		_MainTex ("Texture", 2D) = "white" {}
		_PlaneEqu("PlaneEquation", Vector) = (0,0,0,0)
			_TongueWidth("TongueWidth", Float) = 0.1
			_TongueHeight("TongueHeight", Float) = 0.1
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
			// make fog work
			#pragma multi_compile_fog
			
			
			#include "UnityCG.cginc"

			struct appdata
			{
				float3 normal : NORMAL;
				float4 vertex : POSITION;
				float2 uv : TEXCOORD0;
			};

			struct v2f
			{
				float2 uv : TEXCOORD0;
				UNITY_FOG_COORDS(1)
				float4 Wpos : TEXCOORD1;
				float4 vertex : SV_POSITION;
			};

			sampler2D _MainTex;
			float4 _MainTex_ST;
			float4 _PlaneEqu;
			float _TongueWidth;
			float _TongueHeight;
			
			v2f vert (appdata v)
			{
				v2f o;
						
				o.Wpos = float4(mul(unity_ObjectToWorld, v.vertex));

				float Test = (_PlaneEqu.x * o.Wpos.x +
					_PlaneEqu.y * o.Wpos.y +
					_PlaneEqu.z * o.Wpos.z +
					_PlaneEqu.w);

				//float3 tmp = _PlaneEqu.xyz;

				//_PlaneEqu.w = 0;

				if(abs(Test)<= _TongueWidth){
					v.vertex += float4(v.normal, v.vertex.w) * 
						(cos(pow(abs(Test)/ _TongueWidth, 0.5)*3.14)+1) 
							* _TongueHeight;
				}



				
				o.vertex = UnityObjectToClipPos(v.vertex);

				o.uv = TRANSFORM_TEX(v.uv, _MainTex);
				UNITY_TRANSFER_FOG(o,o.vertex);
				return o;
			}
			
			fixed4 frag (v2f i) : SV_Target
			{

				// sample the texture
				fixed4 col = tex2D(_MainTex, i.uv);
				



			float Test = (_PlaneEqu.x * i.Wpos.x +
				_PlaneEqu.y * i.Wpos.y +
				_PlaneEqu.z * i.Wpos.z +
				_PlaneEqu.w);

			//clip(Test);
			if (abs(Test) <=  _TongueWidth) {
				float tmp = sin(((_Time.y * 5) - abs(Test*5)));
				col = float4(.5, tmp/1, tmp/1.1, 1);
			}
			//col = i.Wpos;





				// apply fog
				UNITY_APPLY_FOG(i.fogCoord, col);
				return col;
			}
			ENDCG
		}
	}
}
