#include "script_component.hpp"

ADDON = false;

#include "XEH_PREP.hpp"

// Reset the stored display
SETUVAR(GVAR(interface),displayNull);

// Permanent variables
GVAR(availableModes) = [0,1,2];
GVAR(availableSides) = [west,east,resistance,civilian];
GVAR(availableVisions) = [-2,-1,0,1];

GVAR(camAgent) = objNull;
GVAR(camDistance) = 10;
GVAR(camMode) = 0;
GVAR(camPan) = 0;
GVAR(camPos) = ATLtoASL [worldSize * 0.5, worldSize * 0.5, 20];
GVAR(camSpeed) = 1.5;
GVAR(camTilt) = -10;
GVAR(camUnit) = objNull;
GVAR(camVision) = -2;
GVAR(camZoom) = 1.25;

GVAR(interrupts) = [];
GVAR(isSet) = false;

GVAR(showComp) = true;
GVAR(showHelp) = true;
GVAR(showIcons) = true;
GVAR(showInterface) = true;
GVAR(showMap) = false;
GVAR(showTool) = true;
GVAR(showUnit) = true;

GVAR(unitList) = [];
GVAR(unitBlacklist) = [];
GVAR(unitWhitelist) = [];
GVAR(groupList) = [];

ADDON = true;
