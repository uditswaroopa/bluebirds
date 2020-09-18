# Scientific CALC
**SDLC MODEL USED**
	- AGILE SDLC MODEL

**DESCRPTION**

*APP3 BRANCH : Scientific Calculator App*
A simple yet elegant Scientific Calculator App just make those mathematical calculation easier and fun to do! from log to XOR operation, from decimal to Binary to Decimal to Hexadecimal we got you covered with most widely used calculations by programmers. In case you think we misssed something. Do let us know!  


**REQUIREMENT**

 - Scaffold Widget
 - Stateless Widget
 - Column Widget
 - Row Widget
 - Safe Area
 - Expanded
 - Container
 - Statefull
 - Padding 
 - Safe Area
 - Center
 - Raised Button 
 - Text
 
 **SCREENSHOTS**
 
 <img width="300"  height = "533" src="https://github.com/uditswaroopa/bluebirds/blob/APP3/screenshots/ui.jpg"></img>

**EXTERNAL PACKAGE USED**

 - package name
	reason behind using this package
 - 
**TAKE BACK!**

 - Things you have learned from project 
 - [debugShowCheckedModeBanner: false](https://github.com/uditswaroopa/bluebirds/blob/f49835edeb1adbd77b17256b4afb91ff90f4f6f5/lib/main.dart#L7) was used to remove the debug banner 
 - [_LCDState createState() => _LCDState](https://github.com/uditswaroopa/bluebirds/blob/6fdb755051caf207fbb9163def8b2eba42d64855/lib/display.dart#L5) was used to render the properties automatically from the main StatefulWidget
- [EdgeInsets.all]( https://github.com/uditswaroopa/bluebirds/blob/6fdb755051caf207fbb9163def8b2eba42d64855/lib/display.dart#L23) was used to make changes on all the edges , left , right , top, bottom.

- [Button](https://github.com/uditswaroopa/bluebirds/blob/6fdb755051caf207fbb9163def8b2eba42d64855/lib/button.dart#L11Buttons)widget was used to specify the number of buttons used in the app from 1-4 in a series

- <a href = "https://github.com/uditswaroopa/bluebirds/blob/3875a7a1f35e7dd15bbdc43ceb2ce7873cb2ae9f/lib/wrapper.dart#L14">Flex</a> property for Expanded widget define how much space is allocataed for that Expanded widget

- <a href = "https://github.com/uditswaroopa/bluebirds/blob/3875a7a1f35e7dd15bbdc43ceb2ce7873cb2ae9f/lib/button.dart#L21">Elevation</a> We used RaisedButton widget to give elevation 
- <a href = "https://github.com/uditswaroopa/bluebirds/blob/3875a7a1f35e7dd15bbdc43ceb2ce7873cb2ae9f/lib/display.dart#L13">Cotainer Decoration</a> to give color, curved corners to a container we use decoration argument of ContainerWidget 
 - <a href = "https://github.com/uditswaroopa/bluebirds/blob/3875a7a1f35e7dd15bbdc43ceb2ce7873cb2ae9f/lib/display.dart#L11">safeArea</a> Safe Area Widget is used to render the UI where OS widget don't render like the status bar and bottom navigation bar.
 - <a href = "https://github.com/uditswaroopa/bluebirds/blob/3875a7a1f35e7dd15bbdc43ceb2ce7873cb2ae9f/lib/display.dart#L17">margin</a> Margin is used to give margin wrt parent widget
 - [width](https://github.com/uditswaroopa/bluebirds/blob/ecd6c4b1257704154f13487297aa22b9f12187ad/lib/button.dart#L14)s == '=' ? breadth * 2 + 10 : breadth, this has been used to give the double beadth to '=' sign
 - [Color](https://github.com/uditswaroopa/bluebirds/blob/6fdb755051caf207fbb9163def8b2eba42d64855/lib/wrapper.dart#L10color(0xAF202125)): we can use custom color using Color class where we pass hex value of color with 0xFF representing opacity
 - <a href ="https://github.com/uditswaroopa/bluebirds/blob/8e3beacf2e054e0221b232b28263a0d1cc20fe30/lib/button.dart#L15">Raised Button</a> Raised Button is used in Flutter to have a button with some elevation
- A new class named 'Model' was created
- An object was created of the class 'Model' was also created
- 'tap' function was added 
- Then 'allclear' function was added next with a specified value to make the function work
- To pass the data in stateful widget we first need to pass data to the widget itself , [for eg : LCD()] and then the statefullwidget pass the to it’s state widget[_LCD<State>]
- tap()- User feels that button is pressed by using the tap() method. 
- allClear()- this method is used to clear the screen.
- class Model is used to understand the compilar that there is a expression and history.
   
