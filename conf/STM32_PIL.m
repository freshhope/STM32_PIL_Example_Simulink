function cs = STM32_PIL()
%---------------------------------------------------------------------------
%  MATLAB function for configuration set generated on 21-Feb-2018 06:27:25
%  MATLAB version: 9.3.0.713579 (R2017b)
%---------------------------------------------------------------------------

cs = Simulink.ConfigSet;

% Original configuration set version: 1.17.1
if cs.versionCompare('1.17.1') < 0
    error('Simulink:MFileVersionViolation', 'The version of the target configuration set is older than the original configuration set.');
end

% Original environment character encoding: GBK
if ~strcmpi(get_param(0, 'CharacterEncoding'), 'GBK')
    warning('Simulink:EncodingUnMatched', 'The target character encoding (%s) is different from the original (%s).',  get_param(0, 'CharacterEncoding'), 'GBK');
end

% Do not change the order of the following commands. There are dependencies between the parameters.
cs.set_param('Name', 'Configuration'); % Name
cs.set_param('Description', ''); % Description

% Original configuration set target is stm32.tlc
try
    cs.switchTarget('stm32.tlc', '');
catch ME
    disp(ME.message);
    disp('Setting ''System target file'' to ''ert.tlc''.');
    cs.switchTarget('ert.tlc', '');
end

cs.set_param('HardwareBoard', 'None');   % Hardware board

cs.set_param('Solver', 'FixedStepDiscrete');   % Solver

% Solver
cs.set_param('StartTime', '0.0');   % Start time
cs.set_param('StopTime', '10.0');   % Stop time
cs.set_param('ConcurrentTasks', 'off');   % Allow tasks to execute concurrently on target
cs.set_param('SampleTimeConstraint', 'Unconstrained');   % Periodic sample time constraint
cs.set_param('SolverType', 'Fixed-step');   % Type
cs.set_param('FixedStep', '0.001');   % Fixed-step size (fundamental sample time)
cs.set_param('EnableMultiTasking', 'on');   % Treat each discrete rate as a separate task
cs.set_param('DecoupledContinuousIntegration', 'off');   % Enable decoupled continuous integration
cs.set_param('AutoInsertRateTranBlk', 'off');   % Automatically handle rate transition for data transfer
cs.set_param('PositivePriorityOrder', 'off');   % Higher priority value indicates higher task priority

% Data Import/Export
cs.set_param('LoadExternalInput', 'off');   % Load external input
cs.set_param('LoadInitialState', 'off');   % Load initial state
cs.set_param('SaveTime', 'off');   % Save time
cs.set_param('SaveState', 'off');   % Save states
cs.set_param('SaveFormat', 'Array');   % Format
cs.set_param('SaveOutput', 'off');   % Save output
cs.set_param('SaveFinalState', 'off');   % Save final state
cs.set_param('SignalLogging', 'off');   % Signal logging
cs.set_param('DSMLogging', 'off');   % Data stores
cs.set_param('LoggingToFile', 'off');   % Log Dataset data to file
cs.set_param('DatasetSignalFormat', 'timeseries');   % Dataset signal format
cs.set_param('ReturnWorkspaceOutputs', 'off');   % Single simulation output
cs.set_param('InspectSignalLogs', 'off');   % Record logged workspace data in Simulation Data Inspector
cs.set_param('LimitDataPoints', 'on');   % Limit data points
cs.set_param('MaxDataPoints', '1000');   % Maximum number of data points
cs.set_param('Decimation', '1');   % Decimation

