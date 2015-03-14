cmake_minimum_required(VERSION 2.6)

find_package(ITK)

include(${ITK_USE_FILE})

PROJECT(DeformableRegistration)
SET(CMAKE_CXX_FLAGS -O3)

add_executable(DeformableRegistration4 DeformableRegistration4.cxx)
add_executable(DeformableRegistration6 DeformableRegistration6.cxx)

target_link_libraries(DeformableRegistration4 ${ITK_LIBRARIES})
target_link_libraries(DeformableRegistration6 ${ITK_LIBRARIES})
