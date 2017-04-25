/* CurvedWorldShader v0_1
	
	
	By Valentin Besson 
	https://www.linkedin.com/in/vbesson/
	https://www.artstation.com/artist/valentinbesson
	https://github.com/VBesson
	
	feel free to contact me at
	v.besson@rubika-edu.com
	
*/


// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'

// Shader created with Shader Forge v1.32 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.32;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:3,spmd:1,trmd:0,grmd:1,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:1,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:2,rntp:3,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:3528,x:33304,y:32721,varname:node_3528,prsc:2|diff-3117-RGB,spec-6951-G,gloss-6951-R,normal-9496-RGB,amdfl-3962-RGB,difocc-6951-B,clip-6930-OUT,voffset-579-OUT,disp-2322-XYZ,tess-1328-OUT;n:type:ShaderForge.SFN_Distance,id:9771,x:30400,y:33309,varname:node_9771,prsc:2|A-7298-OUT,B-2980-OUT;n:type:ShaderForge.SFN_Vector1,id:2980,x:30085,y:33557,varname:node_2980,prsc:2,v1:0;n:type:ShaderForge.SFN_FragmentPosition,id:7420,x:29502,y:33213,varname:node_7420,prsc:2;n:type:ShaderForge.SFN_ComponentMask,id:7298,x:30088,y:33215,varname:node_7298,prsc:2,cc1:0,cc2:2,cc3:-1,cc4:-1|IN-7420-XYZ;n:type:ShaderForge.SFN_Append,id:5732,x:32506,y:33815,varname:node_5732,prsc:2|A-3712-OUT,B-5682-OUT,C-3712-OUT;n:type:ShaderForge.SFN_Multiply,id:6026,x:30827,y:33508,varname:node_6026,prsc:2|A-9771-OUT,B-3225-OUT;n:type:ShaderForge.SFN_Vector1,id:3225,x:30585,y:33553,varname:node_3225,prsc:2,v1:-1;n:type:ShaderForge.SFN_Divide,id:6215,x:31093,y:33570,varname:node_6215,prsc:2|A-6026-OUT,B-383-OUT;n:type:ShaderForge.SFN_Power,id:383,x:30827,y:33639,varname:node_383,prsc:2|VAL-594-OUT,EXP-672-OUT;n:type:ShaderForge.SFN_Vector1,id:594,x:30648,y:33639,varname:node_594,prsc:2,v1:10;n:type:ShaderForge.SFN_ValueProperty,id:672,x:30648,y:33723,ptovrint:False,ptlb:DistancePower,ptin:_DistancePower,varname:_DistancePower,prsc:2,glob:True,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Vector1,id:3712,x:32506,y:33672,varname:node_3712,prsc:2,v1:0;n:type:ShaderForge.SFN_ValueProperty,id:8348,x:31506,y:33518,ptovrint:False,ptlb:SpherizeDistance,ptin:_SpherizeDistance,varname:_SpherizeDistance,prsc:2,glob:True,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Subtract,id:9323,x:31668,y:33619,varname:node_9323,prsc:2|A-8348-OUT,B-453-OUT;n:type:ShaderForge.SFN_Power,id:453,x:31289,y:33570,varname:node_453,prsc:2|VAL-6215-OUT,EXP-8614-OUT;n:type:ShaderForge.SFN_Vector1,id:8614,x:31173,y:33803,varname:node_8614,prsc:2,v1:2;n:type:ShaderForge.SFN_Sqrt,id:2020,x:32090,y:33547,varname:node_2020,prsc:2|IN-9987-OUT;n:type:ShaderForge.SFN_Abs,id:9987,x:31902,y:33547,varname:node_9987,prsc:2|IN-9323-OUT;n:type:ShaderForge.SFN_If,id:6930,x:32795,y:33122,varname:node_6930,prsc:2|A-9771-OUT,B-2837-OUT,GT-569-OUT,EQ-9559-OUT,LT-9559-OUT;n:type:ShaderForge.SFN_Vector1,id:569,x:32571,y:33225,varname:node_569,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:9559,x:32571,y:33274,varname:node_9559,prsc:2,v1:1;n:type:ShaderForge.SFN_Slider,id:1328,x:32571,y:33374,ptovrint:False,ptlb:MaxTesselation,ptin:_MaxTesselation,varname:_MaxTesselation,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:4,max:4;n:type:ShaderForge.SFN_ValueProperty,id:2837,x:32547,y:33156,ptovrint:False,ptlb:OpacityThresh,ptin:_OpacityThresh,varname:_OpacityThresh,prsc:2,glob:True,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_SwitchProperty,id:579,x:32964,y:33649,ptovrint:False,ptlb:VertexOffset(legacy),ptin:_VertexOffsetlegacy,varname:_VertexOffsetlegacy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-3712-OUT,B-5732-OUT;n:type:ShaderForge.SFN_Subtract,id:5682,x:32271,y:33770,varname:node_5682,prsc:2|A-2020-OUT,B-6848-OUT;n:type:ShaderForge.SFN_ValueProperty,id:6848,x:32086,y:33938,ptovrint:False,ptlb:terrainHeight,ptin:_terrainHeight,varname:_terrainHeight,prsc:2,glob:True,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Tex2d,id:3117,x:32551,y:32460,ptovrint:False,ptlb:BaseColor,ptin:_BaseColor,varname:_BaseColor,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:6951,x:32551,y:32672,ptovrint:False,ptlb:RoughMetAO,ptin:_RoughMetAO,varname:_RoughMetAO,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Transform,id:9399,x:29753,y:33213,varname:node_9399,prsc:2,tffrom:1,tfto:0|IN-7420-XYZ;n:type:ShaderForge.SFN_Transform,id:2322,x:33143,y:33793,varname:node_2322,prsc:2,tffrom:0,tfto:1|IN-283-OUT;n:type:ShaderForge.SFN_Code,id:216,x:33319,y:33793,varname:node_216,prsc:2,code:QQAuAHgAeQB6ACAAKgA9ACAAdQBuAGkAdAB5AF8AUwBjAGEAbABlAC4AdwA7AA==,output:2,fname:Function_node_216,width:247,height:132,input:2,input_1_label:A|A-2322-XYZ;n:type:ShaderForge.SFN_If,id:283,x:32964,y:33773,varname:node_283,prsc:2|A-2109-OUT,B-5709-OUT,GT-5732-OUT,EQ-5732-OUT,LT-3712-OUT;n:type:ShaderForge.SFN_ValueProperty,id:2109,x:32761,y:33555,ptovrint:False,ptlb:Displacement,ptin:_Displacement,varname:node_2109,prsc:2,glob:True,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Vector1,id:5709,x:32506,y:33604,varname:node_5709,prsc:2,v1:1;n:type:ShaderForge.SFN_Tex2d,id:9496,x:32551,y:32859,ptovrint:False,ptlb:Normal,ptin:_Normal,varname:node_9496,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_AmbientLight,id:3962,x:33027,y:32930,varname:node_3962,prsc:2;proporder:3117-6951-579-1328-9496;pass:END;sub:END;*/

