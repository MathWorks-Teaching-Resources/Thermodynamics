# Thermodynamics 
[![View Thermodynamics on File Exchange](https://www.mathworks.com/matlabcentral/images/matlab-file-exchange.svg)](https://www.mathworks.com/matlabcentral/fileexchange/126784-thermodynamics) or [![Open in MATLAB Online](https://www.mathworks.com/images/responsive/global/open-in-matlab-online.svg)](https://matlab.mathworks.com/open/github/v1?repo=MathWorks-Teaching-Resources/Thermodynamics&project=Thermodynamics.prj)

**Curriculum Module**  
_Created with R2022b. Compatible with R2022b and later releases._ 

## Description ##
This curriculum module contains interactive [MATLAB&reg; live scripts](https://www.mathworks.com/products/matlab/live-editor.html) that teach fundamental concepts 
and basic terminology related to introductory thermodynamics. Topics addressed include units, the first and second laws of thermodynamics, state 
variables, work, and the components of a refrigeration cycle. 

You can use these live scripts as demonstrations in lectures, class activities, or interactive assignments outside class. This module consists of several interactive live scripts intended to introduce or deepen student understanding of thermodynamic concepts, including working with data tables and reading thermodynamic plots. Two additional scripts are included for instructors or students who want to go beyond the included material by installing CoolProp or building their own refrigerator model. 

## Get started with the Thermodynamics interactive examples ##

**Option 1: Download to Desktop** Download and unzip the repository. Then, double-click the Thermodynamics.prj file inside MATLAB&reg;. 

**Option 2: [Open in MATLAB Online](https://matlab.mathworks.com/open/github/v1?repo=MathWorks-Teaching-Resources/Thermodynamics&project=Thermodynamics.prj)** Log in to your MathWorks account to access your license. If you are associated with a university, use your university email to access a license. 

**Solutions are available upon instructor request.** If you would like to request solutions or have a question, contact the <a href="mailto:onlineteaching@mathworks.com">MathWorks online teaching team.</a>

- From there, you can follow the landing page instructions to get started with the examples. 
- The instructions inside the live scripts will guide you through the exercises and activities. 
- Get started with each live script by running it one section at a time. 
- To stop running the script or a section midway (for example, if a loop is running longer than intended), click the <img src="https://user-images.githubusercontent.com/88841524/182219991-17ef7bf9-369b-4463-8de6-9e440ca3bc9b.png"> **Stop** button in the **RUN** section of the **Live Editor** tab in the MATLAB Toolstrip.

## Prerequisite Domain Knowledge ##
These scripts assume background knowledge of common thermodynamic terminology as covered in secondary education such as temperature, pressure, kinetic energy, and potential energy as well as fluency with basic integral calculus. There is minimal MATLAB knowledge required for FirstLaw, SecondLaw and StatePlots, but you could use <a href="https://matlabacademy.mathworks.com/details/matlab-onramp/gettingstarted">MATLAB Onramp</a> as a resource to acquire familiarity with live scripts and MATLAB syntax. More familiarity with MATLAB is required for CreatePVplots, CalculateWork and Model_Fridge, as those are designed in Code Visible format. Familiarity with Simulink at the level of <a href="https://matlabacademy.mathworks.com/details/simulink-onramp/simulink">Simulink Onramp</a> may be helpful for Model_Fridge as well. 

For those interested in additional coding, SetUpCoolProp includes instructions for installing and accessing the CoolProp thermodynamic reference library. BuildRefrigerator walks through a project to build a refrigerator model in Simulink out of standard component blocks. BuildRefrigerator requires <a href="https://matlabacademy.mathworks.com/details/simulink-onramp/simulink">Simulink Onramp</a>, at a minimum. If possible, <a href="https://matlabacademy.mathworks.com/details/simscape-onramp/simscape">Simscape Onramp</a> would be helpful as well. Students are expected to find and insert specified blocks, connect blocks, edit block parameters, rename blocks, copy and paste subsystems, run simulations, and explore the output.

## Details ##

**FirstLaw.mlx** [![Open in MATLAB Online](https://www.mathworks.com/images/responsive/global/open-in-matlab-online.svg)](https://matlab.mathworks.com/open/github/v1?repo=MathWorks-Teaching-Resources/Thermodynamics&project=Thermodynamics.prj&file=FirstLaw.mlx)

This script introduces the first law of thermodynamics with a focus on units, energy, systems, and conservation laws. 

**In this script, students will...**
- Express various forms of energy in terms of fundamental units
- Apply the conservation of mass in simple, conceptual situations
- Identify systems with open and closed control volumes
- Apply the first law of thermodynamics

## ##

**CreatePVplots.mlx** [![Open in MATLAB Online](https://www.mathworks.com/images/responsive/global/open-in-matlab-online.svg)](https://matlab.mathworks.com/open/github/v1?repo=MathWorks-Teaching-Resources/Thermodynamics&project=Thermodynamics.prj&file=CreatePVplots.mlx)

This script investigates pressure-volume (PV) diagrams and their relationship to state equations in a closed system.

<img src="https://user-images.githubusercontent.com/88841524/217917355-3ee84766-92c8-487b-89c4-4d6fa5afa80e.png" width="500"> 

**In this script, students will...**
- Identify key words including isothermal, isobaric, and isochoric, and translate word problems into thermodynamic terminology
- Identify and state necessary assumptions to express a thermodynamic relationship

## ##

**CalculateWork.mlx** [![Open in MATLAB Online](https://www.mathworks.com/images/responsive/global/open-in-matlab-online.svg)](https://matlab.mathworks.com/open/github/v1?repo=MathWorks-Teaching-Resources/Thermodynamics&project=Thermodynamics.prj&file=CalculateWork.mlx)

This script introduces computing the work done by a system using analysis of its PV plot. 

<img src="https://user-images.githubusercontent.com/88841524/219049119-82ff7d2e-ef8a-464d-8395-3bddebd1ee78.png" width="500"> 

**In this script, students will...**
- Identify positive, negative, and zero work from a P-V plot without computing the value
- Compute work in constant pressure, constant volume, and integrable P-V plots
- Compare various state equations to each other and to tabular data
- Compute the work done by a piston modeled in Simulink

## ##

**SecondLaw.mlx** [![Open in MATLAB Online](https://www.mathworks.com/images/responsive/global/open-in-matlab-online.svg)](https://matlab.mathworks.com/open/github/v1?repo=MathWorks-Teaching-Resources/Thermodynamics&project=Thermodynamics.prj&file=SecondLaw.mlx)

This script introduces the second law of thermodynamics in both the Kelvin-Planck and Clausius formulations.

<img src="https://user-images.githubusercontent.com/88841524/217912909-21e3163e-c1bd-415e-94a6-b2cce34e14bc.gif" width="500">

**In this script, students will...**
- Identify thermal sources, sinks, and reservoirs
- Compute thermal efficiency
- Reflect on the second law of thermodynamics
- Use the universe as a system of reference for determining thermodynamic flows

## ##

**StatePlots.mlx** [![Open in MATLAB Online](https://www.mathworks.com/images/responsive/global/open-in-matlab-online.svg)](https://matlab.mathworks.com/open/github/v1?repo=MathWorks-Teaching-Resources/Thermodynamics&project=Thermodynamics.prj&file=StatePlots.mlx)

This script introduces computing the work done by a system using analysis of its PV plot. 

<img src="https://user-images.githubusercontent.com/88841524/217914067-6d0c7ce7-87fc-4148-959c-c3259a57d49f.png" width="500"> 

**In this script, students will...**
- Investigate the standard shapes of state diagrams
- Investigate Temperature/Entropy plots for several pure substances including water, R134a, and ammonia
- Identify liquid, gas, two-phase, and supercritical states of matter on a temperature-entropy plot

## ##

**Model_Fridge.mlx** [![Open in MATLAB Online](https://www.mathworks.com/images/responsive/global/open-in-matlab-online.svg)](https://matlab.mathworks.com/open/github/v1?repo=MathWorks-Teaching-Resources/Thermodynamics&project=Thermodynamics.prj&file=Model_Fridge.mlx)

Apply their knowledge of thermodynamics to a Simulink model of a real refrigerator.  

<img src="https://user-images.githubusercontent.com/88841524/219803919-977f9c77-320c-4ca9-82be-8114c8b24a33.png" width="500">

**In this script, students will...**
- Apply understanding about thermodynamic cycles to model a refrigerator
- Perform unit conversions required to extract values from a database and use them in a model
- Read and interpret thermodynamic plots
- Create informative plots based on thermodynamic sensor data

## ##

## With More Coding ##

**SetUpCoolProp.mlx** This script is only appropriate for desktop versions of MATLAB.

**In this script, students will...**
- Download and test their own copy of CoolProp 

## ##

**BuildRefrigerator.mlx** [![Open in MATLAB Online](https://www.mathworks.com/images/responsive/global/open-in-matlab-online.svg)](https://matlab.mathworks.com/open/github/v1?repo=MathWorks-Teaching-Resources/Thermodynamics&project=Thermodynamics.prj&file=BuildRefrigerator.mlx)

Using Simulink and the capabilities of the Simscape Two-Phase Fluid libraries, build and test a complete refrigerator from a blank model. 

<img src="https://user-images.githubusercontent.com/88841524/219805177-c6351671-984e-4176-9ad1-5a2c5f891a79.png" width="500">

**In this script, students will...**
- Build and test an evaporator model 
- Build and test a compressor model using a parameter sweep
- Build and test a condenser model
- Apply their understanding of liquid, vapor, and two-phase states of matter
- Build and test a complete refrigeration cycle

## ##

## Products ##
MATLAB&reg;, Simscape&trade;, Simulink&reg;, Simulink&reg; Real-Time&trade;, Stateflow&reg;, Symbolic Math Toolbox&trade;, Image Processing Toolbox&trade;

## License ##
The license for this module is available in the [license.md](LICENSE.md) file in this GitHub repository.

## Support ##
Please contact the <a href="mailto:onlineteaching@mathworks.com">MathWorks online teaching team.</a>

# #
_Copyright 2023 The MathWorks, Inc._