% Optimization
cs.set_param('BlockReduction', 'on');   % Block reduction
cs.set_param('ConditionallyExecuteInputs', 'on');   % Conditional input branch execution
cs.set_param('BooleanDataType', 'on');   % Implement logic signals as Boolean data (vs. double)
cs.set_param('LifeSpan', '1');   % Application lifespan (days)
cs.set_param('UseDivisionForNetSlopeComputation', 'off');   % Use division for fixed-point net slope computation
cs.set_param('UseFloatMulNetSlope', 'off');   % Use floating-point multiplication to handle net slope corrections
cs.set_param('DefaultUnderspecifiedDataType', 'double');   % Default for underspecified data type
cs.set_param('UseSpecifiedMinMax', 'off');   % Optimize using the specified minimum and maximum values
cs.set_param('ZeroExternalMemoryAtStartup', 'on');   % Remove root level I/O zero initialization
cs.set_param('InitFltsAndDblsToZero', 'off');   % Use memset to initialize floats and doubles to 0.0
cs.set_param('ZeroInternalMemoryAtStartup', 'on');   % Remove internal data zero initialization
cs.set_param('EfficientFloat2IntCast', 'off');   % Remove code from floating-point to integer conversions that wraps out-of-range values
cs.set_param('EfficientMapNaN2IntZero', 'on');   % Remove code from floating-point to integer conversions with saturation that maps NaN to zero
cs.set_param('NoFixptDivByZeroProtection', 'off');   % Remove code that protects against division arithmetic exceptions
cs.set_param('SimCompilerOptimization', 'off');   % Compiler optimization level
cs.set_param('AccelVerboseBuild', 'off');   % Verbose accelerator builds
cs.set_param('DefaultParameterBehavior', 'Inlined');   % Default parameter behavior
cs.set_param('OptimizeBlockIOStorage', 'on');   % Signal storage reuse
cs.set_param('LocalBlockOutputs', 'on');   % Enable local block outputs
cs.set_param('ExpressionFolding', 'on');   % Eliminate superfluous local variables (expression folding)
cs.set_param('BufferReuse', 'on');   % Reuse local block outputs
cs.set_param('GlobalBufferReuse', 'on');   % Reuse global block outputs
cs.set_param('GlobalVariableUsage', 'None');   % Optimize global data access
cs.set_param('OptimizeBlockOrder', 'off');   % Optimize block operation order in the generated code
cs.set_param('OptimizeDataStoreBuffers', 'on');   % Reuse buffers for Data Store Read and Data Store Write blocks
cs.set_param('BusAssignmentInplaceUpdate', 'on');   % Perform inplace updates for Bus Assignment blocks
cs.set_param('DifferentSizesBufferReuse', 'off');   % Reuse buffers of different sizes and dimensions
cs.set_param('StrengthReduction', 'off');   % Simplify array indexing
cs.set_param('EnableMemcpy', 'on');   % Use memcpy for vector assignment
cs.set_param('MemcpyThreshold', 64);   % Memcpy threshold (bytes)
cs.set_param('BooleansAsBitfields', 'off');   % Pack Boolean data into bitfields
cs.set_param('InlineInvariantSignals', 'off');   % Inline invariant signals
cs.set_param('RollThreshold', 5);   % Loop unrolling threshold
cs.set_param('MaxStackSize', 'Inherit from target');   % Maximum stack size (bytes)
cs.set_param('PassReuseOutputArgsAs', 'Structure reference');   % Pass reusable subsystem outputs as
cs.set_param('StateBitsets', 'off');   % Use bitsets for storing state configuration
cs.set_param('DataBitsets', 'off');   % Use bitsets for storing Boolean data
cs.set_param('ActiveStateOutputEnumStorageType', 'Native Integer');   % Base storage type for automatically created enumerations
cs.set_param('AdvancedOptControl', '');   % Disable incompatible optimizations
cs.set_param('BufferReusableBoundary', 'on');   % Buffer for reusable subsystems

