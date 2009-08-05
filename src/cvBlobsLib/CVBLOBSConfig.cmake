
MESSAGE(STATUS "CVBLOBS Library")

IF (NESTED_BUILD)
  SET(CVBLOBS_LIBRARIES cvBlobs)
ELSE (NESTED_BUILD)
  FIND_LIBRARY(CVBLOBS_LIBRARIES cvBlobs ${CVBLOBS_DIR})
ENDIF (NESTED_BUILD)

SET(CVBLOBS_INCLUDE_DIRS ${CVBLOBS_DIR})

