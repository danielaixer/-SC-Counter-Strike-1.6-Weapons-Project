#include "weapons"
#include "BuyMenu"

void PluginInit()
{
	BuyMenu::RegisterBuyMenuCCVars();
}

void MapInit()
{
	g_CS16Menu.RemoveItems();
	RegisterAll();

	//Melees
	g_CS16Menu.AddItem( BuyMenu::BuyableItem( CS16_KNIFE::WPN_NAME, CS16_KNIFE::GetName(), CS16_KNIFE::WPN_PRICE, "melee" ) );


	//Pistols and Handguns
	g_CS16Menu.AddItem( BuyMenu::BuyableItem( CS16_GLOCK18::WPN_NAME, CS16_GLOCK18::GetName(), CS16_GLOCK18::WPN_PRICE, "handgun" ) );
	g_CS16Menu.AddItem( BuyMenu::BuyableItem( CS16_GLOCK18::AMMO_NAME, CS16_GLOCK18::GetAmmoName(), CS16_GLOCK18::AMMO_PRICE, "ammo", "handgun" ) );


	//Shotguns
	g_CS16Menu.AddItem( BuyMenu::BuyableItem( CS16_M3::WPN_NAME, CS16_M3::GetName(), CS16_M3::WPN_PRICE, "shotgun" ) );
	g_CS16Menu.AddItem( BuyMenu::BuyableItem( CS16_M3::AMMO_NAME, CS16_M3::GetAmmoName(), CS16_M3::AMMO_PRICE, "ammo", "shotgun" ) );


	//Submachine guns
	g_CS16Menu.AddItem( BuyMenu::BuyableItem( CS16_MAC10::WPN_NAME, CS16_MAC10::GetName(), CS16_MAC10::WPN_PRICE, "smg" ) );
	g_CS16Menu.AddItem( BuyMenu::BuyableItem( CS16_MAC10::AMMO_NAME, CS16_MAC10::GetAmmoName(), CS16_MAC10::AMMO_PRICE, "ammo", "smg" ) );


	//Assault Rifles & Sniper Rifles

	g_CS16Menu.AddItem( BuyMenu::BuyableItem( CS16_FAMAS::WPN_NAME, CS16_FAMAS::GetName(), CS16_FAMAS::WPN_PRICE, "rifle" ) );
	g_CS16Menu.AddItem( BuyMenu::BuyableItem( CS16_FAMAS::AMMO_NAME, CS16_FAMAS::GetAmmoName(), CS16_FAMAS::AMMO_PRICE, "ammo", "rifle" ) );

	g_CS16Menu.AddItem( BuyMenu::BuyableItem( CS16_SCOUT::WPN_NAME, CS16_SCOUT::GetName(), CS16_SCOUT::WPN_PRICE, "rifle" ) );
	g_CS16Menu.AddItem( BuyMenu::BuyableItem( CS16_SCOUT::AMMO_NAME, CS16_SCOUT::GetAmmoName(), CS16_SCOUT::AMMO_PRICE, "ammo", "rifle" ) );


	//Light Machine Guns
	g_CS16Menu.AddItem( BuyMenu::BuyableItem( CS16_M249::WPN_NAME, CS16_M249::GetName(), CS16_M249::WPN_PRICE, "lmg" ) );
	g_CS16Menu.AddItem( BuyMenu::BuyableItem( CS16_M249::AMMO_NAME, CS16_M249::GetAmmoName(), CS16_M249::AMMO_PRICE, "ammo", "lmg" ) );


	//Explosives and Equipment
	g_CS16Menu.AddItem( BuyMenu::BuyableItem( CS16_HEGRENADE::WPN_NAME, CS16_HEGRENADE::GetName(), CS16_M249::WPN_PRICE, "equip" ) );

	BuyMenu::MoneyInit();
}