% Diagnostics
cs.set_param('AlgebraicLoopMsg', 'warning');   % Algebraic loop
cs.set_param('ArtificialAlgebraicLoopMsg', 'warning');   % Minimize algebraic loop
cs.set_param('BlockPriorityViolationMsg', 'warning');   % Block priority violation
cs.set_param('MinStepSizeMsg', 'warning');   % Min step size violation
cs.set_param('TimeAdjustmentMsg', 'none');   % Sample hit time adjusting
cs.set_param('MaxConsecutiveZCsMsg', 'error');   % Consecutive zero crossings violation
cs.set_param('UnknownTsInhSupMsg', 'warning');   % Unspecified inheritability of sample time
cs.set_param('ConsistencyChecking', 'none');   % Solver data inconsistency
cs.set_param('SolverPrmCheckMsg', 'warning');   % Automatic solver parameter selection
cs.set_param('ModelReferenceExtraNoncontSigs', 'error');   % Extraneous discrete derivative signals
cs.set_param('StateNameClashWarn', 'warning');   % State name clash
cs.set_param('SimStateInterfaceChecksumMismatchMsg', 'warning');   % SimState interface checksum mismatch
cs.set_param('SimStateOlderReleaseMsg', 'error');   % SimState object from earlier release
cs.set_param('InheritedTsInSrcMsg', 'warning');   % Source block specifies -1 sample time
cs.set_param('MultiTaskRateTransMsg', 'error');   % Multitask rate transition
cs.set_param('SingleTaskRateTransMsg', 'none');   % Single task rate transition
cs.set_param('MultiTaskCondExecSysMsg', 'error');   % Multitask conditionally executed subsystem
cs.set_param('TasksWithSamePriorityMsg', 'warning');   % Tasks with equal priority
cs.set_param('SigSpecEnsureSampleTimeMsg', 'warning');   % Enforce sample times specified by Signal Specification blocks
cs.set_param('SignalResolutionControl', 'UseLocalSettings');   % Signal resolution
cs.set_param('CheckMatrixSingularityMsg', 'none');   % Division by singular matrix
cs.set_param('IntegerSaturationMsg', 'warning');   % Saturate on overflow
cs.set_param('UnderSpecifiedDataTypeMsg', 'none');   % Underspecified data types
cs.set_param('SignalRangeChecking', 'none');   % Simulation range checking
cs.set_param('IntegerOverflowMsg', 'warning');   % Wrap on overflow
cs.set_param('SignalInfNanChecking', 'none');   % Inf or NaN block output
cs.set_param('RTPrefix', 'error');   % "rt" prefix for identifiers
cs.set_param('ParameterDowncastMsg', 'error');   % Detect downcast
cs.set_param('ParameterOverflowMsg', 'error');   % Detect overflow
cs.set_param('ParameterUnderflowMsg', 'none');   % Detect underflow
cs.set_param('ParameterPrecisionLossMsg', 'warning');   % Detect precision loss
cs.set_param('ParameterTunabilityLossMsg', 'warning');   % Detect loss of tunability
cs.set_param('ReadBeforeWriteMsg', 'UseLocalSettings');   % Detect read before write
cs.set_param('WriteAfterReadMsg', 'UseLocalSettings');   % Detect write after read
cs.set_param('WriteAfterWriteMsg', 'UseLocalSettings');   % Detect write after write
cs.set_param('MultiTaskDSMMsg', 'error');   % Multitask data store
cs.set_param('UniqueDataStoreMsg', 'none');   % Duplicate data store names
cs.set_param('UnderspecifiedInitializationDetection', 'Classic');   % Underspecified initialization detection
cs.set_param('MergeDetectMultiDrivingBlocksExec', 'none');   % Detect multiple driving blocks executing at the same time step
cs.set_param('CheckSSInitialOutputMsg', 'on');   % Check undefined subsystem initial output
cs.set_param('CheckExecutionContextRuntimeOutputMsg', 'off');   % Check runtime output of execution context
cs.set_param('ArrayBoundsChecking', 'none');   % Array bounds exceeded
cs.set_param('AssertControl', 'UseLocalSettings');   % Model Verification block enabling
cs.set_param('AllowSymbolicDim', 'off');   % Allow symbolic dimension specification
cs.set_param('UnnecessaryDatatypeConvMsg', 'none');   % Unnecessary type conversions
cs.set_param('VectorMatrixConversionMsg', 'none');   % Vector/matrix block input conversion
cs.set_param('Int32ToFloatConvMsg', 'warning');   % 32-bit integer to single precision float conversion
cs.set_param('FixptConstUnderflowMsg', 'none');   % Detect underflow
cs.set_param('FixptConstOverflowMsg', 'none');   % Detect overflow
cs.set_param('FixptConstPrecisionLossMsg', 'none');   % Detect precision loss
cs.set_param('SignalLabelMismatchMsg', 'none');   % Signal label mismatch
cs.set_param('UnconnectedInputMsg', 'warning');   % Unconnected block input ports
cs.set_param('UnconnectedOutputMsg', 'warning');   % Unconnected block output ports
cs.set_param('UnconnectedLineMsg', 'warning');   % Unconnected line
cs.set_param('RootOutportRequireBusObject', 'warning');   % Unspecified bus object at root Outport block
cs.set_param('BusObjectLabelMismatch', 'warning');   % Element name mismatch
cs.set_param('StrictBusMsg', 'ErrorLevel1');   % Bus signal treated as vector
cs.set_param('NonBusSignalsTreatedAsBus', 'none');   % Non-bus signals treated as bus signals
cs.set_param('BusNameAdapt', 'WarnAndRepair');   % Repair bus selections
cs.set_param('InvalidFcnCallConnMsg', 'error');   % Invalid function-call connection
cs.set_param('FcnCallInpInsideContextMsg', 'error');   % Context-dependent inputs
cs.set_param('SFcnCompatibilityMsg', 'none');   % S-function upgrades needed
cs.set_param('FrameProcessingCompatibilityMsg', 'error');   % Block behavior depends on frame status of signal
cs.set_param('ModelReferenceVersionMismatchMessage', 'none');   % Model block version mismatch
cs.set_param('ModelReferenceIOMismatchMessage', 'none');   % Port and parameter mismatch
cs.set_param('ModelReferenceIOMsg', 'none');   % Invalid root Inport/Outport block connection
cs.set_param('ModelReferenceDataLoggingMessage', 'warning');   % Unsupported data logging
cs.set_param('SaveWithDisabledLinksMsg', 'warning');   % Block diagram contains disabled library links
cs.set_param('SaveWithParameterizedLinksMsg', 'warning');   % Block diagram contains parameterized library links
cs.set_param('SFUnusedDataAndEventsDiag', 'warning');   % Unused data, events, messages and functions
cs.set_param('SFUnexpectedBacktrackingDiag', 'warning');   % Unexpected backtracking
cs.set_param('SFInvalidInputDataAccessInChartInitDiag', 'warning');   % Invalid input data access in chart initialization
cs.set_param('SFNoUnconditionalDefaultTransitionDiag', 'warning');   % No unconditional default transitions
cs.set_param('SFTransitionOutsideNaturalParentDiag', 'warning');   % Transition outside natural parent
cs.set_param('SFUnreachableExecutionPathDiag', 'warning');   % Unreachable execution path
cs.set_param('SFUndirectedBroadcastEventsDiag', 'warning');   % Undirected event broadcasts
cs.set_param('SFTransitionActionBeforeConditionDiag', 'warning');   % Transition action specified before condition action
cs.set_param('SFOutputUsedAsStateInMooreChartDiag', 'error');   % Read-before-write to output in Moore chart
cs.set_param('SFTemporalDelaySmallerThanSampleTimeDiag', 'warning');   % Absolute time temporal value shorter than sampling period
cs.set_param('SFSelfTransitionDiag', 'warning');   % Self-transition on leaf state
cs.set_param('SFExecutionAtInitializationDiag', 'none');   % 'Execute-at-initialization' disabled in presence of input events
cs.set_param('SFMachineParentedDataDiag', 'warning');   % Use of machine-parented data instead of Data Store Memory
cs.set_param('IgnoredZcDiagnostic', 'warning');   % Ignored zero crossings
cs.set_param('InitInArrayFormatMsg', 'warning');   % Initial state is array
cs.set_param('MaskedZcDiagnostic', 'warning');   % Masked zero crossings
cs.set_param('ModelReferenceSymbolNameMessage', 'none');   % Insufficient maximum identifier length
cs.set_param('AllowedUnitSystems', 'all');   % Allowed unit systems
cs.set_param('UnitsInconsistencyMsg', 'warning');   % Units inconsistency messages
cs.set_param('AllowAutomaticUnitConversions', 'on');   % Allow automatic unit conversions
cs.set_param('RCSCObservableMsg', 'warning');   % Detect ambiguous custom storage class final values
cs.set_param('RCSCRenamedMsg', 'warning');   % Detect non-reused custom storage classes
cs.set_param('ForceCombineOutputUpdateInSim', 'off');   % Combine output and update methods for code generation and simulation