Shader "IC/s_CurvedPBREnviro" {
    Properties {
        _BaseColor ("BaseColor", 2D) = "white" {}
        _RoughMetAO ("RoughMetAO", 2D) = "white" {}
        [MaterialToggle] _VertexOffsetlegacy ("VertexOffset(legacy)", Float ) = 0
        _MaxTesselation ("MaxTesselation", Range(0, 4)) = 4
        _Normal ("Normal", 2D) = "white" {}
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "Queue"="AlphaTest"
            "RenderType"="TransparentCutout"
        }
        LOD 200
        Pass {
            Name "DEFERRED"
            Tags {
                "LightMode"="Deferred"
            }
            
            
            CGPROGRAM
            #pragma hull hull
            #pragma domain domain
            #pragma vertex tessvert
            #pragma fragment frag
            #define UNITY_PASS_DEFERRED
            #include "UnityCG.cginc"
            #include "Tessellation.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile ___ UNITY_HDR_ON
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles n3ds wiiu 
            #pragma target 5.0
            uniform float _DistancePower;
            uniform float _SpherizeDistance;
            uniform float _MaxTesselation;
            uniform float _OpacityThresh;
            uniform fixed _VertexOffsetlegacy;
            uniform float _terrainHeight;
            uniform sampler2D _BaseColor; uniform float4 _BaseColor_ST;
            uniform sampler2D _RoughMetAO; uniform float4 _RoughMetAO_ST;
            uniform float _Displacement;
            uniform sampler2D _Normal; uniform float4 _Normal_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                float node_3712 = 0.0;
                float node_9771 = distance(mul(unity_ObjectToWorld, v.vertex).rgb.rb,0.0);
                float3 node_5732 = float3(node_3712,(sqrt(abs((_SpherizeDistance-pow(((node_9771*(-1.0))/pow(10.0,_DistancePower)),2.0))))-_terrainHeight),node_3712);
                v.vertex.xyz += lerp( node_3712, node_5732, _VertexOffsetlegacy );
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                return o;
            }
            #ifdef UNITY_CAN_COMPILE_TESSELLATION
                struct TessVertex {
                    float4 vertex : INTERNALTESSPOS;
                    float3 normal : NORMAL;
                    float4 tangent : TANGENT;
                    float2 texcoord0 : TEXCOORD0;
                };
                struct OutputPatchConstant {
                    float edge[3]         : SV_TessFactor;
                    float inside          : SV_InsideTessFactor;
                    float3 vTangent[4]    : TANGENT;
                    float2 vUV[4]         : TEXCOORD;
                    float3 vTanUCorner[4] : TANUCORNER;
                    float3 vTanVCorner[4] : TANVCORNER;
                    float4 vCWts          : TANWEIGHTS;
                };
                TessVertex tessvert (VertexInput v) {
                    TessVertex o;
                    o.vertex = v.vertex;
                    o.normal = v.normal;
                    o.tangent = v.tangent;
                    o.texcoord0 = v.texcoord0;
                    return o;
                }
                void displacement (inout VertexInput v){
                    float node_283_if_leA = step(_Displacement,1.0);
                    float node_283_if_leB = step(1.0,_Displacement);
                    float node_3712 = 0.0;
                    float node_9771 = distance(mul(unity_ObjectToWorld, v.vertex).rgb.rb,0.0);
                    float3 node_5732 = float3(node_3712,(sqrt(abs((_SpherizeDistance-pow(((node_9771*(-1.0))/pow(10.0,_DistancePower)),2.0))))-_terrainHeight),node_3712);
                    float3 node_2322 = mul( unity_WorldToObject, float4(lerp((node_283_if_leA*node_3712)+(node_283_if_leB*node_5732),node_5732,node_283_if_leA*node_283_if_leB),0) ).xyz;
                    v.vertex.xyz += node_2322.rgb;
                }
                float Tessellation(TessVertex v){
                    return _MaxTesselation;
                }
                float4 Tessellation(TessVertex v, TessVertex v1, TessVertex v2){
                    float tv = Tessellation(v);
                    float tv1 = Tessellation(v1);
                    float tv2 = Tessellation(v2);
                    return float4( tv1+tv2, tv2+tv, tv+tv1, tv+tv1+tv2 ) / float4(2,2,2,3);
                }
                OutputPatchConstant hullconst (InputPatch<TessVertex,3> v) {
                    OutputPatchConstant o = (OutputPatchConstant)0;
                    float4 ts = Tessellation( v[0], v[1], v[2] );
                    o.edge[0] = ts.x;
                    o.edge[1] = ts.y;
                    o.edge[2] = ts.z;
                    o.inside = ts.w;
                    return o;
                }
                [domain("tri")]
                [partitioning("fractional_odd")]
                [outputtopology("triangle_cw")]
                [patchconstantfunc("hullconst")]
                [outputcontrolpoints(3)]
                TessVertex hull (InputPatch<TessVertex,3> v, uint id : SV_OutputControlPointID) {
                    return v[id];
                }
                [domain("tri")]
                VertexOutput domain (OutputPatchConstant tessFactors, const OutputPatch<TessVertex,3> vi, float3 bary : SV_DomainLocation) {
                    VertexInput v = (VertexInput)0;
                    v.vertex = vi[0].vertex*bary.x + vi[1].vertex*bary.y + vi[2].vertex*bary.z;
                    v.normal = vi[0].normal*bary.x + vi[1].normal*bary.y + vi[2].normal*bary.z;
                    v.tangent = vi[0].tangent*bary.x + vi[1].tangent*bary.y + vi[2].tangent*bary.z;
                    v.texcoord0 = vi[0].texcoord0*bary.x + vi[1].texcoord0*bary.y + vi[2].texcoord0*bary.z;
                    displacement(v);
                    VertexOutput o = vert(v);
                    return o;
                }
            #endif
            void frag(
                VertexOutput i,
                out half4 outDiffuse : SV_Target0,
                out half4 outSpecSmoothness : SV_Target1,
                out half4 outNormal : SV_Target2,
                out half4 outEmission : SV_Target3 )
            {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float4 _Normal_var = tex2D(_Normal,TRANSFORM_TEX(i.uv0, _Normal));
                float3 normalLocal = _Normal_var.rgb;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float node_9771 = distance(i.posWorld.rgb.rb,0.0);
                float node_6930_if_leA = step(node_9771,_OpacityThresh);
                float node_6930_if_leB = step(_OpacityThresh,node_9771);
                float node_9559 = 1.0;
                clip(lerp((node_6930_if_leA*node_9559)+(node_6930_if_leB*0.0),node_9559,node_6930_if_leA*node_6930_if_leB) - 0.5);
////// Lighting:
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
///////// Gloss:
                float4 _RoughMetAO_var = tex2D(_RoughMetAO,TRANSFORM_TEX(i.uv0, _RoughMetAO));
                float gloss = 1.0 - _RoughMetAO_var.r; // Convert roughness to gloss
/////// GI Data:
                UnityLight light; // Dummy light
                light.color = 0;
                light.dir = half3(0,1,0);
                light.ndotl = max(0,dot(normalDirection,light.dir));
                UnityGIInput d;
                d.light = light;
                d.worldPos = i.posWorld.xyz;
                d.worldViewDir = viewDirection;
                d.atten = 1;
                Unity_GlossyEnvironmentData ugls_en_data;
                ugls_en_data.roughness = 1.0 - gloss;
                ugls_en_data.reflUVW = viewReflectDirection;
                UnityGI gi = UnityGlobalIllumination(d, 1, normalDirection, ugls_en_data );
////// Specular:
                float3 specularColor = _RoughMetAO_var.g;
                float specularMonochrome;
                float4 _BaseColor_var = tex2D(_BaseColor,TRANSFORM_TEX(i.uv0, _BaseColor));
                float3 diffuseColor = _BaseColor_var.rgb; // Need this for specular when using metallic
                diffuseColor = DiffuseAndSpecularFromMetallic( diffuseColor, specularColor, specularColor, specularMonochrome );
                specularMonochrome = 1.0-specularMonochrome;
                float NdotV = max(0.0,dot( normalDirection, viewDirection ));
/////// Diffuse:
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += UNITY_LIGHTMODEL_AMBIENT.rgb; // Diffuse Ambient Light
                indirectDiffuse *= _RoughMetAO_var.b; // Diffuse AO
/// Final Color:
                outDiffuse = half4( diffuseColor, _RoughMetAO_var.b );
                outSpecSmoothness = half4( specularColor, gloss );
                outNormal = half4( normalDirection * 0.5 + 0.5, 1 );
                outEmission = half4(0,0,0,1);
                outEmission.rgb += indirectDiffuse * diffuseColor;
                #ifndef UNITY_HDR_ON
                    outEmission.rgb = exp2(-outEmission.rgb);
                #endif
            }
            ENDCG
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma hull hull
            #pragma domain domain
            #pragma vertex tessvert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Tessellation.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles n3ds wiiu 
            #pragma target 5.0
            uniform float _DistancePower;
            uniform float _SpherizeDistance;
            uniform float _MaxTesselation;
            uniform float _OpacityThresh;
            uniform fixed _VertexOffsetlegacy;
            uniform float _terrainHeight;
            uniform sampler2D _BaseColor; uniform float4 _BaseColor_ST;
            uniform sampler2D _RoughMetAO; uniform float4 _RoughMetAO_ST;
            uniform float _Displacement;
            uniform sampler2D _Normal; uniform float4 _Normal_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
                LIGHTING_COORDS(5,6)
                UNITY_FOG_COORDS(7)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                float node_3712 = 0.0;
                float node_9771 = distance(mul(unity_ObjectToWorld, v.vertex).rgb.rb,0.0);
                float3 node_5732 = float3(node_3712,(sqrt(abs((_SpherizeDistance-pow(((node_9771*(-1.0))/pow(10.0,_DistancePower)),2.0))))-_terrainHeight),node_3712);
                v.vertex.xyz += lerp( node_3712, node_5732, _VertexOffsetlegacy );
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            #ifdef UNITY_CAN_COMPILE_TESSELLATION
                struct TessVertex {
                    float4 vertex : INTERNALTESSPOS;
                    float3 normal : NORMAL;
                    float4 tangent : TANGENT;
                    float2 texcoord0 : TEXCOORD0;
                };
                struct OutputPatchConstant {
                    float edge[3]         : SV_TessFactor;
                    float inside          : SV_InsideTessFactor;
                    float3 vTangent[4]    : TANGENT;
                    float2 vUV[4]         : TEXCOORD;
                    float3 vTanUCorner[4] : TANUCORNER;
                    float3 vTanVCorner[4] : TANVCORNER;
                    float4 vCWts          : TANWEIGHTS;
                };
                TessVertex tessvert (VertexInput v) {
                    TessVertex o;
                    o.vertex = v.vertex;
                    o.normal = v.normal;
                    o.tangent = v.tangent;
                    o.texcoord0 = v.texcoord0;
                    return o;
                }
                void displacement (inout VertexInput v){
                    float node_283_if_leA = step(_Displacement,1.0);
                    float node_283_if_leB = step(1.0,_Displacement);
                    float node_3712 = 0.0;
                    float node_9771 = distance(mul(unity_ObjectToWorld, v.vertex).rgb.rb,0.0);
                    float3 node_5732 = float3(node_3712,(sqrt(abs((_SpherizeDistance-pow(((node_9771*(-1.0))/pow(10.0,_DistancePower)),2.0))))-_terrainHeight),node_3712);
                    float3 node_2322 = mul( unity_WorldToObject, float4(lerp((node_283_if_leA*node_3712)+(node_283_if_leB*node_5732),node_5732,node_283_if_leA*node_283_if_leB),0) ).xyz;
                    v.vertex.xyz += node_2322.rgb;
                }
                float Tessellation(TessVertex v){
                    return _MaxTesselation;
                }
                float4 Tessellation(TessVertex v, TessVertex v1, TessVertex v2){
                    float tv = Tessellation(v);
                    float tv1 = Tessellation(v1);
                    float tv2 = Tessellation(v2);
                    return float4( tv1+tv2, tv2+tv, tv+tv1, tv+tv1+tv2 ) / float4(2,2,2,3);
                }
                OutputPatchConstant hullconst (InputPatch<TessVertex,3> v) {
                    OutputPatchConstant o = (OutputPatchConstant)0;
                    float4 ts = Tessellation( v[0], v[1], v[2] );
                    o.edge[0] = ts.x;
                    o.edge[1] = ts.y;
                    o.edge[2] = ts.z;
                    o.inside = ts.w;
                    return o;
                }
                [domain("tri")]
                [partitioning("fractional_odd")]
                [outputtopology("triangle_cw")]
                [patchconstantfunc("hullconst")]
                [outputcontrolpoints(3)]
                TessVertex hull (InputPatch<TessVertex,3> v, uint id : SV_OutputControlPointID) {
                    return v[id];
                }
                [domain("tri")]
                VertexOutput domain (OutputPatchConstant tessFactors, const OutputPatch<TessVertex,3> vi, float3 bary : SV_DomainLocation) {
                    VertexInput v = (VertexInput)0;
                    v.vertex = vi[0].vertex*bary.x + vi[1].vertex*bary.y + vi[2].vertex*bary.z;
                    v.normal = vi[0].normal*bary.x + vi[1].normal*bary.y + vi[2].normal*bary.z;
                    v.tangent = vi[0].tangent*bary.x + vi[1].tangent*bary.y + vi[2].tangent*bary.z;
                    v.texcoord0 = vi[0].texcoord0*bary.x + vi[1].texcoord0*bary.y + vi[2].texcoord0*bary.z;
                    displacement(v);
                    VertexOutput o = vert(v);
                    return o;
                }
            #endif
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float4 _Normal_var = tex2D(_Normal,TRANSFORM_TEX(i.uv0, _Normal));
                float3 normalLocal = _Normal_var.rgb;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float node_9771 = distance(i.posWorld.rgb.rb,0.0);
                float node_6930_if_leA = step(node_9771,_OpacityThresh);
                float node_6930_if_leB = step(_OpacityThresh,node_9771);
                float node_9559 = 1.0;
                clip(lerp((node_6930_if_leA*node_9559)+(node_6930_if_leB*0.0),node_9559,node_6930_if_leA*node_6930_if_leB) - 0.5);
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
///////// Gloss:
                float4 _RoughMetAO_var = tex2D(_RoughMetAO,TRANSFORM_TEX(i.uv0, _RoughMetAO));
                float gloss = 1.0 - _RoughMetAO_var.r; // Convert roughness to gloss
                float specPow = exp2( gloss * 10.0+1.0);
/////// GI Data:
                UnityLight light;
                #ifdef LIGHTMAP_OFF
                    light.color = lightColor;
                    light.dir = lightDirection;
                    light.ndotl = LambertTerm (normalDirection, light.dir);
                #else
                    light.color = half3(0.f, 0.f, 0.f);
                    light.ndotl = 0.0f;
                    light.dir = half3(0.f, 0.f, 0.f);
                #endif
                UnityGIInput d;
                d.light = light;
                d.worldPos = i.posWorld.xyz;
                d.worldViewDir = viewDirection;
                d.atten = attenuation;
                Unity_GlossyEnvironmentData ugls_en_data;
                ugls_en_data.roughness = 1.0 - gloss;
                ugls_en_data.reflUVW = viewReflectDirection;
                UnityGI gi = UnityGlobalIllumination(d, 1, normalDirection, ugls_en_data );
                lightDirection = gi.light.dir;
                lightColor = gi.light.color;
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float LdotH = max(0.0,dot(lightDirection, halfDirection));
                float3 specularColor = _RoughMetAO_var.g;
                float specularMonochrome;
                float4 _BaseColor_var = tex2D(_BaseColor,TRANSFORM_TEX(i.uv0, _BaseColor));
                float3 diffuseColor = _BaseColor_var.rgb; // Need this for specular when using metallic
                diffuseColor = DiffuseAndSpecularFromMetallic( diffuseColor, specularColor, specularColor, specularMonochrome );
                specularMonochrome = 1.0-specularMonochrome;
                float NdotV = max(0.0,dot( normalDirection, viewDirection ));
                float NdotH = max(0.0,dot( normalDirection, halfDirection ));
                float VdotH = max(0.0,dot( viewDirection, halfDirection ));
                float visTerm = SmithJointGGXVisibilityTerm( NdotL, NdotV, 1.0-gloss );
                float normTerm = max(0.0, GGXTerm(NdotH, 1.0-gloss));
                float specularPBL = (NdotL*visTerm*normTerm) * (UNITY_PI / 4);
                if (IsGammaSpace())
                    specularPBL = sqrt(max(1e-4h, specularPBL));
                specularPBL = max(0, specularPBL * NdotL);
                float3 directSpecular = (floor(attenuation) * _LightColor0.xyz)*specularPBL*FresnelTerm(specularColor, LdotH);
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                half fd90 = 0.5 + 2 * LdotH * LdotH * (1-gloss);
                float nlPow5 = Pow5(1-NdotL);
                float nvPow5 = Pow5(1-NdotV);
                float3 directDiffuse = ((1 +(fd90 - 1)*nlPow5) * (1 + (fd90 - 1)*nvPow5) * NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += UNITY_LIGHTMODEL_AMBIENT.rgb; // Ambient Light
                indirectDiffuse += UNITY_LIGHTMODEL_AMBIENT.rgb; // Diffuse Ambient Light
                indirectDiffuse *= _RoughMetAO_var.b; // Diffuse AO
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "FORWARD_DELTA"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            
            
            CGPROGRAM
            #pragma hull hull
            #pragma domain domain
            #pragma vertex tessvert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Tessellation.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles n3ds wiiu 
            #pragma target 5.0
            uniform float _DistancePower;
            uniform float _SpherizeDistance;
            uniform float _MaxTesselation;
            uniform float _OpacityThresh;
            uniform fixed _VertexOffsetlegacy;
            uniform float _terrainHeight;
            uniform sampler2D _BaseColor; uniform float4 _BaseColor_ST;
            uniform sampler2D _RoughMetAO; uniform float4 _RoughMetAO_ST;
            uniform float _Displacement;
            uniform sampler2D _Normal; uniform float4 _Normal_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
                LIGHTING_COORDS(5,6)
                UNITY_FOG_COORDS(7)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                float node_3712 = 0.0;
                float node_9771 = distance(mul(unity_ObjectToWorld, v.vertex).rgb.rb,0.0);
                float3 node_5732 = float3(node_3712,(sqrt(abs((_SpherizeDistance-pow(((node_9771*(-1.0))/pow(10.0,_DistancePower)),2.0))))-_terrainHeight),node_3712);
                v.vertex.xyz += lerp( node_3712, node_5732, _VertexOffsetlegacy );
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            #ifdef UNITY_CAN_COMPILE_TESSELLATION
                struct TessVertex {
                    float4 vertex : INTERNALTESSPOS;
                    float3 normal : NORMAL;
                    float4 tangent : TANGENT;
                    float2 texcoord0 : TEXCOORD0;
                };
                struct OutputPatchConstant {
                    float edge[3]         : SV_TessFactor;
                    float inside          : SV_InsideTessFactor;
                    float3 vTangent[4]    : TANGENT;
                    float2 vUV[4]         : TEXCOORD;
                    float3 vTanUCorner[4] : TANUCORNER;
                    float3 vTanVCorner[4] : TANVCORNER;
                    float4 vCWts          : TANWEIGHTS;
                };
                TessVertex tessvert (VertexInput v) {
                    TessVertex o;
                    o.vertex = v.vertex;
                    o.normal = v.normal;
                    o.tangent = v.tangent;
                    o.texcoord0 = v.texcoord0;
                    return o;
                }
                void displacement (inout VertexInput v){
                    float node_283_if_leA = step(_Displacement,1.0);
                    float node_283_if_leB = step(1.0,_Displacement);
                    float node_3712 = 0.0;
                    float node_9771 = distance(mul(unity_ObjectToWorld, v.vertex).rgb.rb,0.0);
                    float3 node_5732 = float3(node_3712,(sqrt(abs((_SpherizeDistance-pow(((node_9771*(-1.0))/pow(10.0,_DistancePower)),2.0))))-_terrainHeight),node_3712);
                    float3 node_2322 = mul( unity_WorldToObject, float4(lerp((node_283_if_leA*node_3712)+(node_283_if_leB*node_5732),node_5732,node_283_if_leA*node_283_if_leB),0) ).xyz;
                    v.vertex.xyz += node_2322.rgb;
                }
                float Tessellation(TessVertex v){
                    return _MaxTesselation;
                }
                float4 Tessellation(TessVertex v, TessVertex v1, TessVertex v2){
                    float tv = Tessellation(v);
                    float tv1 = Tessellation(v1);
                    float tv2 = Tessellation(v2);
                    return float4( tv1+tv2, tv2+tv, tv+tv1, tv+tv1+tv2 ) / float4(2,2,2,3);
                }
                OutputPatchConstant hullconst (InputPatch<TessVertex,3> v) {
                    OutputPatchConstant o = (OutputPatchConstant)0;
                    float4 ts = Tessellation( v[0], v[1], v[2] );
                    o.edge[0] = ts.x;
                    o.edge[1] = ts.y;
                    o.edge[2] = ts.z;
                    o.inside = ts.w;
                    return o;
                }
                [domain("tri")]
                [partitioning("fractional_odd")]
                [outputtopology("triangle_cw")]
                [patchconstantfunc("hullconst")]
                [outputcontrolpoints(3)]
                TessVertex hull (InputPatch<TessVertex,3> v, uint id : SV_OutputControlPointID) {
                    return v[id];
                }
                [domain("tri")]
                VertexOutput domain (OutputPatchConstant tessFactors, const OutputPatch<TessVertex,3> vi, float3 bary : SV_DomainLocation) {
                    VertexInput v = (VertexInput)0;
                    v.vertex = vi[0].vertex*bary.x + vi[1].vertex*bary.y + vi[2].vertex*bary.z;
                    v.normal = vi[0].normal*bary.x + vi[1].normal*bary.y + vi[2].normal*bary.z;
                    v.tangent = vi[0].tangent*bary.x + vi[1].tangent*bary.y + vi[2].tangent*bary.z;
                    v.texcoord0 = vi[0].texcoord0*bary.x + vi[1].texcoord0*bary.y + vi[2].texcoord0*bary.z;
                    displacement(v);
                    VertexOutput o = vert(v);
                    return o;
                }
            #endif
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float4 _Normal_var = tex2D(_Normal,TRANSFORM_TEX(i.uv0, _Normal));
                float3 normalLocal = _Normal_var.rgb;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float node_9771 = distance(i.posWorld.rgb.rb,0.0);
                float node_6930_if_leA = step(node_9771,_OpacityThresh);
                float node_6930_if_leB = step(_OpacityThresh,node_9771);
                float node_9559 = 1.0;
                clip(lerp((node_6930_if_leA*node_9559)+(node_6930_if_leB*0.0),node_9559,node_6930_if_leA*node_6930_if_leB) - 0.5);
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
///////// Gloss:
                float4 _RoughMetAO_var = tex2D(_RoughMetAO,TRANSFORM_TEX(i.uv0, _RoughMetAO));
                float gloss = 1.0 - _RoughMetAO_var.r; // Convert roughness to gloss
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float LdotH = max(0.0,dot(lightDirection, halfDirection));
                float3 specularColor = _RoughMetAO_var.g;
                float specularMonochrome;
                float4 _BaseColor_var = tex2D(_BaseColor,TRANSFORM_TEX(i.uv0, _BaseColor));
                float3 diffuseColor = _BaseColor_var.rgb; // Need this for specular when using metallic
                diffuseColor = DiffuseAndSpecularFromMetallic( diffuseColor, specularColor, specularColor, specularMonochrome );
                specularMonochrome = 1.0-specularMonochrome;
                float NdotV = max(0.0,dot( normalDirection, viewDirection ));
                float NdotH = max(0.0,dot( normalDirection, halfDirection ));
                float VdotH = max(0.0,dot( viewDirection, halfDirection ));
                float visTerm = SmithJointGGXVisibilityTerm( NdotL, NdotV, 1.0-gloss );
                float normTerm = max(0.0, GGXTerm(NdotH, 1.0-gloss));
                float specularPBL = (NdotL*visTerm*normTerm) * (UNITY_PI / 4);
                if (IsGammaSpace())
                    specularPBL = sqrt(max(1e-4h, specularPBL));
                specularPBL = max(0, specularPBL * NdotL);
                float3 directSpecular = attenColor*specularPBL*FresnelTerm(specularColor, LdotH);
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                half fd90 = 0.5 + 2 * LdotH * LdotH * (1-gloss);
                float nlPow5 = Pow5(1-NdotL);
                float nvPow5 = Pow5(1-NdotV);
                float3 directDiffuse = ((1 +(fd90 - 1)*nlPow5) * (1 + (fd90 - 1)*nvPow5) * NdotL) * attenColor;
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                fixed4 finalRGBA = fixed4(finalColor * 1,0);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "ShadowCaster"
            Tags {
                "LightMode"="ShadowCaster"
            }
            Offset 1, 1
            
            CGPROGRAM
            #pragma hull hull
            #pragma domain domain
            #pragma vertex tessvert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCASTER
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "Tessellation.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles n3ds wiiu 
            #pragma target 5.0
            uniform float _DistancePower;
            uniform float _SpherizeDistance;
            uniform float _MaxTesselation;
            uniform float _OpacityThresh;
            uniform fixed _VertexOffsetlegacy;
            uniform float _terrainHeight;
            uniform float _Displacement;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float4 posWorld : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                float node_3712 = 0.0;
                float node_9771 = distance(mul(unity_ObjectToWorld, v.vertex).rgb.rb,0.0);
                float3 node_5732 = float3(node_3712,(sqrt(abs((_SpherizeDistance-pow(((node_9771*(-1.0))/pow(10.0,_DistancePower)),2.0))))-_terrainHeight),node_3712);
                v.vertex.xyz += lerp( node_3712, node_5732, _VertexOffsetlegacy );
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            #ifdef UNITY_CAN_COMPILE_TESSELLATION
                struct TessVertex {
                    float4 vertex : INTERNALTESSPOS;
                    float3 normal : NORMAL;
                    float4 tangent : TANGENT;
                };
                struct OutputPatchConstant {
                    float edge[3]         : SV_TessFactor;
                    float inside          : SV_InsideTessFactor;
                    float3 vTangent[4]    : TANGENT;
                    float2 vUV[4]         : TEXCOORD;
                    float3 vTanUCorner[4] : TANUCORNER;
                    float3 vTanVCorner[4] : TANVCORNER;
                    float4 vCWts          : TANWEIGHTS;
                };
                TessVertex tessvert (VertexInput v) {
                    TessVertex o;
                    o.vertex = v.vertex;
                    o.normal = v.normal;
                    o.tangent = v.tangent;
                    return o;
                }
                void displacement (inout VertexInput v){
                    float node_283_if_leA = step(_Displacement,1.0);
                    float node_283_if_leB = step(1.0,_Displacement);
                    float node_3712 = 0.0;
                    float node_9771 = distance(mul(unity_ObjectToWorld, v.vertex).rgb.rb,0.0);
                    float3 node_5732 = float3(node_3712,(sqrt(abs((_SpherizeDistance-pow(((node_9771*(-1.0))/pow(10.0,_DistancePower)),2.0))))-_terrainHeight),node_3712);
                    float3 node_2322 = mul( unity_WorldToObject, float4(lerp((node_283_if_leA*node_3712)+(node_283_if_leB*node_5732),node_5732,node_283_if_leA*node_283_if_leB),0) ).xyz;
                    v.vertex.xyz += node_2322.rgb;
                }
                float Tessellation(TessVertex v){
                    return _MaxTesselation;
                }
                float4 Tessellation(TessVertex v, TessVertex v1, TessVertex v2){
                    float tv = Tessellation(v);
                    float tv1 = Tessellation(v1);
                    float tv2 = Tessellation(v2);
                    return float4( tv1+tv2, tv2+tv, tv+tv1, tv+tv1+tv2 ) / float4(2,2,2,3);
                }
                OutputPatchConstant hullconst (InputPatch<TessVertex,3> v) {
                    OutputPatchConstant o = (OutputPatchConstant)0;
                    float4 ts = Tessellation( v[0], v[1], v[2] );
                    o.edge[0] = ts.x;
                    o.edge[1] = ts.y;
                    o.edge[2] = ts.z;
                    o.inside = ts.w;
                    return o;
                }
                [domain("tri")]
                [partitioning("fractional_odd")]
                [outputtopology("triangle_cw")]
                [patchconstantfunc("hullconst")]
                [outputcontrolpoints(3)]
                TessVertex hull (InputPatch<TessVertex,3> v, uint id : SV_OutputControlPointID) {
                    return v[id];
                }
                [domain("tri")]
                VertexOutput domain (OutputPatchConstant tessFactors, const OutputPatch<TessVertex,3> vi, float3 bary : SV_DomainLocation) {
                    VertexInput v = (VertexInput)0;
                    v.vertex = vi[0].vertex*bary.x + vi[1].vertex*bary.y + vi[2].vertex*bary.z;
                    v.normal = vi[0].normal*bary.x + vi[1].normal*bary.y + vi[2].normal*bary.z;
                    v.tangent = vi[0].tangent*bary.x + vi[1].tangent*bary.y + vi[2].tangent*bary.z;
                    displacement(v);
                    VertexOutput o = vert(v);
                    return o;
                }
            #endif
            float4 frag(VertexOutput i) : COLOR {
                float node_9771 = distance(i.posWorld.rgb.rb,0.0);
                float node_6930_if_leA = step(node_9771,_OpacityThresh);
                float node_6930_if_leB = step(_OpacityThresh,node_9771);
                float node_9559 = 1.0;
                clip(lerp((node_6930_if_leA*node_9559)+(node_6930_if_leB*0.0),node_9559,node_6930_if_leA*node_6930_if_leB) - 0.5);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
