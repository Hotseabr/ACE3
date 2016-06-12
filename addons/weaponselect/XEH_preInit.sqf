#include "script_component.hpp"

ADDON = false;

#include "XEH_PREP.hpp"

// collect frag and other grenades separately
GVAR(GrenadesAll) = [];
GVAR(GrenadesFrag) = [];
GVAR(GrenadesNonFrag) = [];

{
    private _magazines = getArray (configFile >> "CfgWeapons" >> "Throw" >> _x >> "magazines");

    GVAR(GrenadesAll) append _magazines;

    {
        private _ammo = getText (configFile >> "CfgMagazines" >> _x >> "ammo");
        private _explosive = getNumber (configFile >> "CfgAmmo" >> _ammo >> "explosive");

        ([GVAR(GrenadesFrag), GVAR(GrenadesNonFrag)] select (_explosive == 0)) pushBack _x;
        false
    } count _magazines;
    false
} count getArray (configFile >> "CfgWeapons" >> "Throw" >> "muzzles");

ADDON = true;