% Hardware Implementation
cs.set_param('ProdHWDeviceType', 'STMicroelectronics->STM32 32-bit Cortex-M');   % Production device vendor and type
cs.set_param('ProdLargestAtomicInteger', 'Integer');   % Largest atomic integer size
cs.set_param('ProdLargestAtomicFloat', 'Float');   % Largest atomic floating-point size
cs.set_param('ProdEqTarget', 'on');   % Test hardware is the same as production hardware
cs.set_param('TargetPreprocMaxBitsSint', 32);   % Maximum bits for signed integer in C preprocessor
cs.set_param('TargetPreprocMaxBitsUint', 32);   % Maximum bits for unsigned integer in C preprocessor

% Model Referencing
cs.set_param('UpdateModelReferenceTargets', 'IfOutOfDateOrStructuralChange');   % Rebuild
cs.set_param('EnableParallelModelReferenceBuilds', 'off');   % Enable parallel model reference builds
cs.set_param('ModelReferenceNumInstancesAllowed', 'Multi');   % Total number of instances allowed per top model
cs.set_param('PropagateVarSize', 'Infer from blocks in model');   % Propagate sizes of variable-size signals
cs.set_param('ModelReferenceMinAlgLoopOccurrences', 'off');   % Minimize algebraic loop occurrences
cs.set_param('EnableRefExpFcnMdlSchedulingChecks', 'on');   % Enable strict scheduling checks for referenced models
cs.set_param('PropagateSignalLabelsOutOfModel', 'off');   % Propagate all signal labels out of the model
cs.set_param('ModelReferencePassRootInputsByReference', 'on');   % Pass fixed-size scalar root inputs by value for code generation
cs.set_param('ModelDependencies', '');   % Model dependencies
cs.set_param('ParallelModelReferenceErrorOnInvalidPool', 'on');   % Perform consistency check on parallel pool
cs.set_param('SupportModelReferenceSimTargetCustomCode', 'on');   % Include custom code for referenced models

