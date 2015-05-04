#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Environment
MKDIR=mkdir
CP=cp
GREP=grep
NM=nm
CCADMIN=CCadmin
RANLIB=ranlib
CC=gcc
CCC=g++
CXX=g++
FC=gfortran
AS=as

# Macros
CND_PLATFORM=MinGW-Windows
CND_DLIB_EXT=dll
CND_CONF=Debug
CND_DISTDIR=dist
CND_BUILDDIR=build

# Include project Makefile
include Makefile

# Object Directory
OBJECTDIR=${CND_BUILDDIR}/${CND_CONF}/${CND_PLATFORM}

# Object Files
OBJECTFILES= \
	${OBJECTDIR}/source/agir/ui/console/menu.o \
	${OBJECTDIR}/source/agir/ui/console/menu_option.o \
	${OBJECTDIR}/tests/agir/ui/console/menu.o

# Test Directory
TESTDIR=${CND_BUILDDIR}/${CND_CONF}/${CND_PLATFORM}/tests

# Test Files
TESTFILES= \
	${TESTDIR}/TestFiles/f1

# C Compiler Flags
CFLAGS=

# CC Compiler Flags
CCFLAGS=
CXXFLAGS=

# Fortran Compiler Flags
FFLAGS=

# Assembler Flags
ASFLAGS=

# Link Libraries and Options
LDLIBSOPTIONS=

# Build Targets
.build-conf: ${BUILD_SUBPROJECTS}
	"${MAKE}"  -f nbproject/Makefile-${CND_CONF}.mk ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/libagirutil.a

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/libagirutil.a: ${OBJECTFILES}
	${MKDIR} -p ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}
	${RM} ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/libagirutil.a
	${AR} -rv ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/libagirutil.a ${OBJECTFILES} 
	$(RANLIB) ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/libagirutil.a

${OBJECTDIR}/source/agir/ui/console/menu.o: source/agir/ui/console/menu.cpp 
	${MKDIR} -p ${OBJECTDIR}/source/agir/ui/console
	${RM} "$@.d"
	$(COMPILE.cc) -g -Iinclude -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/source/agir/ui/console/menu.o source/agir/ui/console/menu.cpp

${OBJECTDIR}/source/agir/ui/console/menu_option.o: source/agir/ui/console/menu_option.cpp 
	${MKDIR} -p ${OBJECTDIR}/source/agir/ui/console
	${RM} "$@.d"
	$(COMPILE.cc) -g -Iinclude -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/source/agir/ui/console/menu_option.o source/agir/ui/console/menu_option.cpp

${OBJECTDIR}/tests/agir/ui/console/menu.o: tests/agir/ui/console/menu.cpp 
	${MKDIR} -p ${OBJECTDIR}/tests/agir/ui/console
	${RM} "$@.d"
	$(COMPILE.cc) -g -Iinclude -std=c++11 `cppunit-config --cflags` -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/tests/agir/ui/console/menu.o tests/agir/ui/console/menu.cpp

# Subprojects
.build-subprojects:

# Build Test Targets
.build-tests-conf: .build-conf ${TESTFILES}
${TESTDIR}/TestFiles/f1: ${TESTDIR}/tests/agir/ui/console/menu.o ${TESTDIR}/tests/runner.o ${OBJECTFILES:%.o=%_nomain.o}
	${MKDIR} -p ${TESTDIR}/TestFiles
	${LINK.cc}   -o ${TESTDIR}/TestFiles/f1 $^ ${LDLIBSOPTIONS} `cppunit-config --libs`   


${TESTDIR}/tests/agir/ui/console/menu.o: tests/agir/ui/console/menu.cpp 
	${MKDIR} -p ${TESTDIR}/tests/agir/ui/console
	${RM} "$@.d"
	$(COMPILE.cc) -g -Iinclude -std=c++11 `cppunit-config --cflags` -MMD -MP -MF "$@.d" -o ${TESTDIR}/tests/agir/ui/console/menu.o tests/agir/ui/console/menu.cpp


${TESTDIR}/tests/runner.o: tests/runner.cpp 
	${MKDIR} -p ${TESTDIR}/tests
	${RM} "$@.d"
	$(COMPILE.cc) -g -Iinclude -std=c++11 `cppunit-config --cflags` -MMD -MP -MF "$@.d" -o ${TESTDIR}/tests/runner.o tests/runner.cpp


${OBJECTDIR}/source/agir/ui/console/menu_nomain.o: ${OBJECTDIR}/source/agir/ui/console/menu.o source/agir/ui/console/menu.cpp 
	${MKDIR} -p ${OBJECTDIR}/source/agir/ui/console
	@NMOUTPUT=`${NM} ${OBJECTDIR}/source/agir/ui/console/menu.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -g -Iinclude -std=c++11 -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/source/agir/ui/console/menu_nomain.o source/agir/ui/console/menu.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/source/agir/ui/console/menu.o ${OBJECTDIR}/source/agir/ui/console/menu_nomain.o;\
	fi

${OBJECTDIR}/source/agir/ui/console/menu_option_nomain.o: ${OBJECTDIR}/source/agir/ui/console/menu_option.o source/agir/ui/console/menu_option.cpp 
	${MKDIR} -p ${OBJECTDIR}/source/agir/ui/console
	@NMOUTPUT=`${NM} ${OBJECTDIR}/source/agir/ui/console/menu_option.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -g -Iinclude -std=c++11 -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/source/agir/ui/console/menu_option_nomain.o source/agir/ui/console/menu_option.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/source/agir/ui/console/menu_option.o ${OBJECTDIR}/source/agir/ui/console/menu_option_nomain.o;\
	fi

${OBJECTDIR}/tests/agir/ui/console/menu_nomain.o: ${OBJECTDIR}/tests/agir/ui/console/menu.o tests/agir/ui/console/menu.cpp 
	${MKDIR} -p ${OBJECTDIR}/tests/agir/ui/console
	@NMOUTPUT=`${NM} ${OBJECTDIR}/tests/agir/ui/console/menu.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -g -Iinclude -std=c++11 `cppunit-config --cflags` -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/tests/agir/ui/console/menu_nomain.o tests/agir/ui/console/menu.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/tests/agir/ui/console/menu.o ${OBJECTDIR}/tests/agir/ui/console/menu_nomain.o;\
	fi

# Run Test Targets
.test-conf:
	@if [ "${TEST}" = "" ]; \
	then  \
	    ${TESTDIR}/TestFiles/f1 || true; \
	else  \
	    ./${TEST} || true; \
	fi

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${CND_BUILDDIR}/${CND_CONF}
	${RM} ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/libagirutil.a

# Subprojects
.clean-subprojects:

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc
