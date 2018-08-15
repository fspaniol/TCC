<?xml version = "1.0" encoding="UTF-8" standalone="yes"?>
<CPLEXSolution version="1.2">
 <header
   problemName="glpk/simple/simple.lp"
   solutionName="incumbent"
   solutionIndex="-1"
   objectiveValue="2"
   solutionTypeValue="3"
   solutionTypeString="primal"
   solutionStatusValue="101"
   solutionStatusString="integer optimal solution"
   solutionMethodString="mip"
   primalFeasible="1"
   dualFeasible="1"
   MIPNodes="0"
   MIPIterations="0"
   writeLevel="1"/>
 <quality
   epInt="1.0000000000000001e-05"
   epRHS="9.9999999999999995e-07"
   maxIntInfeas="0"
   maxPrimalInfeas="8.8817841970012523e-16"
   maxX="1.0000000000000009"
   maxSlack="4.0000000000000009"/>
 <linearConstraints>
  <constraint name="checkFlow(1,2)" index="0" slack="0"/>
  <constraint name="checkFlow(2,3)" index="1" slack="0"/>
  <constraint name="checkFlow(3,4)" index="2" slack="0"/>
  <constraint name="checkFlow(4,5)" index="3" slack="0"/>
  <constraint name="sameFlow(1,3,4)" index="4" slack="-0"/>
  <constraint name="sameFlow(1,4,5)" index="5" slack="-0"/>
  <constraint name="sameFlow(2,1,2)" index="6" slack="-0"/>
  <constraint name="deliver(1,1,2)" index="7" slack="-1"/>
  <constraint name="deliver(1,2,3)" index="8" slack="-0"/>
  <constraint name="deliver(2,2,3)" index="9" slack="-0"/>
  <constraint name="deliver(2,3,4)" index="10" slack="-1"/>
  <constraint name="deliver(2,4,5)" index="11" slack="-0"/>
  <constraint name="receive(1,1,2)" index="12" slack="2"/>
  <constraint name="receive(1,2,3)" index="13" slack="1"/>
  <constraint name="receive(2,2,3)" index="14" slack="-0"/>
  <constraint name="receive(2,3,4)" index="15" slack="2"/>
  <constraint name="receive(2,4,5)" index="16" slack="0.99999999999999911"/>
  <constraint name="weight1(1,1,2)" index="17" slack="-0"/>
  <constraint name="weight1(1,2,3)" index="18" slack="-0"/>
  <constraint name="weight1(2,2,3)" index="19" slack="-0"/>
  <constraint name="weight1(2,3,4)" index="20" slack="-8.8817841970012523e-16"/>
  <constraint name="weight1(2,4,5)" index="21" slack="-0"/>
  <constraint name="weight2(1,1,2)" index="22" slack="-1"/>
  <constraint name="weight2(1,2,3)" index="23" slack="-0"/>
  <constraint name="weight2(2,2,3)" index="24" slack="-0"/>
  <constraint name="weight2(2,3,4)" index="25" slack="-0.99999999999999911"/>
  <constraint name="weight2(2,4,5)" index="26" slack="-0"/>
  <constraint name="bindWeight1(1,1,2)" index="27" slack="0"/>
  <constraint name="bindWeight1(1,2,3)" index="28" slack="4"/>
  <constraint name="bindWeight1(2,2,3)" index="29" slack="3"/>
  <constraint name="bindWeight1(2,3,4)" index="30" slack="-8.8817841970012523e-16"/>
  <constraint name="bindWeight1(2,4,5)" index="31" slack="4.0000000000000009"/>
  <constraint name="bindWeight2(1,1,2)" index="32" slack="0"/>
  <constraint name="bindWeight2(1,2,3)" index="33" slack="0"/>
  <constraint name="bindWeight2(2,2,3)" index="34" slack="-1"/>
  <constraint name="bindWeight2(2,3,4)" index="35" slack="-8.8817841970012523e-16"/>
  <constraint name="bindWeight2(2,4,5)" index="36" slack="8.8817841970012523e-16"/>
  <constraint name="dispatchLast(1,2,3)" index="37" slack="-0"/>
  <constraint name="dispatchLast(2,4,5)" index="38" slack="-0"/>
 </linearConstraints>
 <variables>
  <variable name="Y(1,1)" index="0" value="-0"/>
  <variable name="Y(1,2)" index="1" value="1"/>
  <variable name="Y(1,3)" index="2" value="0"/>
  <variable name="Y(1,4)" index="3" value="0"/>
  <variable name="Y(1,5)" index="4" value="0"/>
  <variable name="Y(2,1)" index="5" value="0"/>
  <variable name="Y(2,2)" index="6" value="0"/>
  <variable name="Y(2,3)" index="7" value="0"/>
  <variable name="Y(2,4)" index="8" value="1"/>
  <variable name="Y(2,5)" index="9" value="0"/>
  <variable name="X(1,2,1)" index="10" value="1"/>
  <variable name="X(1,2,2)" index="11" value="0"/>
  <variable name="X(2,3,1)" index="12" value="1"/>
  <variable name="X(2,3,2)" index="13" value="-0"/>
  <variable name="X(3,4,1)" index="14" value="0"/>
  <variable name="X(3,4,2)" index="15" value="1"/>
  <variable name="X(4,5,1)" index="16" value="0"/>
  <variable name="X(4,5,2)" index="17" value="1"/>
  <variable name="C(1,1)" index="18" value="0"/>
  <variable name="C(1,2)" index="19" value="1"/>
  <variable name="C(2,2)" index="20" value="0"/>
  <variable name="C(2,3)" index="21" value="-0"/>
  <variable name="C(2,4)" index="22" value="1.0000000000000009"/>
  <variable name="C(1,3)" index="23" value="0"/>
  <variable name="C(2,5)" index="24" value="0"/>
 </variables>
</CPLEXSolution>
