/*
	Programmer, Developer
ผู้จัดทำ : ._BeSt]Dev_. (THe BeSt)
website: www.sa-mp.mp
*/

public OnPlayerClickMap(playerid, Float:fX, Float:fY, Float:fZ)
{
	if (playerData[playerid][pAdmin] >= 1)
	{
		SendClientMessage(playerid, -1, "{FFFF00}[{FF0000}Kanpitak Support{FFFF00}] คุณได้ใช้งานระบบคลิ๊กแมพ, ระบบจึงได้พาคุณวาร์ปมายังจุดที่คุณต้องการ");
		if (IsPlayerInAnyVehicle(playerid))
		{
			SetVehiclePos(GetPlayerVehicleID(playerid), fX,fY + 2, fZ);
			LinkVehicleToInterior(GetPlayerVehicleID(playerid), GetPlayerInterior(playerid));
		}
		else
			SetPlayerPos(playerid, fX + 1, fY, fZ);

		SetPlayerInterior(playerid, GetPlayerInterior(playerid));
		SetPlayerVirtualWorld(playerid, GetPlayerVirtualWorld(playerid));
	}
	return 1;
}
