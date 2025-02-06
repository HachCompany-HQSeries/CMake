include(RunCMake)

run_cmake(CustomTarget)
run_cmake(Empty)
run_cmake(Repeat-CMP0103-WARN)
run_cmake(Repeat-CMP0103-OLD)
run_cmake(Repeat-CMP0103-NEW)
run_cmake(TargetNotFound)
run_cmake(AppendExport)
run_cmake(OldIface)
run_cmake(NoExportSet)
run_cmake(ForbiddenToExportInterfaceProperties)
run_cmake(ForbiddenToExportImportedProperties)
run_cmake(ForbiddenToExportPropertyWithGenExp)
run_cmake(ExportPropertiesUndefined)
run_cmake(DependOnNotExport)
run_cmake(DependOnDoubleExport)
run_cmake(UnknownExport)
run_cmake(NamelinkOnlyExport)
run_cmake(SeparateNamelinkExport)
run_cmake(TryCompileExport)
run_cmake(FindDependencyExportGate)
run_cmake(FindDependencyExport)
run_cmake(FindDependencyExportStatic)
run_cmake(FindDependencyExportShared)
#FIXME(#26622): The FindDependencyExportFetchContent test case exposes an assertion failure.
#run_cmake(FindDependencyExportFetchContent)
