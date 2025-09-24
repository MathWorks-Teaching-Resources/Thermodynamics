
# <span style="color:rgb(213,80,0)">Thermodynamics</span>


[![View on File Exchange](https://www.mathworks.com/matlabcentral/images/matlab-file-exchange.svg)](https://www.mathworks.com/matlabcentral/fileexchange/126784-thermodynamics) or [![Open in MATLAB Online](https://www.mathworks.com/images/responsive/global/open-in-matlab-online.svg)](https://matlab.mathworks.com/open/github/v1?repo=MathWorks-Teaching-Resources/Thermodynamics&project=Thermodynamics.prj&file=README.mlx)

[![MATLAB Versions Tested](https://img.shields.io/endpoint?url=https%3A%2F%2Fraw.githubusercontent.com%2FMathWorks-Teaching-Resources%2FThermodynamics%2Frelease%2FImages%2FTestedWith.json)](https://MathWorks-Teaching-Resources.github.io/Thermodynamics)

**Curriculum Module**

_Created with R2024a. Compatible with R2024a and later releases._

# Information

This curriculum module contains interactive [MATLAB® live scripts](https://www.mathworks.com/products/matlab/live-editor.html) that teach fundamental concepts and basic terminology related to introductory thermodynamics. Topics addressed include units, the first and second laws of thermodynamics, state variables, work, and the components of a refrigeration cycle. 

## Background

You can use these live scripts as demonstrations in lectures, class activities, or interactive assignments outside class. This module consists of several interactive live scripts intended to introduce or deepen student understanding of thermodynamic concepts, including working with data tables and reading thermodynamic plots. Two additional scripts are included for instructors or students who want to go beyond the included material by installing CoolProp or building their own refrigerator model. 


The instructions inside the live scripts will guide you through the exercises and activities. Get started with each live script by running it one section at a time. To stop running the script or a section midway (for example, when an animation is in progress), use the <img src="Images/EndIcon.png" width="19" alt="EndIcon.png"> Stop button in the **RUN** section of the **Live Editor** tab in the MATLAB Toolstrip.


Contact the [MathWorks Educator Content Development Team](mailto:%20onlineteaching@mathworks.com) if you have a question.

## Related Courseware Modules
-  [**Calculus: Integrals** ](https://www.mathworks.com/matlabcentral/fileexchange/105740-calculus-integrals)is available on [<img src="Images/OpenInFX.png" width="91" alt="OpenInFX.png">](https://www.mathworks.com/matlabcentral/fileexchange/105740-calculus-integrals) or [<img src="Images/OpenInMO.png" width="136" alt="OpenInMO.png">](https://matlab.mathworks.com/open/github/v1?repo=MathWorks-Teaching-Resources/Calculus-Integrals&project=Integrals.prj&file=README.mlx) or [GitHub](https://github.com/MathWorks-Teaching-Resources/Calculus-Integrals)  
## Prerequisites

These scripts assume background knowledge of common thermodynamic terminology covered in secondary education, such as temperature, pressure, kinetic energy, and potential energy. Some scripts also require fluency with basic integral calculus. There is minimal MATLAB knowledge required for FirstLaw, SecondLaw and StatePlots, but you could use [MATLAB Onramp](https://matlabacademy.mathworks.com/details/matlab-onramp/gettingstarted) as a resource to acquire familiarity with live scripts and MATLAB syntax. More familiarity with MATLAB is required for CreatePVplots, CalculateWork, and Model\_Fridge, as those are designed in Code Visible format. Familiarity with Simulink at the level of [Simulink Onramp](https://matlabacademy.mathworks.com/details/simulink-onramp/simulink) may be helpful for Model\_Fridge as well.


For those interested in additional coding, SetUpCoolProp includes instructions for installing and accessing CoolProp. BuildRefrigerator walks through a project to build a refrigerator model in Simulink out of standard component blocks. BuildRefrigerator requires [Simulink Onramp](https://matlabacademy.mathworks.com/details/simulink-onramp/simulink), at a minimum. If possible, [Simscape Onramp](https://matlabacademy.mathworks.com/details/simscape-onramp/simscape) would be helpful as well. Students are expected to find and insert specified blocks, connect blocks, edit block parameters, rename blocks, copy and paste subsystems, run simulations, and explore the output.

## Getting Started

**On MATLAB Online:**


Use the [<img src="Images/OpenInMO.png" width="136" alt="OpenInMO.png">](https://matlab.mathworks.com/open/github/v1?repo=MathWorks-Teaching-Resources/Thermodynamics&project=Thermodynamics.prj&file=README.mlx) link to download the module. You will be prompted to log in or create a MathWorks account. The project will be loaded, and you will see README.mlx laying out the contents of the repository.


**On Desktop:**


Ensure you have all the required products (listed below) installed. If you need to include a product, add it using the Add\-On Explorer. To install an add\-on, go to the **Home** tab and select  <img src="Images/AddOnsIcon.png" width="16" alt="AddOnsIcon.png"> **Add-Ons** > **Get Add-Ons**. Then open Thermodynamics.prj to set up the project. The project will be loaded, and you will see README.mlx laying out the contents of the repository.


**Working through the module:**


Get started with each topic by clicking the link to open the live script. The instructions inside each live script will walk you through the live script and related functions.

## Products

MATLAB®, Simscape™, Simulink®, Simulink® Real\-Time™, Stateflow®, Symbolic Math Toolbox™, Image Processing Toolbox™


MATLAB and Symbolic Math Toolbox are used throughout. Simulink and Simscape are used in <samp>Model_Fridge.mlx</samp> and <samp>BuildRefrigerator.mlx</samp>. Image Processing Toolbox is used in <samp>Model_Fridge.mlx</samp>. Tools from Simulink, Simulink Real\-Time, and Stateflow are used in <samp>CalculateWork.mlx</samp>.

# Scripts
|      |      |      |      |
| :-- | :-- | :-- | :-- |
| **Topic** <br>  | **Summary** <br>  | **Learning Objectives** <br> In this script, students will... <br>  | **Mode** <br>   |
|  **First Law of Thermodynamics** in  <br> [**FirstLaw.mlx** ](https://matlab.mathworks.com/open/github/v1?repo=MathWorks-Teaching-Resources/Thermodynamics&project=Thermodynamics.prj&file=Scripts/FirstLaw.mlx) <br> [<img src="Images/Kheops-Pyramid.jpg" width="201" alt="Kheops-Pyramid.jpg">](https://matlab.mathworks.com/open/github/v1?repo=MathWorks-Teaching-Resources/Thermodynamics&project=Thermodynamics.prj&file=Scripts/FirstLaw.mlx) <br> Photo credit: [Nina Aldin Thune](https://matlab.mathworks.com/open/github/v1?repo=MathWorks-Teaching-Resources/Thermodynamics&project=Thermodynamics.prj&file=Scripts/FirstLaw.mlx) <br>  | This script introduces the first law of thermodynamics, focusing on units, energy, systems, and conservation laws. <br>  | \* Express various forms of energy in terms of fundamental units <br> \* Apply the conservation of mass in simple, conceptual situations <br> \* Identify systems with open and closed control volumes <br> \* Apply the first law of thermodynamics <br>  | Code Hidden <br>   |
|  **Standard Thermodynamics Language** in [**CreatePVplots.mlx**](https://matlab.mathworks.com/open/github/v1?repo=MathWorks-Teaching-Resources/Thermodynamics&project=Thermodynamics.prj&file=Scripts/CreatePVplots.mlx)  <br> [<img src="Images/isothermalPVplot.png" width="201" alt="isothermalPVplot.png">](https://matlab.mathworks.com/open/github/v1?repo=MathWorks-Teaching-Resources/Thermodynamics&project=Thermodynamics.prj&file=Scripts/CreatePVplots.mlx) <br>  | This script investigates pressure\-volume (PV) diagrams and their relationship to state equations in a closed system. <br>  | \* Identify keywords including isothermal, isobaric, and isochoric, and translate word problems into thermodynamic terminology <br> \* Identify and state necessary assumptions to express a thermodynamic relationship <br>  | Code Visible <br>   |
| **Calculate Work from P\-V plots** in [**CalculateWork.mlx**](https://matlab.mathworks.com/open/github/v1?repo=MathWorks-Teaching-Resources/Thermodynamics&project=Thermodynamics.prj&file=Scripts/CalculateWork.mlx)  <br> [<img src="Images/image_7.png" width="201" alt="image_7.png">](https://matlab.mathworks.com/open/github/v1?repo=MathWorks-Teaching-Resources/Thermodynamics&project=Thermodynamics.prj&file=Scripts/CalculateWork.mlx) <br>  | This script introduces computing the work done by a system using analysis of its PV plot. <br>  | \* Identify positive, negative, and zero work from a P\-V plot without computing the value <br> \* Compute work in constant pressure, constant volume, and integrable P\-V plots <br> \* Compare various state equations both to each other and to tabular data <br> \* Compute the work done by a piston modeled in Simulink <br>  | Code Visible <br>   |
|  **Second Law of Thermodynamics** in [**SecondLaw.mlx**](https://matlab.mathworks.com/open/github/v1?repo=MathWorks-Teaching-Resources/Thermodynamics&project=Thermodynamics.prj&file=Scripts/SecondLaw.mlx)  <br> [<img src="Images/pistonAdiabatic.gif" width="201" alt="pistonAdiabatic.gif">](https://matlab.mathworks.com/open/github/v1?repo=MathWorks-Teaching-Resources/Thermodynamics&project=Thermodynamics.prj&file=Scripts/SecondLaw.mlx) <br>  |  | \* Identify thermal sources, sinks, and reservoirs <br> \* Compute thermal efficiency <br> \* Reflect on the second law of thermodynamics <br> \* Use the universe as a system of reference for determining thermodynamic flows <br>  | Code Hidden <br>   |
|  **Properties of Pure Substances** in [**StatePlots.mlx**](https://matlab.mathworks.com/open/github/v1?repo=MathWorks-Teaching-Resources/Thermodynamics&project=Thermodynamics.prj&file=Scripts/StatePlots.mlx)  <br> [<img src="Images/TS_water.png" width="201" alt="TS_water.png">](https://matlab.mathworks.com/open/github/v1?repo=MathWorks-Teaching-Resources/Thermodynamics&project=Thermodynamics.prj&file=Scripts/StatePlots.mlx) <br>  | This script introduces state diagrams and temperature\-entropy plots. <br>  | \* Investigate the standard shapes of state diagrams <br> \* Investigate Temperature/Entropy plots for several pure substances, including water, R134a, and ammonia <br> \* Identify liquid, gas, two\-phase, and supercritical states of matter on a temperature\-entropy plot <br>  | Code Hidden <br>   |
| **Explore a Refrigeration Mode**l in [**Model\_Fridge.mlx**](https://matlab.mathworks.com/open/github/v1?repo=MathWorks-Teaching-Resources/Thermodynamics&project=Thermodynamics.prj&file=Scripts/Model_Fridge.mlx) <br> [<img src="Images/FridgeModelwithSensors.png" width="201" alt="FridgeModelwithSensors.png">](https://matlab.mathworks.com/open/github/v1?repo=MathWorks-Teaching-Resources/Thermodynamics&project=Thermodynamics.prj&file=Scripts/Model_Fridge.mlx) <br>  | This project applies the thermodynamic concepts to an everyday example using a Simulink model. <br>  | \* Apply understanding about thermodynamic cycles to model a refrigerator <br> \* Perform unit conversions required to extract values from a database and use them in a model <br> \* Read and interpret thermodynamic plots <br> \* Create informative plots based on thermodynamic sensor data <br>  | Code Visible <br>   |
|      |      |      |       |

# Additional Scripts:
|      |      |      |
| :-- | :-- | :-- |
| **Script** <br>  | [**SetUpCoolProp.mlx**](https://matlab.mathworks.com/open/github/v1?repo=MathWorks-Teaching-Resources/Thermodynamics&project=Thermodynamics.prj&file=Scripts/SetUpCoolProp.mlx) <br>  | [**BuildRefrigerator.mlx**](https://matlab.mathworks.com/open/github/v1?repo=MathWorks-Teaching-Resources/Thermodynamics&project=Thermodynamics.prj&file=Scripts/BuildRefrigerator.mlx)  <br>   |
| **Description** <br>  | A guide to installing and testing the functionality CoolProp from MATLAB. <br>  | Using Simulink and the capabilities of the Simscape Two\-Phase Fluid libraries, build and test a complete refrigerator. <br>   |
|      |      |       |

# <u>If you have questions:</u>

Solutions are available upon instructor request. Contact the [MathWorks online teaching team](mailto:%20onlineteaching@mathworks.com) if you would like to request solutions or have a question.


Copyright 2023 The MathWorks, Inc.


