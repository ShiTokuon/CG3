#include "BasicShaderHeader.hlsli"

//struct gsoutput
//{
//	float4 pos : sv_position;
//};

[maxvertexcount(3)]
void main(
	triangle VSOutput input[3] : SV_POSITION,
	inout TriangleStream< GSOutput > output
)
{
	for (uint i = 0; i < 3; i++)
	{
		GSOutput element;
		element.svpos = input[i].svpos;
		element.normal = input[i].normal;
		element.uv = input[i].uv*2.0f;
		output.Append(element);
	}
}