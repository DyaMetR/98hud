# 98HUD
Heads up display addon for Garry's Mod mimicking the Windows 98 user interface.

## Features
+   Health indicator
+   Armour indicator
+   Ammunition indicator
+   Scheme customization

## Customization includes
+   Toggle HUD
+   Change scale
+   Scheme selection
+   Scheme editing
+   Custom scheme creation
+   Change bars' modes
    +   Straight
    +   Segmented
    +   Straight with InstallShield Wizard colours
    +   Segmented with InstallShield Wizard colours
+   Change window title's extensions

## Available themes by default
+   Baseball (256 color)
+   High Contrast White (large)
+   Horses (256 color)
+   Garfield
+   FoxTrot
+   Maple
+   Geometry (high color)
+   Windows Standard (extra large)
+   Horror Channel (high color)
+   Red, White, and Blue (VGA)
+   Pumpkin (large)
+   Wheat
+   Desert
+   Inside your Computer (high color)
+   Bugs (256 color)
+   Jazz
+   High Contrast #1 (large)
+   High Contrast White
+   Spruce
+   Space (256 color)
+   Architecture
+   Cityscape
+   Science Fiction (high color)
+   The 60s USA (256 color)
+   Windows Classic
+   Lilac (large)
+   Corbis Photography (high color)
+   Rose (large)
+   Slate
+   Eggplant
+   Peanuts
+   Marine (high color)
+   Rainy Day
+   Windows 98 (high color)
+   Rock-n-Roll (high color)
+   Teal (VGA)
+   High Contrast White (extra large)
+   High Contrast Black
+   Underwater (high color)
+   RE-man (high color)
+   Lilac
+   Leonardo da Vinci (256 color)
+   Science (256 color)
+   Plum (high color)
+   The Golden Era (high color)
+   Falling Leaves (high color)
+   Storm (VGA)
+   High Contrast Black (extra large)
+   More Windows (high color)
+   Windows Standard (large)
+   Rose
+   Mystery (high color)
+   Snowboarding (256 color)
+   PhotoDisc (high color)
+   Jungle (256 color)
+   Nature (high color)
+   World Traveler (high color)
+   High Contrast Black (large)
+   Doonesbury
+   Windows 98 (256 color)
+   Cathy
+   Messy Room (256 color)
+   Fashion (high color)
+   Travel (high color)
+   Windows Default
+   High Contrast #2 (large)
+   High Contrast #1 (extra large)
+   Dangerous Creatures (256 color)
+   High Contrast #2
+   Tree House (256 color)
+   Sports (256 color)
+   Brick
+   High Contrast #1
+   High Contrast #2 (extra large)
+   Windows Default (high color)

## Adding new schemes programmatically
You may want to add schemes hard-coded inside the addon. These cannot be deleted
in-game (but can be overwritten) and will be available for everyone in the server
that it's installed.

### Setting up the folder
Create a legacy addon folder (a folder inside the _addons_ folder), then,
create the required directories until you're left with `lua/autorun/98hud/add-ons/`.

Inside the newly created `add-ons` folder you'll have to add the scripts that will
add content to the HUD.

### Creating a new scheme
You can use the following function:

`W98HUD:addTheme(id, name, data)`

> @param {string} internal identificator
>
> @param {string} print name
>
> @param {table} theme data
>
>   +   parameters
>
>       +   a table of visual parameters' values
>
>   +   sounds (unused)

#### Available default parameters
+   **desktop**
    +   _Underused_ -- currently only used in the appereance menu
+   **bgCol1**
    +   Window colour
+   **bgCol2**
    +   Caption button icon colour
+   **captionCol**
    +   Caption button colour
+   **btnCol1**
    +   Button light
+   **btnCol2**
    +   Button shadow
+   **titleSize**
    +   Window title bar size
+   **titleTxtFont**
    +   Window title text font family
+   **titleTxtSize**
    +   Window title text size
+   **titleTxtWeight**
    +   Window title text weight
+   **titleTxtItalic**
    +   Whether the window title text is italic
+   **aTitleCol1**
    +   Active title bar gradient colour
+   **aTitleCol2**
    +   Active title bar background colour
+   **aTitleTxtCol**
    +   Active title bar text colour
+   **iTitleCol1**
    +   Inactive title bar gradient colour
+   **iTitleCol2**
    +   Inactive title bar background colour
+   **iTitleTxtCol**
    +   Inactive title bar text colour
+   **aBorderSize**
    +   Active window border size
+   **aBorderCol**
    +   Active window border colour
+   **iBorderSize**
    +   Inactive window border size
+   **iBorderCol**
    +   Inactive window border colour
+   **selItemsCol1**
    +   Selected item highlight colour (used in progress bars)
+   **selItemsCol2**
    +   Selected item highlight text colour (used in progress bars)
+   **winBgCol**
    +   Window content background colour (used in progress bars)
+   **winTxtCol**
    +   Window text colour
+   **msgFont**
    +   Message box font family
+   **msgSize**
    +   Message box text size
+   **msgCol**
    +   Message box text colour
+   **msgWeight**
    +   Message box font weight
+   **msgItalic**
    +   Whether the message box text is italic
