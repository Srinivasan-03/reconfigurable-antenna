'# MWS Version: Version 2025.0 - Aug 30 2024 - ACIS 34.0.1 -

'# length = mm
'# frequency = GHz
'# time = ns
'# frequency range: fmin = 4 fmax = 7
'# created = '[VERSION]2025.0|34.0.1|20240830[/VERSION]


'@ define material: FR4(LOSSY)

'[VERSION]2025.0|34.0.1|20240830[/VERSION]
With Material 
     .Reset 
     .Name "FR4(LOSSY)"
     .Folder ""
     .Rho "0"
     .ThermalType "Normal"
     .ThermalConductivity "0"
     .SpecificHeat "0", "J/K/kg"
     .DynamicViscosity "0"
     .UseEmissivity "True"
     .Emissivity "0"
     .MetabolicRate "0.0"
     .VoxelConvection "0.0"
     .BloodFlow "0"
     .MechanicsType "Unused"
     .SolarRadiationAbsorptionType "Opaque"
     .Absorptance "0.0"
     .UseSemiTransparencyCalculator "False"
     .SolarRadTransmittance "0.0"
     .SolarRadReflectance "0.0"
     .SolarRadSpecimenThickness "0.0"
     .SolarRadRefractiveIndex "1.0"
     .SolarRadAbsorptionCoefficient "0.0"
     .IntrinsicCarrierDensityModel "none"
     .FrqType "all"
     .Type "Normal"
     .MaterialUnit "Frequency", "GHz"
     .MaterialUnit "Geometry", "mm"
     .MaterialUnit "Time", "ns"
     .MaterialUnit "Temperature", "degC"
     .Epsilon "4.4"
     .Mu "1"
     .Sigma "0"
     .TanD "0.0"
     .TanDFreq "0.0"
     .TanDGiven "False"
     .TanDModel "ConstTanD"
     .SetConstTanDStrategyEps "AutomaticOrder"
     .ConstTanDModelOrderEps "3"
     .DjordjevicSarkarUpperFreqEps "0"
     .SetElParametricConductivity "False"
     .ReferenceCoordSystem "Global"
     .CoordSystemType "Cartesian"
     .SigmaM "0"
     .TanDM "0.0"
     .TanDMFreq "0.0"
     .TanDMGiven "False"
     .TanDMModel "ConstTanD"
     .SetConstTanDStrategyMu "AutomaticOrder"
     .ConstTanDModelOrderMu "3"
     .DjordjevicSarkarUpperFreqMu "0"
     .SetMagParametricConductivity "False"
     .DispModelEps  "None"
     .DispModelMu "None"
     .DispersiveFittingSchemeEps "Nth Order"
     .MaximalOrderNthModelFitEps "10"
     .ErrorLimitNthModelFitEps "0.1"
     .UseOnlyDataInSimFreqRangeNthModelEps "False"
     .DispersiveFittingSchemeMu "Nth Order"
     .MaximalOrderNthModelFitMu "10"
     .ErrorLimitNthModelFitMu "0.1"
     .UseOnlyDataInSimFreqRangeNthModelMu "False"
     .UseGeneralDispersionEps "False"
     .UseGeneralDispersionMu "False"
     .NLAnisotropy "False"
     .NLAStackingFactor "1"
     .NLADirectionX "1"
     .NLADirectionY "0"
     .NLADirectionZ "0"
     .Colour "0", "1", "1" 
     .Wireframe "False" 
     .Reflection "False" 
     .Allowoutline "True" 
     .Transparentoutline "False" 
     .Transparency "0" 
     .Create
End With

'@ new component: component1

'[VERSION]2025.0|34.0.1|20240830[/VERSION]
Component.New "component1"

'@ define brick: component1:Substrate

'[VERSION]2025.0|34.0.1|20240830[/VERSION]
With Brick
     .Reset 
     .Name "Substrate" 
     .Component "component1" 
     .Material "FR4(LOSSY)" 
     .Xrange "0", "50" 
     .Yrange "0", "50" 
     .Zrange "0", "1.6" 
     .Create
End With

'@ define material: Copper (annealed)

'[VERSION]2025.0|34.0.1|20240830[/VERSION]
With Material
     .Reset
     .Name "Copper (annealed)"
     .Folder ""
     .FrqType "static"
     .Type "Normal"
     .SetMaterialUnit "Hz", "mm"
     .Epsilon "1"
     .Mu "1.0"
     .Kappa "5.8e+007"
     .TanD "0.0"
     .TanDFreq "0.0"
     .TanDGiven "False"
     .TanDModel "ConstTanD"
     .KappaM "0"
     .TanDM "0.0"
     .TanDMFreq "0.0"
     .TanDMGiven "False"
     .TanDMModel "ConstTanD"
     .DispModelEps "None"
     .DispModelMu "None"
     .DispersiveFittingSchemeEps "Nth Order"
     .DispersiveFittingSchemeMu "Nth Order"
     .UseGeneralDispersionEps "False"
     .UseGeneralDispersionMu "False"
     .FrqType "all"
     .Type "Lossy metal"
     .SetMaterialUnit "GHz", "mm"
     .Mu "1.0"
     .Kappa "5.8e+007"
     .Rho "8930.0"
     .ThermalType "Normal"
     .ThermalConductivity "401.0"
     .SpecificHeat "390", "J/K/kg"
     .MetabolicRate "0"
     .BloodFlow "0"
     .VoxelConvection "0"
     .MechanicsType "Isotropic"
     .YoungsModulus "120"
     .PoissonsRatio "0.33"
     .ThermalExpansionRate "17"
     .Colour "1", "1", "0"
     .Wireframe "False"
     .Reflection "False"
     .Allowoutline "True"
     .Transparentoutline "False"
     .Transparency "0"
     .Create
