start %comspec% /k ""D:\Program Files (x86)\Microsoft Visual Studio 10.0\VC\vcvarsall.bat" x86 & VSPerfMon /COVERAGE /user:"firefly" /CS /output:"coverageResult.coverage""
%comspec% /C ""D:\Program Files (x86)\Microsoft Visual Studio 10.0\VC\vcvarsall.bat" x86 & nunit-console-x86 bin/Debug/TestLAS.dll & VSPerfCmd /globaloff & VSPerfCmd /shutdown"