% Simulation Target
cs.set_param('MATLABDynamicMemAlloc', 'off');   % Dynamic memory allocation in MATLAB Function blocks
cs.set_param('CompileTimeRecursionLimit', 50);   % Compile-time recursion limit for MATLAB functions
cs.set_param('EnableRuntimeRecursion', 'on');   % Enable run-time recursion for MATLAB functions
cs.set_param('SFSimEcho', 'on');   % Echo expressions without semicolons
cs.set_param('SimCtrlC', 'on');   % Ensure responsiveness
cs.set_param('SimIntegrity', 'on');   % Ensure memory integrity
cs.set_param('SimGenImportedTypeDefs', 'off');   % Generate typedefs for imported bus and enumeration types
cs.set_param('SimBuildMode', 'sf_incremental_build');   % Simulation target build mode
cs.set_param('SimReservedNameArray', []);   % Reserved names
cs.set_param('SimParseCustomCode', 'on');   % Parse custom code symbols
cs.set_param('SimCustomSourceCode', '');   % Source file
cs.set_param('SimCustomHeaderCode', '');   % Header file
cs.set_param('SimCustomInitializer', '');   % Initialize function
cs.set_param('SimCustomTerminator', '');   % Terminate function
cs.set_param('SimUserIncludeDirs', '');   % Include directories
cs.set_param('SimUserSources', sprintf('%s\n%s','','',''));   % Source files
cs.set_param('SimUserLibraries', '');   % Libraries
cs.set_param('SimUserDefines', '');   % Defines
cs.set_param('SFSimEnableDebug', 'off');   % Allow setting breakpoints during simulation