End With

'@ define brick: component1:Ground

'[VERSION]2025.0|34.0.1|20240830[/VERSION]
With Brick
     .Reset 
     .Name "Ground" 
     .Component "component1" 
     .Material "Copper (annealed)" 
     .Xrange "0", "50" 
     .Yrange "0", "50" 
     .Zrange "-0.035", "0" 
     .Create
End With

'@ define brick: component1:Patch

'[VERSION]2025.0|34.0.1|20240830[/VERSION]
With Brick
     .Reset 
     .Name "Patch" 
     .Component "component1" 
     .Material "Copper (annealed)" 
     .Xrange "17", "33" 
     .Yrange "13.5", "36.5" 
     .Zrange "1.6", "1.635" 
     .Create
End With

'@ define brick: component1:solid1

'[VERSION]2025.0|34.0.1|20240830[/VERSION]
With Brick
     .Reset 
     .Name "solid1" 
     .Component "component1" 
     .Material "Copper (annealed)" 
     .Xrange "22.8", "25.8" 
     .Yrange "30.2", "40.2" 
     .Zrange "1.6", "1.635" 
     .Create
End With

'@ delete shape: component1:solid1

'[VERSION]2025.0|34.0.1|20240830[/VERSION]
Solid.Delete "component1:solid1"

'@ define material: Copper (pure)

'[VERSION]2025.0|34.0.1|20240830[/VERSION]
With Material
     .Reset
     .Name "Copper (pure)"
     .Folder ""
     .FrqType "all"
     .Type "Lossy metal"
     .MaterialUnit "Frequency", "GHz"
     .MaterialUnit "Geometry", "mm"
     .MaterialUnit "Time", "s"
     .MaterialUnit "Temperature", "Kelvin"
     .Mu "1.0"
     .Sigma "5.96e+007"
     .Rho "8930.0"
     .ThermalType "Normal"
     .ThermalConductivity "401.0"
     .SpecificHeat "390", "J/K/kg"
     .MetabolicRate "0"
     .BloodFlow "0"
     .VoxelConvection "0"
     .MechanicsType "Isotropic"
     .YoungsModulus "120"
     .PoissonsRatio "0.33"
     .ThermalExpansionRate "17"
     .ReferenceCoordSystem "Global"
     .CoordSystemType "Cartesian"
     .NLAnisotropy "False"
     .NLAStackingFactor "1"
     .NLADirectionX "1"
     .NLADirectionY "0"
     .NLADirectionZ "0"
     .FrqType "static"
     .Type "Normal"
     .SetMaterialUnit "Hz", "mm"
     .Epsilon "1"
     .Mu "1.0"
     .Kappa "5.96e+007"
     .TanD "0.0"
     .TanDFreq "0.0"
     .TanDGiven "False"
     .TanDModel "ConstTanD"
     .KappaM "0"
     .TanDM "0.0"
     .TanDMFreq "0.0"
     .TanDMGiven "False"
     .TanDMModel "ConstTanD"
     .DispModelEps "None"
     .DispModelMu "None"
     .DispersiveFittingSchemeEps "Nth Order"
     .DispersiveFittingSchemeMu "Nth Order"
     .UseGeneralDispersionEps "False"
     .UseGeneralDispersionMu "False"
     .Colour "1", "1", "0"
     .Wireframe "False"
     .Reflection "False"
     .Allowoutline "True"
     .Transparentoutline "False"
     .Transparency "0"
     .Create
End With

'@ define brick: component1:Feed

'[VERSION]2025.0|34.0.1|20240830[/VERSION]
With Brick
     .Reset 
     .Name "Feed" 
     .Component "component1" 
     .Material "Copper (pure)" 
     .Xrange "23.5", "26.5" 
     .Yrange "5", "13.5" 
     .Zrange "1.6", "1.635" 
     .Create
End With

'@ define brick: component1:Slot

'[VERSION]2025.0|34.0.1|20240830[/VERSION]
With Brick
     .Reset 
     .Name "Slot" 
     .Component "component1" 
     .Material "PEC" 
     .Xrange "21", "29" 
     .Yrange "24.25", "24.75" 
     .Zrange "1.6", "1.635" 
     .Create
End With

'@ boolean subtract shapes: component1:Patch, component1:Slot

'[VERSION]2025.0|34.0.1|20240830[/VERSION]
Solid.Subtract "component1:Patch", "component1:Slot"

'@ pick edge

'[VERSION]2025.0|34.0.1|20240830[/VERSION]
Pick.PickEdgeFromId "component1:Patch", "29", "22"

'@ pick edge

'[VERSION]2025.0|34.0.1|20240830[/VERSION]
Pick.PickEdgeFromId "component1:Patch", "25", "19"

