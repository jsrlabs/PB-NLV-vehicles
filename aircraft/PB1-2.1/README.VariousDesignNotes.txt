
The vehicle is built up in parallel stages of 4" (10.16cm) diameter tubes in bundles.

3rd Stage is a bundle of 4 tubes in a square.
2nd stage is 12 tubes around that making a 16 tube (4x4) square.
1st stage is  20 tubes making a 6x6 array.

Frontal area:
1st : 0.369 m^2 
2nd: 0.16 m^2
3rd: 0.03919 m^2
I'd assume lift/drag is a Normal cylindrical rocket of this  frontal area  and length for now. 

I'd put a 3 second coast between stages.

Each Tube in the bundle has the following characteristics:

4.4Kg empty (includes ullage gasses)
29.4 Kg full.
25 kg propellants (55.12 lbs)
Assume the 4.4Kg includes the payload for the 3rd stage.
and the mounting hardware for the 1st and 2nd.
Based on detailed models of the engine and plumbing and test articles for the 
composite structure I have a mass of  3450 gms or so so the 4.4 includes some margin.

Propellant capacity 20L
Propellant density 1.25gm/cc
Tube diameter 10.16 cm
Tube length 5.5 meters or so...

1st stage tubes:
Starting thrust : 650N
Ending thrust:    180N
ISP 200 going to 230

2nd and 3rd stage tubes:
Starting thrust : 700N
Ending thrust:    200N
ISP 295 

Don't know if you want to model controls to start with, or just punt and assume you can do control.

If you do then each tube has a single axis gimbals of +/- 5 degrees  with the gimbals axis 90 degrees to a
vector to the center of the vehicle.

I need to get you some accurate moments of inertial and centers of gravity as well...
The following should get things started...

To start with model the moments of inertia of each tube as a cylinder of the empty tube weight.
Empty airframe         3 kg
Point mass engine 10 cm from trailing edge or 5.4 m from the front of the vehicle. 1.4 kg
There are three tanks blow down , fuel and  oxidizer 
I'm trying to keep the CG forward for control purposes... so the blow down tank is in the back.
The heavy oxidizer tank is as far forward as possible.

Here is a table of tank CG in meters from front of the vehicle  vs tank fill percentage...
[Meters]
Tank fill  100         80         60         40         20
Tank CG      1.499765   1.704601   1.909437   2.114272   2.321502

[Inches]
Tank fill  100     80     60     40     20
Tank CG     59.05  67.11  75.17  83.24  91.40

Probably ok to assume  the propellant is a point mass at the indicated point.
The point is meters from the front of the tube.

For a check this is what I get for weights of each stage

Stage       1      2      3
-----------------------------
Tubes      20     12      4
Stage wt   88     52.8   17.6
Payload   470.4  117.6    0
Empty wt  558.4  170.4   17.6
Full wt  1058.4  470.4  117.6
        
---

Yes you only need one gimbal per corner, so for the core stage all 4 tubes gimbal, for the outer stages the choice is probably to only gimbal the outers 4 corners, but if you gimball all then the assemblies are identical and one can maintain control through some differential depletion in the different tubes.
For the 2nd 3rd stage the ISP is ~295
The exit area is full tube diameter or 4" or 10.16 cm diameter.

For the first stage sea level ISP is 200 (some margin in that number)
The exit plane diameter is  3.8cm or 1.6" in diamter.

Realize as documented in the previous mail the thrust is not constant. 
The system is blow down presurized and the thrust decreases with time.
This decrease depends on the inital tank fill level and the gamma value of the pressurizing gas.

I can write you a function or I can give you a table, or you can
us a linear interpolation from 100% down to 31 or 41% depending on
if the pressurizing gas in He or something else.

TANKS

(assume vac Isp is 295; sea level isp 200 ... ? is MR changing on ascent?)
Vac thrust: 700N = 157.4 lbf.

Initial prop weight flow rate = 0.53 lb/sec
Odot = 0.464
Fdot = 0.066

Burn time = 128 sec (if constant flow rate, which it's not, due to blowdown pressure fade)

The OF ratio by weight is about 7:1
The density is 1.35 (84.28 lbf/ft3) for H2O2 vs 0.85 for the fuel (53.06 lbf/ft3).
Volume of oxidizer tank: 0.333 ft diameter by 16.4 ft long = 1.431 ft3
Volume of fuel tank: 0.333 ft diameter by 3.6 ft long = 0.31 ft3

(From PB, above) total propellant weight is 55.12 lbs.

Total *weight* of oxidizer loaded if tank filled at 50% = 48.23 lb
Total *weight* of fuel loaded if tank filled at 50% = 6.89 lb
oxidizer will be in front of fuel tank.

So the tank will be tubular with a dividing bulkhead at 18% of the length.
The 18% toward the rear will hold fuel at density 0.85gm/cc filled to 50%.
the 82% toward the front will hold oxidizer at density of 1.35gm/cc filled to 50%.

Forward tank (oxidizer)
------------------------------------------------------------
Oxygen tank CG (if 100% full): 18' * 0.41 =>  88.6"
Oxygen tank drain location:    18' * 0.82 => 177.1"

Aft tank (fuel)
------------------------------------------------------------
Fuel tank CG (if 100% full):   18' * (0.82 + 0.09) => 196.6"
Fuel tank drain location:      18' * 1.0           => 216.0"

Nozzle location
------------------------------------------------------------
220.0" (four inches below aft end)

