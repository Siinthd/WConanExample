cmake_minimum_required(VERSION 3.5)

project(ip_filter VERSION 1.0.0)

find_package(Boost COMPONENTS unit_test_framework REQUIRED)

# configure directories
set(SOURCE_PATH "${PROJECT_SOURCE_DIR}/src")
set(TEST_PATH "${PROJECT_SOURCE_DIR}/test")

include_directories(${CMAKE_BINARY_DIR})

# Download automatically, you can also just copy the conan.cmake file
if(NOT EXISTS "${CMAKE_BINARY_DIR}/conan.cmake")
   message(STATUS "Downloading conan.cmake from https://github.com/conan-io/cmake-conan")
   file(DOWNLOAD "https://raw.githubusercontent.com/conan-io/cmake-conan/master/conan.cmake"
                  "${CMAKE_BINARY_DIR}/conan.cmake")
endif()

include(${CMAKE_BINARY_DIR}/conan.cmake)

conan_cmake_run(REQUIRES
                range-v3/0.10.0
                BASIC_SETUP CMAKE_TARGETS
                BUILD missing)


                
add_executable(ip_filter ${SOURCE_PATH}/main.cpp
			 ${SOURCE_PATH}/ip_filter.cpp)
      

set_target_properties(ip_filter PROPERTIES
        CXX_STANDARD 14
        CXX_STANDARD_REQUIRED ON
        COMPILE_OPTIONS "-Wpedantic;-Wall;-Wextra"
        )
        
add_executable(test_filter ${TEST_PATH}/test_filter.cpp
			${SOURCE_PATH}/ip_filter.cpp)
set_target_properties(test_filter PROPERTIES
    COMPILE_DEFINITIONS BOOST_TEST_DYN_LINK
    INCLUDE_DIRECTORIES ${Boost_INCLUDE_DIR}
    )
    
target_include_directories(test_filter PUBLIC src)
    
target_link_libraries(test_filter
    ${Boost_LIBRARIES}
)


target_compile_options(test_filter PRIVATE
    -Wall -Wextra -pedantic -Werror
)
    
enable_testing()
add_test(test_filter test_filter)

install(TARGETS ip_filter RUNTIME DESTINATION bin)

set(CPACK_GENERATOR DEB)

set(CPACK_GENERATOR DEB)
set(CPACK_DEB_COMPONENT_INSTALL ON)
set(CPACK_DEB_PACKAGE_NAME ${CMAKE_PROJECT_NAME})
set(CPACK_PACKAGE_VERSION ${ip_filter_VERSION})
set(CPACK_PACKAGE_CONTACT Siinthd@protonmail.com)

include(CPack)