'@ define lumped face element: Folder1:Diode_OFF

'[VERSION]2025.0|34.0.1|20240830[/VERSION]
With LumpedFaceElement
     .Reset 
     .SetName "Diode_OFF" 
     .Folder "Folder1" 
     .SetType "RLCSerial"
     .SetR "10000000"
     .SetL "0"
     .SetC "0"
     .SetGs "0"
     .SetI0 "1e-14"
     .SetT "300"
     .SetMonitor "False"
     .CircuitFileName ""
     .CircuitId "1"
     .UseCopyOnly "True"
     .UseRelativePath "False"
     .SetP1 "True", "25", "25.25", "1.635" 
     .SetP2 "True", "25", "24.75", "1.635" 
     .SetInvert "False" 
     .UseProjection "False" 
     .ReverseProjection "False" 
     .Create
End With

'@ define port: 1

'[VERSION]2025.0|34.0.1|20240830[/VERSION]
With Port 
     .Reset 
     .PortNumber "1" 
     .Label ""
     .Folder ""
     .NumberOfModes "1"
     .AdjustPolarization "False"
     .PolarizationAngle "0.0"
     .ReferencePlaneDistance "0"
     .TextSize "50"
     .TextMaxLimit "1"
     .Coordinates "Full"
     .Orientation "xmin"
     .PortOnBound "True"
     .ClipPickedPortToBound "False"
     .Xrange "0", "0"
     .Yrange "0", "50"
     .Zrange "-0.035", "1.635"
     .XrangeAdd "0.0", "0.0"
     .YrangeAdd "0.0", "0.0"
     .ZrangeAdd "0.0", "0.0"
     .SingleEnded "False"
     .WaveguideMonitor "False"
     .Create 
End With

'@ delete port: port1

'[VERSION]2025.0|34.0.1|20240830[/VERSION]
Port.Delete "1"

'@ define discrete port: 1

'[VERSION]2025.0|34.0.1|20240830[/VERSION]
With DiscretePort 
     .Reset 
     .PortNumber "1" 
     .Type "SParameter"
     .Label ""
     .Folder ""
     .Impedance "50.0"
     .Voltage "1.0"
     .Current "1.0"
     .Monitor "True"
     .Radius "0.0"
     .SetP1 "False", "25", "5", "1.635"
     .SetP2 "False", "25", "5", "0"
     .InvertDirection "False"
     .LocalCoordinates "False"
     .Wire ""
     .Position "end1"
     .Create 
End With

'@ define frequency range

'[VERSION]2025.0|34.0.1|20240830[/VERSION]
Solver.FrequencyRange "4", "8"

'@ set mesh properties (Hexahedral FIT)

'[VERSION]2025.0|34.0.1|20240830[/VERSION]
With Mesh 
     .MeshType "PBA" 
     .SetCreator "High Frequency"
End With 
With MeshSettings 
     .SetMeshType "Hex" 
     .Set "Version", 1%
     'MAX CELL - WAVELENGTH REFINEMENT 
     .Set "StepsPerWaveNear", "17" 
     .Set "StepsPerWaveFar", "17" 
     .Set "WavelengthRefinementSameAsNear", "1" 
     'MAX CELL - GEOMETRY REFINEMENT 
     .Set "StepsPerBoxNear", "20" 
     .Set "StepsPerBoxFar", "1" 
     .Set "MaxStepNear", "0" 
     .Set "MaxStepFar", "0" 
     .Set "ModelBoxDescrNear", "maxedge" 
     .Set "ModelBoxDescrFar", "maxedge" 
     .Set "UseMaxStepAbsolute", "0" 
     .Set "GeometryRefinementSameAsNear", "0" 
     'MIN CELL 
     .Set "UseRatioLimitGeometry", "1" 
     .Set "RatioLimitGeometry", "15" 
     .Set "MinStepGeometryX", "0" 
     .Set "MinStepGeometryY", "0" 
     .Set "MinStepGeometryZ", "0" 
     .Set "UseSameMinStepGeometryXYZ", "1" 
End With 
With MeshSettings 
     .Set "PlaneMergeVersion", "2" 
End With 
With MeshSettings 
     .SetMeshType "Hex" 
     .Set "FaceRefinementType", "NONE" 
     .Set "FaceRefinementRatio", "2" 
     .Set "FaceRefinementStep", "0" 
     .Set "FaceRefinementNSteps", "2" 
     .Set "EllipseRefinementType", "NONE" 
     .Set "EllipseRefinementRatio", "2" 
     .Set "EllipseRefinementStep", "0" 
     .Set "EllipseRefinementNSteps", "2" 
     .Set "FaceRefinementBufferLines", "3" 
     .Set "EdgeRefinementType", "RATIO" 
     .Set "EdgeRefinementRatio", "2" 
     .Set "EdgeRefinementStep", "0" 
     .Set "EdgeRefinementBufferLines", "3" 
     .Set "RefineEdgeMaterialGlobal", "0" 
     .Set "RefineAxialEdgeGlobal", "0" 
     .Set "BufferLinesNear", "3" 
     .Set "UseDielectrics", "1" 
     .Set "EquilibrateOn", "1" 
     .Set "Equilibrate", "1.5" 
     .Set "IgnoreThinPanelMaterial", "0" 