% Code Generation
cs.set_param('RemoveResetFunc', 'on');   % Remove reset function
cs.set_param('ExistingSharedCode', '');   % Existing shared code
cs.set_param('TargetLang', 'C');   % Language
cs.set_param('GenerateMakefile', 'on');   % Generate makefile
cs.set_param('TemplateMakefile', 'stm32.tmf');   % Template makefile
cs.set_param('ObjectivePriorities', []);   % Prioritized objectives
cs.set_param('CheckMdlBeforeBuild', 'Off');   % Check model before generating code
cs.set_param('SILDebugging', 'off');   % Enable source-level debugging for SIL
cs.set_param('GenCodeOnly', 'off');   % Generate code only
cs.set_param('PackageGeneratedCodeAndArtifacts', 'off');   % Package code and artifacts
cs.set_param('RTWVerbose', 'on');   % Verbose build
cs.set_param('RetainRTWFile', 'off');   % Retain .rtw file
cs.set_param('ProfileTLC', 'off');   % Profile TLC
cs.set_param('TLCDebug', 'off');   % Start TLC debugger when generating code
cs.set_param('TLCCoverage', 'off');   % Start TLC coverage when generating code
cs.set_param('TLCAssert', 'off');   % Enable TLC assertion
cs.set_param('RTWUseSimCustomCode', 'off');   % Use the same custom code settings as Simulation Target
cs.set_param('CustomSourceCode', '');   % Source file
cs.set_param('CustomHeaderCode', '');   % Header file
cs.set_param('CustomInclude', '');   % Include directories
cs.set_param('CustomSource', '');   % Source files
cs.set_param('CustomLibrary', '');   % Libraries
cs.set_param('CustomLAPACKCallback', '');   % Custom LAPACK library callback
cs.set_param('CustomFFTCallback', '');   % Custom FFT library callback
cs.set_param('CustomDefine', '');   % Defines
cs.set_param('CustomInitializer', '');   % Initialize function
cs.set_param('CustomTerminator', '');   % Terminate function
cs.set_param('CodeExecutionProfiling', 'on');   % Measure task execution time
cs.set_param('CodeProfilingInstrumentation', 'on');   % Measure function execution times
cs.set_param('CodeExecutionProfileVariable', 'executionProfile');   % Workspace variable
cs.set_param('CodeProfilingSaveOptions', 'SummaryOnly');   % Save options
cs.set_param('CodeCoverageSettings', coder.coverage.CodeCoverageSettings([],'off','off','None'));   % Third-party tool
cs.set_param('CreateSILPILBlock', 'None');   % Create block
cs.set_param('MakeCommand', 'make_rtw');   % Make command
cs.set_param('PortableWordSizes', 'off');   % Enable portable word sizes
cs.set_param('PostCodeGenCommand', '');   % Post code generation command
cs.set_param('SaveLog', 'off');   % Save build log
cs.set_param('TLCOptions', '');   % TLC command line options
cs.set_param('GenerateReport', 'on');   % Create code generation report
cs.set_param('LaunchReport', 'on');   % Open report automatically
cs.set_param('IncludeHyperlinkInReport', 'on');   % Code-to-model
cs.set_param('GenerateTraceInfo', 'off');   % Model-to-code
cs.set_param('GenerateWebview', 'off');   % Generate model Web view
cs.set_param('GenerateTraceReport', 'off');   % Eliminated / virtual blocks
cs.set_param('GenerateTraceReportSl', 'off');   % Traceable Simulink blocks
cs.set_param('GenerateTraceReportSf', 'off');   % Traceable Stateflow objects
cs.set_param('GenerateTraceReportEml', 'off');   % Traceable MATLAB functions
cs.set_param('GenerateCodeMetricsReport', 'off');   % Static code metrics
cs.set_param('GenerateCodeReplacementReport', 'on');   % Summarize which blocks triggered code replacements
cs.set_param('GenerateComments', 'on');   % Include comments
cs.set_param('SimulinkBlockComments', 'on');   % Simulink block comments
cs.set_param('StateflowObjectComments', 'on');   % Stateflow object comments
cs.set_param('MATLABSourceComments', 'off');   % MATLAB source code as comments
cs.set_param('ShowEliminatedStatement', 'off');   % Show eliminated blocks
cs.set_param('ForceParamTrailComments', 'off');   % Verbose comments for SimulinkGlobal storage class
cs.set_param('OperatorAnnotations', 'off');   % Operator annotations
cs.set_param('InsertBlockDesc', 'off');   % Simulink block descriptions
cs.set_param('SFDataObjDesc', 'off');   % Stateflow object descriptions
cs.set_param('SimulinkDataObjDesc', 'off');   % Simulink data object descriptions
cs.set_param('ReqsInCode', 'off');   % Requirements in block comments
cs.set_param('EnableCustomComments', 'off');   % Custom comments (MPT objects only)
cs.set_param('MATLABFcnDesc', 'off');   % MATLAB user comments
cs.set_param('CustomSymbolStrGlobalVar', '$R$N$M');   % Global variables
cs.set_param('CustomSymbolStrType', '$N$R$M');   % Global types
cs.set_param('CustomSymbolStrField', '$N$M');   % Field name of global types
cs.set_param('CustomSymbolStrFcn', '$R$N$M$F');   % Subsystem methods
cs.set_param('CustomSymbolStrFcnArg', 'rt$I$N$M');   % Subsystem method arguments
cs.set_param('CustomSymbolStrTmpVar', '$N$M');   % Local temporary variables
cs.set_param('CustomSymbolStrBlkIO', 'rtb_$N$M');   % Local block output variables
cs.set_param('CustomSymbolStrMacro', '$R$N$M');   % Constant macros
cs.set_param('CustomSymbolStrUtil', '$N$C');   % Shared utilities
cs.set_param('CustomSymbolStrEmxType', 'emxArray_$M$N');   % EMX array types identifier format
cs.set_param('CustomSymbolStrEmxFcn', 'emx$M$N');   % EMX array utility functions identifier format
cs.set_param('MangleLength', 1);   % Minimum mangle length
cs.set_param('SharedChecksumLength', 8);   % Shared checksum length
cs.set_param('MaxIdLength', 64);   % Maximum identifier length
cs.set_param('InternalIdentifier', 'Classic');   % System-generated identifiers
cs.set_param('InlinedPrmAccess', 'Literals');   % Generate scalar inlined parameters as
cs.set_param('SignalNamingRule', 'None');   % Signal naming
cs.set_param('ParamNamingRule', 'None');   % Parameter naming
cs.set_param('DefineNamingRule', 'None');   % #define naming
cs.set_param('UseSimReservedNames', 'off');   % Use the same reserved names as Simulation Target
cs.set_param('ReservedNameArray', []);   % Reserved names
cs.set_param('IgnoreCustomStorageClasses', 'off');   % Ignore custom storage classes
cs.set_param('IgnoreTestpoints', 'off');   % Ignore test point signals
cs.set_param('CommentStyle', 'Auto');   % Comment style
cs.set_param('InsertPolySpaceComments', 'off');   % Insert Polyspace comments
cs.set_param('CustomUserTokenString', '');   % Custom token text
cs.set_param('TargetLangStandard', 'C89/C90 (ANSI)');   % Standard math library
cs.set_param('CodeReplacementLibrary', 'ARM CMSIS SIN COS');   % Code replacement library
cs.set_param('UtilityFuncGeneration', 'Auto');   % Shared code placement
cs.set_param('CodeInterfacePackaging', 'Nonreusable function');   % Code interface packaging
cs.set_param('GRTInterface', 'off');   % Classic call interface
cs.set_param('PurelyIntegerCode', 'off');   % Support floating-point numbers
cs.set_param('SupportNonFinite', 'off');   % Support non-finite numbers
cs.set_param('SupportComplex', 'off');   % Support complex numbers
cs.set_param('SupportAbsoluteTime', 'on');   % Support absolute time
cs.set_param('SupportContinuousTime', 'off');   % Support continuous time
cs.set_param('SupportNonInlinedSFcns', 'off');   % Support non-inlined S-functions
cs.set_param('SupportVariableSizeSignals', 'off');   % Support variable-size signals
cs.set_param('MultiwordTypeDef', 'System defined');   % Multiword type definitions
cs.set_param('CombineOutputUpdateFcns', 'on');   % Single output/update function
cs.set_param('IncludeMdlTerminateFcn', 'off');   % Terminate function required
cs.set_param('MatFileLogging', 'off');   % MAT-file logging
cs.set_param('SuppressErrorStatus', 'off');   % Remove error status field in real-time model data structure
cs.set_param('CombineSignalStateStructs', 'off');   % Combine signal/state structures
cs.set_param('ParenthesesLevel', 'Nominal');   % Parentheses level
cs.set_param('CastingMode', 'Nominal');   % Casting modes
cs.set_param('GenerateSampleERTMain', 'off');   % Generate an example main program
cs.set_param('IncludeFileDelimiter', 'Auto');   % #include file delimiter
cs.set_param('ERTCustomFileBanners', 'on');   % Enable custom file banner
cs.set_param('GenerateFullHeader', 'on');   % Generate full file banner
cs.set_param('InferredTypesCompatibility', 'off');   % Create preprocessor directive in rtwtypes.h
cs.set_param('TargetLibSuffix', '');   % Suffix applied to target library name
cs.set_param('TargetPreCompLibLocation', '');   % Precompiled library location
cs.set_param('RemoveDisableFunc', 'off');   % Remove disable function
cs.set_param('LUTObjectStructOrderExplicitValues', 'Size,Breakpoints,Table');   % LUT object struct order for explicit value specification
cs.set_param('LUTObjectStructOrderEvenSpacing', 'Size,Breakpoints,Table');   % LUT object struct order for even spacing specification
cs.set_param('MemSecPackage', '--- None ---');   % Memory sections package for model data and functions
cs.set_param('MemSecFuncSharedUtil', 'Default');   % Memory section for shared utility functions
cs.set_param('MemSecFuncInitTerm', 'Default');   % Memory section for initialize/terminate functions
cs.set_param('MemSecFuncExecute', 'Default');   % Memory section for execution functions
cs.set_param('MemSecDataParameters', 'Default');   % Memory section for parameters
cs.set_param('MemSecDataInternal', 'Default');   % Memory section for internal data
cs.set_param('MemSecDataIO', 'Default');   % Memory section for inputs/outputs
cs.set_param('MemSecDataConstants', 'Default');   % Memory section for constants
cs.set_param('GlobalDataDefinition', 'Auto');   % Data definition
cs.set_param('GlobalDataReference', 'Auto');   % Data declaration
cs.set_param('ExtMode', 'off');   % External mode
cs.set_param('ERTFilePackagingFormat', 'Modular');   % File packaging format
cs.set_param('EnableUserReplacementTypes', 'off');   % Replace data type names in the generated code
cs.set_param('ConvertIfToSwitch', 'off');   % Convert if-elseif-else patterns to switch-case statements
cs.set_param('ERTCustomFileTemplate', 'customRoutineProcess.tlc');   % File customization template
cs.set_param('ERTDataHdrFileTemplate', 'sourceFileTemplate.cgt');   % Header file template
cs.set_param('ERTDataSrcFileTemplate', 'sourceFileTemplate.cgt');   % Source file template
cs.set_param('ERTHdrFileBannerTemplate', 'sourceFileTemplate.cgt');   % Header file template
cs.set_param('ERTSrcFileBannerTemplate', 'sourceFileTemplate.cgt');   % Source file template
cs.set_param('EnableDataOwnership', 'off');   % Use owner from data object for data definition placement
cs.set_param('GenerateASAP2', 'off');   % ASAP2 interface
cs.set_param('IndentSize', '2');   % Indent size
cs.set_param('IndentStyle', 'K&R');   % Indent style
cs.set_param('InlinedParameterPlacement', 'NonHierarchical');   % Parameter structure
cs.set_param('ParamTuneLevel', 10);   % Parameter tune level
cs.set_param('EnableSignedLeftShifts', 'on');   % Replace multiplications by powers of two with signed bitwise shifts
cs.set_param('EnableSignedRightShifts', 'on');   % Allow right shifts on signed integers
cs.set_param('PreserveExpressionOrder', 'off');   % Preserve operand order in expression
cs.set_param('PreserveExternInFcnDecls', 'on');   % Preserve extern keyword in function declarations
cs.set_param('PreserveIfCondition', 'off');   % Preserve condition expression in if statement
cs.set_param('RTWCAPIParams', 'off');   % Generate C API for parameters
cs.set_param('RTWCAPIRootIO', 'off');   % Generate C API for root-level I/O
cs.set_param('RTWCAPISignals', 'off');   % Generate C API for signals
cs.set_param('RTWCAPIStates', 'off');   % Generate C API for states
cs.set_param('SignalDisplayLevel', 10);   % Signal display level
cs.set_param('SuppressUnreachableDefaultCases', 'off');   % Suppress generation of default cases for Stateflow switch statements if unreachable
cs.set_param('BooleanTrueId', 'true');   % Boolean true identifier
cs.set_param('BooleanFalseId', 'false');   % Boolean false identifier
cs.set_param('MaxIdInt32', 'MAX_int32_T');   % 32-bit integer maximum identifier
cs.set_param('MinIdInt32', 'MIN_int32_T');   % 32-bit integer minimum identifier
cs.set_param('MaxIdUint32', 'MAX_uint32_T');   % 32-bit unsigned integer maximum identifier
cs.set_param('MaxIdInt16', 'MAX_int16_T');   % 16-bit integer maximum identifier
cs.set_param('MinIdInt16', 'MIN_int16_T');   % 16-bit integer minimum identifier
cs.set_param('MaxIdUint16', 'MAX_uint16_T');   % 16-bit unsigned integer maximum identifier
cs.set_param('MaxIdInt8', 'MAX_int8_T');   % 8-bit integer maximum identifier
cs.set_param('MinIdInt8', 'MIN_int8_T');   % 8-bit integer minimum identifier
cs.set_param('MaxIdUint8', 'MAX_uint8_T');   % 8-bit unsigned integer maximum identifier
cs.set_param('TypeLimitIdReplacementHeaderFile', '');   % Type limit identifier replacement header file
cs.set_param('CProjectFiles', '');   % C files included to project
cs.set_param('DownloadApplication', 'on');   % Download Application
cs.set_param('HPathFiles', '');   % Header files added to project
cs.set_param('IT_Handler_Optim', 'on');   % Interrupt Handler Optimization
cs.set_param('Ioc_Fullpath', '.\FIRM\Generic1\Generic1.ioc');   % Model configuration (ioc) Full Path
cs.set_param('STM32AppendToList', 'on');   % Append to list
cs.set_param('STM32CubeMxPath', 'D:\Prog\ST\STM32Cube\STM32CubeMX');   % STM32CubeMx installation path
cs.set_param('STM32CubeMxPathUpdate', 'off');   % STM32CubeMx Path update
cs.set_param('Target_Inst_Fullpath', 'D:\Prog\MATLAB\STM32_MAT\STM32');   % Installed Full Path

% Simulink Coverage
cs.set_param('CovModelRefEnable', 'off');   % Record coverage for referenced models
cs.set_param('RecordCoverage', 'off');   % Record coverage for this model
cs.set_param('CovEnable', 'off');   % Enable coverage analysis