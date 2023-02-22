include(RunCMake)
set(RunCMake_IGNORE_POLICY_VERSION_DEPRECATION ON)

run_cmake(BOM-UTF-8)
run_cmake(BOM-UTF-16-LE)
run_cmake(BOM-UTF-16-BE)
run_cmake(BOM-UTF-32-LE)
run_cmake(BOM-UTF-32-BE)
run_cmake(CMP0053-At-OLD)
run_cmake(CMP0053-At-NEW)
run_cmake(CMP0053-At-WARN)
run_cmake(CMP0053-At-WARN-newlines)
run_cmake(CMP0053-WARN)
run_cmake(CMP0053-NUL)
run_cmake(CMP0053-ParenInENV)
run_cmake(CMP0053-ParenInQuotedENV)
run_cmake(CommandSpaces)
run_cmake(CommandTabs)
run_cmake(CommandNewlines)
run_cmake(CommandComments)
run_cmake(CommandEOF)
run_cmake(CommandError0)
run_cmake(CommandError1)
run_cmake(CommandError2)
run_cmake(ForEachBracket1)
run_cmake(FunctionBracket1)
run_cmake(MacroBracket1)
run_cmake(String0)
run_cmake(String1)
run_cmake(StringBackslash)
run_cmake(StringCRLF)
run_cmake(StringContinuation1)
run_cmake(StringContinuation2)
run_cmake(StringNoSpace)
run_cmake(OneLetter)
run_cmake(Unquoted0)
run_cmake(Unquoted1)
run_cmake(Unquoted2)
run_cmake(Bracket0)
run_cmake(Bracket1)
run_cmake(Bracket2)
run_cmake(BracketBackslash)
run_cmake(BracketCRLF)
run_cmake(BracketComment0)
run_cmake(BracketComment1)
run_cmake(BracketComment2)
run_cmake(BracketComment3)
run_cmake(BracketComment4)
run_cmake(BracketComment5)
run_cmake(BracketNoSpace0)
run_cmake(BracketNoSpace1)
run_cmake(BracketNoSpace2)
run_cmake(BracketNoSpace3)
run_cmake(BracketNoSpace4)
run_cmake(BracketNoSpace5)
run_cmake(Escape1)
run_cmake(Escape2)
run_cmake(EscapeCharsAllowed)
run_cmake(NullAfterBackslash)
run_cmake(NullTerminatedArgument)
include("${RunCMake_SOURCE_DIR}/EscapeCharsDisallowed.cmake")
run_cmake(ParenNoSpace0)
run_cmake(ParenNoSpace1)
run_cmake(ParenNoSpace2)
run_cmake(ParenInVarName0)
run_cmake(ParenInVarName1)
run_cmake(UnterminatedCall1)
run_cmake(UnterminatedCall2)
run_cmake(UnterminatedString)
run_cmake(UnterminatedBrace0)
run_cmake(UnterminatedBrace1)
run_cmake(UnterminatedBrace2)
run_cmake(UnterminatedBracket0)
run_cmake(UnterminatedBracket1)
run_cmake(UnterminatedBracketComment)
run_cmake(ImproperNesting)

# Variable expansion tests
run_cmake(ExpandInAt)
run_cmake(EscapedAt)
run_cmake(EscapeQuotes)
run_cmake(AtWithVariable)
run_cmake(AtWithVariableEmptyExpansion)
run_cmake(AtWithVariableAtOnly)
run_cmake(AtWithVariableEmptyExpansionAtOnly)
run_cmake(AtWithVariableFile)
run_cmake(AtWithVariableAtOnlyFile)
run_cmake(ParenInENV)
run_cmake(ParenInQuotedENV)

# Variable name tests
run_cmake(NameWithSpaces)
run_cmake(NameWithTabs)
run_cmake(NameWithNewline)
run_cmake(NameWithCarriageReturn)
run_cmake(NameWithEscapedSpaces)
run_cmake(NameWithEscapedTabs)
run_cmake(NameWithSpacesQuoted)
run_cmake(NameWithTabsQuoted)
run_cmake(NameWithNewlineQuoted)
run_cmake(NameWithCarriageReturnQuoted)
run_cmake(NameWithEscapedSpacesQuoted)
run_cmake(NameWithEscapedTabsQuoted)
run_cmake(CMP0053-NameWithSpaces)
run_cmake(CMP0053-NameWithTabs)
run_cmake(CMP0053-NameWithNewline)
run_cmake(CMP0053-NameWithCarriageReturn)
run_cmake(CMP0053-NameWithEscapedSpaces)
run_cmake(CMP0053-NameWithEscapedTabs)
run_cmake(CMP0053-NameWithSpacesQuoted)
run_cmake(CMP0053-NameWithTabsQuoted)
run_cmake(CMP0053-NameWithNewlineQuoted)
run_cmake(CMP0053-NameWithCarriageReturnQuoted)
run_cmake(CMP0053-NameWithEscapedSpacesQuoted)
run_cmake(CMP0053-NameWithEscapedTabsQuoted)
run_cmake(CMP0053-Dollar-OLD)
run_cmake(CMP0053-Dollar-NEW)

# Variable special types
run_cmake(QueryCache)

# Function and macro tests.
run_cmake(FunctionUnmatched)
run_cmake(FunctionUnmatchedForeach)
run_cmake(MacroUnmatched)
run_cmake(MacroUnmatchedForeach)

function(run_override name)
  string(TOLOWER "${name}" lname)
  set(RunCMake_DEFAULT_stderr "^CMake Error at [^
]*/Tests/RunCMake/Syntax/Override\\.cmake:[0-9]+ \\(function\\):
  Built-in flow control command \"${lname}\" cannot be overridden\\.
Call Stack \\(most recent call first\\):
  [^
]*/Tests/RunCMake/Syntax/Override\\.cmake:[0-9]+ \\(override\\)$")
  run_cmake_command(Override${name} "${CMAKE_COMMAND}" -DFUNCTION_NAME=${name} -P "${RunCMake_SOURCE_DIR}/Override.cmake")
endfunction()

run_override(Break)
run_override(Continue)
run_override(Else)
run_override(ElseIf)
run_override(EndForeach)
run_override(EndFunction)
run_override(EndIf)
run_override(EndMacro)
run_override(EndWhile)
run_override(Foreach)
run_override(Function)
run_override(If)
run_override(Macro)
run_override(Return)
run_override(While)
run_override(Project)