End With
With MeshSettings 
     .SetMeshType "Hex" 
     .Set "SnapToAxialEdges", "0"
     .Set "SnapToPlanes", "1"
     .Set "SnapToSpheres", "1"
     .Set "SnapToEllipses", "0"
     .Set "SnapToCylinders", "1"
     .Set "SnapToCylinderCenters", "1"
     .Set "SnapToEllipseCenters", "1"
     .Set "SnapToTori", "1"
     .Set "SnapXYZ" , "1", "1", "1"
End With 
With Mesh 
     .ConnectivityCheck "True"
     .UsePecEdgeModel "True" 
     .PointAccEnhancement "0" 
     .TSTVersion "0"
	  .PBAVersion "2024083025" 
     .SetCADProcessingMethod "MultiThread22", "-1" 
     .SetGPUForMatrixCalculationDisabled "False" 
End With

'@ define time domain solver parameters

'[VERSION]2025.0|34.0.1|20240830[/VERSION]
Mesh.SetCreator "High Frequency" 

With Solver 
     .Method "Hexahedral"
     .CalculationType "TD-S"
     .StimulationPort "All"
     .StimulationMode "All"
     .SteadyStateLimit "-40"
     .MeshAdaption "False"
     .AutoNormImpedance "False"
     .NormingImpedance "50"
     .CalculateModesOnly "False"
     .SParaSymmetry "False"
     .StoreTDResultsInCache  "False"
     .RunDiscretizerOnly "False"
     .FullDeembedding "False"
     .SuperimposePLWExcitation "False"
     .UseSensitivityAnalysis "False"
End With

'@ define frequency range

'[VERSION]2025.0|34.0.1|20240830[/VERSION]
Solver.FrequencyRange "4", "7"

'@ set mesh properties (Hexahedral FIT)

'[VERSION]2025.0|34.0.1|20240830[/VERSION]
With Mesh 
     .MeshType "PBA" 
     .SetCreator "High Frequency"
End With 
With MeshSettings 
     .SetMeshType "Hex" 
     .Set "Version", 1%
     'MAX CELL - WAVELENGTH REFINEMENT 
     .Set "StepsPerWaveNear", "50" 
     .Set "StepsPerWaveFar", "50" 
     .Set "WavelengthRefinementSameAsNear", "1" 
     'MAX CELL - GEOMETRY REFINEMENT 
     .Set "StepsPerBoxNear", "20" 
     .Set "StepsPerBoxFar", "1" 
     .Set "MaxStepNear", "0" 
     .Set "MaxStepFar", "0" 
     .Set "ModelBoxDescrNear", "maxedge" 
     .Set "ModelBoxDescrFar", "maxedge" 
     .Set "UseMaxStepAbsolute", "0" 
     .Set "GeometryRefinementSameAsNear", "0" 
     'MIN CELL 
     .Set "UseRatioLimitGeometry", "1" 
     .Set "RatioLimitGeometry", "15" 
     .Set "MinStepGeometryX", "0" 
     .Set "MinStepGeometryY", "0" 
     .Set "MinStepGeometryZ", "0" 
     .Set "UseSameMinStepGeometryXYZ", "1" 
End With 
With MeshSettings 
     .Set "PlaneMergeVersion", "2" 
End With 
With MeshSettings 
     .SetMeshType "Hex" 
     .Set "FaceRefinementType", "NONE" 
     .Set "FaceRefinementRatio", "2" 
     .Set "FaceRefinementStep", "0" 
     .Set "FaceRefinementNSteps", "2" 
     .Set "EllipseRefinementType", "NONE" 
     .Set "EllipseRefinementRatio", "2" 
     .Set "EllipseRefinementStep", "0" 
     .Set "EllipseRefinementNSteps", "2" 
     .Set "FaceRefinementBufferLines", "3" 
     .Set "EdgeRefinementType", "RATIO" 
     .Set "EdgeRefinementRatio", "2" 
     .Set "EdgeRefinementStep", "0" 
     .Set "EdgeRefinementBufferLines", "3" 
     .Set "RefineEdgeMaterialGlobal", "0" 
     .Set "RefineAxialEdgeGlobal", "0" 
     .Set "BufferLinesNear", "3" 
     .Set "UseDielectrics", "1" 
     .Set "EquilibrateOn", "1" 
     .Set "Equilibrate", "1.5" 
     .Set "IgnoreThinPanelMaterial", "0" 
End With
With MeshSettings 
     .SetMeshType "Hex" 
     .Set "SnapToAxialEdges", "0"
     .Set "SnapToPlanes", "1"
     .Set "SnapToSpheres", "1"
     .Set "SnapToEllipses", "0"
     .Set "SnapToCylinders", "1"
     .Set "SnapToCylinderCenters", "1"
     .Set "SnapToEllipseCenters", "1"
     .Set "SnapToTori", "1"
     .Set "SnapXYZ" , "1", "1", "1"
End With 
With Mesh 
     .ConnectivityCheck "True"
     .UsePecEdgeModel "True" 
     .PointAccEnhancement "0" 
     .TSTVersion "0"
	  .PBAVersion "2024083025" 
     .SetCADProcessingMethod "MultiThread22", "-1" 
     .SetGPUForMatrixCalculationDisabled "False" 
End With

'@ change solver type

'[VERSION]2025.0|34.0.1|20240830[/VERSION]
ChangeSolverType "HF Time Domain"

'@ set mesh properties (Hexahedral FIT)

'[VERSION]2025.0|34.0.1|20240830[/VERSION]
With Mesh 
     .MeshType "PBA" 
     .SetCreator "High Frequency"
End With 
With MeshSettings 
     .SetMeshType "Hex" 
     .Set "Version", 1%
     'MAX CELL - WAVELENGTH REFINEMENT 
     .Set "StepsPerWaveNear", "20" 
     .Set "StepsPerWaveFar", "20" 
     .Set "WavelengthRefinementSameAsNear", "1" 
     'MAX CELL - GEOMETRY REFINEMENT 
     .Set "StepsPerBoxNear", "20" 
     .Set "StepsPerBoxFar", "1" 
     .Set "MaxStepNear", "0" 
     .Set "MaxStepFar", "0" 
     .Set "ModelBoxDescrNear", "maxedge" 
     .Set "ModelBoxDescrFar", "maxedge" 
     .Set "UseMaxStepAbsolute", "0" 
     .Set "GeometryRefinementSameAsNear", "0" 
     'MIN CELL 
     .Set "UseRatioLimitGeometry", "1" 
     .Set "RatioLimitGeometry", "15" 
     .Set "MinStepGeometryX", "0" 
     .Set "MinStepGeometryY", "0" 
     .Set "MinStepGeometryZ", "0" 
     .Set "UseSameMinStepGeometryXYZ", "1" 
End With 
With MeshSettings 
     .Set "PlaneMergeVersion", "2" 
End With 
With MeshSettings 
     .SetMeshType "Hex" 
     .Set "FaceRefinementType", "NONE" 
     .Set "FaceRefinementRatio", "2" 
     .Set "FaceRefinementStep", "0" 
     .Set "FaceRefinementNSteps", "2" 
     .Set "EllipseRefinementType", "NONE" 
     .Set "EllipseRefinementRatio", "2" 
     .Set "EllipseRefinementStep", "0" 
     .Set "EllipseRefinementNSteps", "2" 
     .Set "FaceRefinementBufferLines", "3" 
     .Set "EdgeRefinementType", "RATIO" 
     .Set "EdgeRefinementRatio", "2" 
     .Set "EdgeRefinementStep", "0" 
     .Set "EdgeRefinementBufferLines", "3" 
     .Set "RefineEdgeMaterialGlobal", "0" 
     .Set "RefineAxialEdgeGlobal", "0" 
     .Set "BufferLinesNear", "3" 
     .Set "UseDielectrics", "1" 
     .Set "EquilibrateOn", "1" 
     .Set "Equilibrate", "1.5" 
     .Set "IgnoreThinPanelMaterial", "0" 
End With
With MeshSettings 
     .SetMeshType "Hex" 
     .Set "SnapToAxialEdges", "0"
     .Set "SnapToPlanes", "1"
     .Set "SnapToSpheres", "1"
     .Set "SnapToEllipses", "0"
     .Set "SnapToCylinders", "1"
     .Set "SnapToCylinderCenters", "1"
     .Set "SnapToEllipseCenters", "1"
     .Set "SnapToTori", "1"
     .Set "SnapXYZ" , "1", "1", "1"
End With 
With Mesh 
     .ConnectivityCheck "True"
     .UsePecEdgeModel "True" 
     .PointAccEnhancement "0" 
     .TSTVersion "0"
	  .PBAVersion "2024083025" 
     .SetCADProcessingMethod "MultiThread22", "-1" 
     .SetGPUForMatrixCalculationDisabled "False" 
End With

'@ pick end point

'[VERSION]2025.0|34.0.1|20240830[/VERSION]
Pick.PickEndpointFromId "component1:Ground", "3"

'@ pick end point

'[VERSION]2025.0|34.0.1|20240830[/VERSION]
Pick.PickEndpointFromId "component1:Ground", "2"

'@ define distance dimension

'[VERSION]2025.0|34.0.1|20240830[/VERSION]
With Dimension
    .Reset
    .CreationType "picks"
    .SetType "Distance"
    .SetID "0"
    .SetOrientation "Smart Mode"
    .SetDistance "30.651829"
    .SetViewVector "0.004891", "-0.141658", "-0.989904"
    .SetConnectedElement1 "component1:Ground"
    .SetConnectedElement2 "component1:Ground"
    .Create
End With

Pick.ClearAllPicks

'@ pick end point

'[VERSION]2025.0|34.0.1|20240830[/VERSION]
Pick.PickEndpointFromId "component1:Ground", "2"

'@ pick end point

'[VERSION]2025.0|34.0.1|20240830[/VERSION]
Pick.PickEndpointFromId "component1:Ground", "1"

'@ define distance dimension

'[VERSION]2025.0|34.0.1|20240830[/VERSION]
With Dimension
    .Reset
    .CreationType "picks"
    .SetType "Distance"
    .SetID "1"
    .SetOrientation "Smart Mode"
    .SetDistance "40.284176"
    .SetViewVector "0.004891", "-0.141617", "-0.989909"
    .SetConnectedElement1 "component1:Ground"
    .SetConnectedElement2 "component1:Ground"
    .Create
