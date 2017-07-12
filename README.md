# OpenSourceCartography

# Workshop: 
"Cartography with QGIS & Inkscape" presented at [FOSS4G 2017](http://2017.foss4g.org), Boston, MA, USA.

## Description:
Maps built in the map composer of any GIS program often have the signature look of their software of origin. With some help from graphic design software, maps can have the signature of their cartographer instead. Participants in this workshop will leave with a clear understanding of how to use Inkscape to refine static cartographic works started in QGIS. This workshop will give participants hands-on experience with the workflow presented at the 2016 FOSS4G North America meeting for using QGIS-generated SVG files in Inkscape, including how to build a basic map in QGIS, import it into Inkscape, and work with tools such as fonts, design elements, and alignment tools, to make a map that is truly their own style.

## Data
Data to use in this workshop: [FOSS4G Locations (GeoJSON)](https://github.com/MicheleTobias/OpenSourceCartography/blob/master/FOSS4G_Locations.geojson)

Original source for FOSS4G location information: https://wiki.osgeo.org/wiki/FOSS4G

Other potential data sources for your maps: [Michele's List of Data Sources](https://docs.google.com/spreadsheets/d/1964wpzdUZJElZ7xsF740BMiLcTtga82jEOnkHF7wyHU/edit?usp=sharing)

## Graphical Plan
Downloads --> Learn Inkscape --> Work in QGIS --> Cartography in Inkscape

                 Inkscape for Markers  --^
## Outline
1. Getting Started
   1. Software: QGIS (2.18), Inkscape (0.92)
   1. Forking the repository to get the data
  
1. Intro to Inkscape
   1. Demonstration: You Already Know This! 
   1. Hands-On: Make a Pin Icon in Inkscape
  
2. Working in QGIS
   1. Import data: FOSS4G Locations, Natural Earth, whatever else you want
   1. Data Processing: make a line from the points w/ Points2One plugin
   1. Styling in QGIS: 
      1. Projection
      2. Vector styles 
      3. Custom Markers with Inkscape
   1. Export to SVG
      
1. Finishing Details in Inkscape
   1. Ungroup
   1. Move similar vectors pieces into individual layers (example: all labels into one layer, all point markers into another)
   1. Clip anything that didn't clip correctly in the QGIS export
   
## Getting Started
You should already have installed:
* QGIS (2.18)
* Inkscape (0.92)

Fork this repository to get the data using whatever tool you like.  **OR** if you're not set up for git, you can download a zip file of all the material by:
  1. Go to the [top of this GitHub repository](https://github.com/MicheleTobias/OpenSourceCartography)
  1. Click on the big green "Clone or Download" button.
  1. Pick the "Download ZIP" option, then save it where you want it.  Don't forget to unzip it.

  
## Intro to Inkscape
### Demonstration: You Already Know This!
   1. Concept of vectors (points, lines, polygons) vs. rasters (images)
   1. Window Overview
   1. GIS-Similar Concepts
       1. Merge/Clip/Union/Etc.
       1. Layers
       1. Fill & Stroke = Symbology
       
### Hands-On: Make a Pin Icon in Inkscape
Let's learn to use Inkscape while making something we can use later: an icon to represent a point.  I'll walk you through how to make a map pin icon, but feel free to make your own version!  *Something to remember: SAVE OFTEN! Just like GIS, vector illustration programs can be a little unstable. Save every time you think you might want to.*

Open Inkscape.  Let's learn a little about the interface.
![Inkscape Interface Tour](/Images/InkscapeTour.png)

There are a lot of toolbars.  Here's a cheatsheet for the main ones:
![Toolbars Cheatsheet](/Images/Toolbars.png)
I'll assume you can use this image to help you locate tools.  If I don't explain how to find a tool, use this image to help you find it in the interface.

Draw a Circle in the middle of your canvas using the Cirlce & Elipse tool.  Hold down Ctrl while drawing your circle to make a perfect circle (instead of an elipse which is longer in one dimension).

![Draw a Circle](/Images/Pin_1_Circle.png)

Select your cirle with the Select & Transform Objects tool (it looks like a black arrow) and then Open the Fill & Stroke dialog.  You can set the fill & stroke either in this dialog or on the pallette at the bottom of the screen. Set the fill to an orange color and the stroke to a darker orange.

![Make the Circle Orange](/Images/Pin_2_OrangeCircle.png)

Now use the rectangle tool to draw a skinny, tall rectangle. Make the fill a medium gray and the stroke a dark gray.

![Add a Gray Rectangle](/Images/Pin_3_Rectangle.png)

Before this will look like a pin at all, we need to do some arranging. Open the Align & Distribute dialog. Select your circle with the Select tool, then hold down Shift and select the rectangle.  Change the drop-down in the Align dialog to "First Selected" and the click the button to "Center on Vertical Axis" (hover over the buttons to get a tool tip with the name of the buttons).  Now your rectangle should be in the middle of your circle.

![Align objects](/Images/Pin_4_Align.png)

You'll probably want to move the rectangle so it's near the bottom of the circle.  Select the rectangle and use the arrow keys on your keyboard to move it down.  Hold Shift with the arrow keys to move objects in larger jumps.  

![Align objects](/Images/Pin_5_Move.png)

Looking better!  But the rectangle should really be underneath the circle.  Select the rectangle.  On the left side above the canvas, you'll see that the tool bar has options to raise and lower items relative to each other.  Use "Lower Selection to Bottom" to put the rectangle below the circle.  Now it's really starting to look like a pin!

![Change the order](/Images/Pin_6_Order.png)

Make a shine on the circle & rectangle.
* Fill & Stroke

Arrange & Allign Tool: line them up

Final adjustments: round the rectangle

Adjust the page size.

Save.
  
## Working in QGIS
   1. Import data: FOSS4G Locations, Natural Earth, whatever else you want
   1. Data Processing: make a line from the points w/ Points2One plugin
   1. Styling in QGIS: 
      1. Projection
      2. Vector styles 
      3. Custom Markers with Inkscape
   1. Export to SVG
      
## Finishing Details in Inkscape
   1. Ungroup
   1. Move similar vectors pieces into individual layers (example: all labels into one layer, all point markers into another)
   1. Clip anything that didn't clip correctly in the QGIS export
