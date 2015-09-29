using UnityEngine;
using System.Collections;

public class MeshBackerHelper : MonoBehaviour 
{
	public GameObject meshBakerObject;
	public GameObject square;
	[ContextMenu("AddToMeshBacker")]
	public void AddToMeshBacker()
	{
		if( meshBakerObject == null || square == null )
		{
			Debug.LogError("meshBakerObject == null || square == null ");
			return;
		}
		
		MB3_MeshBaker meshBaker = meshBakerObject.GetComponentInChildren<MB3_MeshBaker>();
		if( meshBaker == null )
		{
			Debug.LogError("meshBaker == null ");
			return;
		}
		
		SkinnedMeshRenderer[] meshRenders = square.GetComponentsInChildren<SkinnedMeshRenderer>();	
		if( meshRenders.Length > 0)
		{
			GameObject[] objectsToCombine = new GameObject[meshRenders.Length];
			for( int i =0; i< meshRenders.Length; ++i )
			{
				objectsToCombine[i] = meshRenders[i].gameObject;
			}
			meshBaker.AddDeleteGameObjects(objectsToCombine, null, true);
			meshBaker.Apply();
		}
		else
		{
			Debug.Log("meshRenders.Length is zero")	;
		}
	}
	
	[ContextMenu("EnableSkinnedMeshRenderer")]
	public void EnableSkinnedMeshRenderer()
	{
		SkinnedMeshRenderer[] meshRenders = square.GetComponentsInChildren<SkinnedMeshRenderer>(true);	
		if( meshRenders.Length > 0)
		{
			GameObject[] objectsToCombine = new GameObject[meshRenders.Length];
			for( int i =0; i< meshRenders.Length; ++i )
			{
				meshRenders[i].enabled = true;		
			}
			
		}
	}
	
	[ContextMenu("DisableSkinnedMeshRenderer")]
	public void DisableSkinnedMeshRenderer()
	{
		SkinnedMeshRenderer[] meshRenders = square.GetComponentsInChildren<SkinnedMeshRenderer>(true);	
		if( meshRenders.Length > 0)
		{
			GameObject[] objectsToCombine = new GameObject[meshRenders.Length];
			for( int i =0; i< meshRenders.Length; ++i )
			{
				meshRenders[i].enabled = false;		
			}
			
		}
	}
}