End With

Pick.ClearAllPicks

'@ pick end point

'[VERSION]2025.0|34.0.1|20240830[/VERSION]
Pick.PickEndpointFromId "component1:Patch", "11"

'@ pick end point

'[VERSION]2025.0|34.0.1|20240830[/VERSION]
Pick.PickEndpointFromId "component1:Patch", "10"

'@ define distance dimension

'[VERSION]2025.0|34.0.1|20240830[/VERSION]
With Dimension
    .Reset
    .CreationType "picks"
    .SetType "Distance"
    .SetID "2"
    .SetOrientation "Smart Mode"
    .SetDistance "19.637136"
    .SetViewVector "0.004891", "-0.141598", "-0.989912"
    .SetConnectedElement1 "component1:Patch"
    .SetConnectedElement2 "component1:Patch"
    .Create
End With

Pick.ClearAllPicks

'@ pick end point

'[VERSION]2025.0|34.0.1|20240830[/VERSION]
Pick.PickEndpointFromId "component1:Patch", "22"

'@ pick end point

'[VERSION]2025.0|34.0.1|20240830[/VERSION]
Pick.PickEndpointFromId "component1:Patch", "24"

'@ define distance dimension

'[VERSION]2025.0|34.0.1|20240830[/VERSION]
With Dimension
    .Reset
    .CreationType "picks"
    .SetType "Distance"
    .SetID "3"
    .SetOrientation "Smart Mode"
    .SetDistance "48.791855"
    .SetViewVector "0.004891", "-0.141607", "-0.989911"
    .SetConnectedElement1 "component1:Patch"
    .SetConnectedElement2 "component1:Patch"
    .Create
End With

Pick.ClearAllPicks

'@ pick end point

'[VERSION]2025.0|34.0.1|20240830[/VERSION]
Pick.PickEndpointFromId "component1:Patch", "11"

'@ pick end point

'[VERSION]2025.0|34.0.1|20240830[/VERSION]
Pick.PickEndpointFromId "component1:Patch", "12"

'@ define distance dimension

'[VERSION]2025.0|34.0.1|20240830[/VERSION]
With Dimension
    .Reset
    .CreationType "picks"
    .SetType "Distance"
    .SetID "4"
    .SetOrientation "Smart Mode"
    .SetDistance "45.625046"
    .SetViewVector "0.004891", "-0.141583", "-0.989914"
    .SetConnectedElement1 "component1:Patch"
    .SetConnectedElement2 "component1:Patch"
    .Create
End With

Pick.ClearAllPicks

'@ set mesh properties (Hexahedral FIT)

'[VERSION]2025.0|34.0.1|20240830[/VERSION]
With Mesh 
     .MeshType "PBA" 
     .SetCreator "High Frequency"
End With 
With MeshSettings 
     .SetMeshType "Hex" 
     .Set "Version", 1%
     'MAX CELL - WAVELENGTH REFINEMENT 
     .Set "StepsPerWaveNear", "30" 
     .Set "StepsPerWaveFar", "30" 
     .Set "WavelengthRefinementSameAsNear", "1" 
     'MAX CELL - GEOMETRY REFINEMENT 
     .Set "StepsPerBoxNear", "20" 
     .Set "StepsPerBoxFar", "1" 
     .Set "MaxStepNear", "0" 
     .Set "MaxStepFar", "0" 
     .Set "ModelBoxDescrNear", "maxedge" 
     .Set "ModelBoxDescrFar", "maxedge" 
     .Set "UseMaxStepAbsolute", "0" 
     .Set "GeometryRefinementSameAsNear", "0" 
     'MIN CELL 
     .Set "UseRatioLimitGeometry", "1" 
     .Set "RatioLimitGeometry", "15" 
     .Set "MinStepGeometryX", "0" 
     .Set "MinStepGeometryY", "0" 
     .Set "MinStepGeometryZ", "0" 
     .Set "UseSameMinStepGeometryXYZ", "1" 
End With 
With MeshSettings 
     .Set "PlaneMergeVersion", "2" 
End With 
With MeshSettings 
     .SetMeshType "Hex" 
     .Set "FaceRefinementType", "NONE" 
     .Set "FaceRefinementRatio", "2" 
     .Set "FaceRefinementStep", "0" 
     .Set "FaceRefinementNSteps", "2" 
     .Set "EllipseRefinementType", "NONE" 
     .Set "EllipseRefinementRatio", "2" 
     .Set "EllipseRefinementStep", "0" 
     .Set "EllipseRefinementNSteps", "2" 
     .Set "FaceRefinementBufferLines", "3" 
     .Set "EdgeRefinementType", "RATIO" 
     .Set "EdgeRefinementRatio", "2" 
     .Set "EdgeRefinementStep", "0" 
     .Set "EdgeRefinementBufferLines", "3" 
     .Set "RefineEdgeMaterialGlobal", "0" 
     .Set "RefineAxialEdgeGlobal", "0" 
     .Set "BufferLinesNear", "3" 
     .Set "UseDielectrics", "1" 
     .Set "EquilibrateOn", "1" 
     .Set "Equilibrate", "1.5" 
     .Set "IgnoreThinPanelMaterial", "0" 
