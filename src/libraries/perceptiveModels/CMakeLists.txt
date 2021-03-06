# Copyright: (C) 2011 Department of Robotics Brain and Cognitive Sciences - Istituto Italiano di Tecnologia
# Authors: Ugo Pattacini
# CopyPolicy: Released under the terms of the GNU GPL v2.0.

SET(PROJECTNAME perceptiveModels)

PROJECT(${PROJECTNAME})

SET(folder_source src/ports.cpp
                  src/sensors.cpp
                  src/nodes.cpp
                  src/models.cpp
                  src/springyFingers.cpp
                  src/tactileFingers.cpp)

SET(folder_header_private include/iCub/perception/private/ports.h)

SET(folder_header include/iCub/perception/sensors.h
                  include/iCub/perception/nodes.h
                  include/iCub/perception/models.h
                  include/iCub/perception/springyFingers.h
                  include/iCub/perception/tactileFingers.h)

SOURCE_GROUP("Source Files" FILES ${folder_source})
SOURCE_GROUP("Header Files" FILES ${folder_header_private} ${folder_header})

INCLUDE_DIRECTORIES(${PROJECT_SOURCE_DIR}/include
                    ${ctrlLib_INCLUDE_DIRS}
                    ${learningMachine_INCLUDE_DIRS}
                    ${GSL_INCLUDE_DIRS}
                    ${YARP_INCLUDE_DIRS})

ADD_LIBRARY(${PROJECTNAME} ${folder_source} ${folder_header_private} ${folder_header})

TARGET_LINK_LIBRARIES(${PROJECT_NAME} ctrlLib
                                      learningMachine
                                      ${GSL_LIBRARIES}
                                      ${YARP_LIBRARIES})

icub_export_library(${PROJECTNAME} INTERNAL_INCLUDE_DIRS ${PROJECT_SOURCE_DIR}/include
                                   DEPENDS ctrlLib learningMachine
                                   DESTINATION include/iCub/perception
                                   FILES ${folder_header})