End With
With MeshSettings 
     .SetMeshType "Hex" 
     .Set "SnapToAxialEdges", "0"
     .Set "SnapToPlanes", "1"
     .Set "SnapToSpheres", "1"
     .Set "SnapToEllipses", "0"
     .Set "SnapToCylinders", "1"
     .Set "SnapToCylinderCenters", "1"
     .Set "SnapToEllipseCenters", "1"
     .Set "SnapToTori", "1"
     .Set "SnapXYZ" , "1", "1", "1"
End With 
With Mesh 
     .ConnectivityCheck "True"
     .UsePecEdgeModel "True" 
     .PointAccEnhancement "0" 
     .TSTVersion "0"
	  .PBAVersion "2024083025" 
     .SetCADProcessingMethod "MultiThread22", "-1" 
     .SetGPUForMatrixCalculationDisabled "False" 
End With

'@ pick end point

'[VERSION]2025.0|34.0.1|20240830[/VERSION]
Pick.PickEndpointFromId "component1:Feed", "4"

'@ pick end point

'[VERSION]2025.0|34.0.1|20240830[/VERSION]
Pick.PickEndpointFromId "component1:Feed", "1"

'@ define distance dimension

'[VERSION]2025.0|34.0.1|20240830[/VERSION]
With Dimension
    .Reset
    .CreationType "picks"
    .SetType "Distance"
    .SetID "5"
    .SetOrientation "Smart Mode"
    .SetDistance "26.030485"
    .SetViewVector "-0.138210", "-0.111638", "-0.984091"
    .SetConnectedElement1 "component1:Feed"
    .SetConnectedElement2 "component1:Feed"
    .Create
End With

Pick.ClearAllPicks

'@ pick edge

'[VERSION]2025.0|34.0.1|20240830[/VERSION]
Pick.PickEdgeFromId "component1:Feed", "1", "1"

'@ define distance dimension

'[VERSION]2025.0|34.0.1|20240830[/VERSION]
With Dimension
    .Reset
    .CreationType "picks"
    .SetType "Distance"
    .SetID "6"
    .SetOrientation "Smart Mode"
    .SetDistance "75.970345"
    .SetViewVector "-0.138210", "-0.111638", "-0.984091"
    .SetConnectedElement1 "component1:Feed"
    .SetConnectedElement2 "component1:Feed"
    .Create
End With

Pick.ClearAllPicks

'@ pick end point

'[VERSION]2025.0|34.0.1|20240830[/VERSION]
Pick.PickEndpointFromId "component1:Patch", "24"

'@ pick end point

'[VERSION]2025.0|34.0.1|20240830[/VERSION]
Pick.PickEndpointFromId "component1:Patch", "19"

'@ define distance dimension

'[VERSION]2025.0|34.0.1|20240830[/VERSION]
With Dimension
    .Reset
    .CreationType "picks"
    .SetType "Distance"
    .SetID "7"
    .SetOrientation "Smart Mode"
    .SetDistance "-48.009575"
    .SetViewVector "-0.138209", "-0.111656", "-0.984089"
    .SetConnectedElement1 "component1:Patch"
    .SetConnectedElement2 "component1:Patch"
    .Create
End With

Pick.ClearAllPicks

'@ set mesh properties (Hexahedral FIT)

'[VERSION]2025.0|34.0.1|20240830[/VERSION]
With Mesh 
     .MeshType "PBA" 
     .SetCreator "High Frequency"
End With 
With MeshSettings 
     .SetMeshType "Hex" 
     .Set "Version", 1%
     'MAX CELL - WAVELENGTH REFINEMENT 
     .Set "StepsPerWaveNear", "50" 
     .Set "StepsPerWaveFar", "50" 
     .Set "WavelengthRefinementSameAsNear", "1" 
     'MAX CELL - GEOMETRY REFINEMENT 
     .Set "StepsPerBoxNear", "20" 
     .Set "StepsPerBoxFar", "1" 
     .Set "MaxStepNear", "0" 
     .Set "MaxStepFar", "0" 
     .Set "ModelBoxDescrNear", "maxedge" 
     .Set "ModelBoxDescrFar", "maxedge" 
     .Set "UseMaxStepAbsolute", "0" 
     .Set "GeometryRefinementSameAsNear", "0" 
     'MIN CELL 
     .Set "UseRatioLimitGeometry", "1" 
     .Set "RatioLimitGeometry", "15" 
     .Set "MinStepGeometryX", "0" 
     .Set "MinStepGeometryY", "0" 
     .Set "MinStepGeometryZ", "0" 
     .Set "UseSameMinStepGeometryXYZ", "1" 
End With 
With MeshSettings 
     .Set "PlaneMergeVersion", "2" 
End With 
With MeshSettings 
     .SetMeshType "Hex" 
     .Set "FaceRefinementType", "NONE" 
     .Set "FaceRefinementRatio", "2" 
     .Set "FaceRefinementStep", "0" 
     .Set "FaceRefinementNSteps", "2" 
     .Set "EllipseRefinementType", "NONE" 
     .Set "EllipseRefinementRatio", "2" 
     .Set "EllipseRefinementStep", "0" 
     .Set "EllipseRefinementNSteps", "2" 
     .Set "FaceRefinementBufferLines", "3" 
     .Set "EdgeRefinementType", "RATIO" 
     .Set "EdgeRefinementRatio", "2" 
     .Set "EdgeRefinementStep", "0" 
     .Set "EdgeRefinementBufferLines", "3" 
     .Set "RefineEdgeMaterialGlobal", "0" 
     .Set "RefineAxialEdgeGlobal", "0" 
     .Set "BufferLinesNear", "3" 
     .Set "UseDielectrics", "1" 
     .Set "EquilibrateOn", "1" 
     .Set "Equilibrate", "1.5" 
     .Set "IgnoreThinPanelMaterial", "0" 
End With
With MeshSettings 
     .SetMeshType "Hex" 
     .Set "SnapToAxialEdges", "0"
     .Set "SnapToPlanes", "1"
     .Set "SnapToSpheres", "1"
     .Set "SnapToEllipses", "0"
     .Set "SnapToCylinders", "1"
     .Set "SnapToCylinderCenters", "1"
     .Set "SnapToEllipseCenters", "1"
     .Set "SnapToTori", "1"
     .Set "SnapXYZ" , "1", "1", "1"
End With 
With Mesh 
     .ConnectivityCheck "True"
     .UsePecEdgeModel "True" 
     .PointAccEnhancement "0" 
     .TSTVersion "0"
	  .PBAVersion "2024083025" 
     .SetCADProcessingMethod "MultiThread22", "-1" 
     .SetGPUForMatrixCalculationDisabled "False" 
End With

'@ define farfield monitor: farfield (f=5.9)

'[VERSION]2025.0|34.0.1|20240830[/VERSION]
With Monitor 
     .Reset 
     .Name "farfield (f=5.9)" 
     .Domain "Frequency" 
     .FieldType "Farfield" 
     .MonitorValue "5.9" 
     .ExportFarfieldSource "False" 
     .UseSubvolume "False" 
     .Coordinates "Structure" 
     .SetSubvolume "0", "50", "0", "50", "-0.035", "1.635" 
     .SetSubvolumeOffset "10", "10", "10", "10", "10", "10" 
     .SetSubvolumeInflateWithOffset "False" 
     .SetSubvolumeOffsetType "FractionOfWavelength" 
     .EnableNearfieldCalculation "True" 
     .Create 
End With

'@ farfield plot options

'[VERSION]2025.0|34.0.1|20240830[/VERSION]
With FarfieldPlot 
     .Plottype "3D" 
     .Vary "angle1" 
     .Theta "90" 
     .Phi "90" 
     .Step "5" 
     .Step2 "5" 
     .SetLockSteps "True" 
     .SetPlotRangeOnly "False" 
     .SetThetaStart "0" 
     .SetThetaEnd "180" 
     .SetPhiStart "0" 
     .SetPhiEnd "360" 
     .SetTheta360 "False" 
     .SymmetricRange "False" 
     .SetTimeDomainFF "False" 
     .SetFrequency "-1" 
     .SetTime "0" 
     .SetColorByValue "True" 
     .DrawStepLines "False" 
     .DrawIsoLongitudeLatitudeLines "False" 
     .ShowStructure "False" 
     .ShowStructureProfile "False" 
     .SetStructureTransparent "False" 
     .SetFarfieldTransparent "False" 
     .AspectRatio "Free" 
     .ShowGridlines "True" 
     .InvertAxes "False", "False" 
     .SetSpecials "enablepolarextralines" 
     .SetPlotMode "Directivity" 
     .Distance "1" 
     .UseFarfieldApproximation "True" 
     .IncludeUnitCellSidewalls "True" 
     .SetScaleLinear "False" 
     .SetLogRange "40" 
     .SetLogNorm "0" 
     .DBUnit "0" 
     .SetMaxReferenceMode "abs" 
     .EnableFixPlotMaximum "False" 
     .SetFixPlotMaximumValue "1.0" 
     .SetInverseAxialRatio "False" 
     .SetAxesType "user" 
     .SetAntennaType "isotropic_linear" 
     .Phistart "1.000000e+00", "0.000000e+00", "0.000000e+00" 
     .Thetastart "0.000000e+00", "0.000000e+00", "1.000000e+00" 
     .PolarizationVector "0.000000e+00", "1.000000e+00", "0.000000e+00" 
     .SetCoordinateSystemType "ludwig2ae" 
     .SetAutomaticCoordinateSystem "True" 
     .SetPolarizationType "Slant" 
     .SlantAngle 0.000000e+00 
     .Origin "bbox" 
     .Userorigin "0.000000e+00", "0.000000e+00", "0.000000e+00" 
     .SetUserDecouplingPlane "False" 
     .UseDecouplingPlane "False" 
     .DecouplingPlaneAxis "X" 
     .DecouplingPlanePosition "0.000000e+00" 
     .LossyGround "False" 
     .GroundEpsilon "1" 
     .GroundKappa "0" 
     .EnablePhaseCenterCalculation "False" 
     .SetPhaseCenterAngularLimit "3.000000e+01" 
     .SetPhaseCenterComponent "boresight" 
     .SetPhaseCenterPlane "both" 
     .ShowPhaseCenter "True" 
     .ClearCuts 

     .StoreSettings
End With

