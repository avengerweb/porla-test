
set(
    BOOST_INCLUDE_DIRS
    "${CMAKE_SOURCE_DIR}/vendor/boost-array/include"
    "${CMAKE_SOURCE_DIR}/vendor/boost-asio/include"
    "${CMAKE_SOURCE_DIR}/vendor/boost-assert/include"
    "${CMAKE_SOURCE_DIR}/vendor/boost-bind/include"
    "${CMAKE_SOURCE_DIR}/vendor/boost-concept_check/include"
    "${CMAKE_SOURCE_DIR}/vendor/boost-config/include"
    "${CMAKE_SOURCE_DIR}/vendor/boost-container/include"
    "${CMAKE_SOURCE_DIR}/vendor/boost-container_hash/include"
    "${CMAKE_SOURCE_DIR}/vendor/boost-core/include"
    "${CMAKE_SOURCE_DIR}/vendor/boost-crc/include"
    "${CMAKE_SOURCE_DIR}/vendor/boost-date_time/include"
    "${CMAKE_SOURCE_DIR}/vendor/boost-detail/include"
    "${CMAKE_SOURCE_DIR}/vendor/boost-exception/include"
    "${CMAKE_SOURCE_DIR}/vendor/boost-function/include"
    "${CMAKE_SOURCE_DIR}/vendor/boost-integer/include"
    "${CMAKE_SOURCE_DIR}/vendor/boost-intrusive/include"
    "${CMAKE_SOURCE_DIR}/vendor/boost-iterator/include"
    "${CMAKE_SOURCE_DIR}/vendor/boost-lexical_cast/include"
    "${CMAKE_SOURCE_DIR}/vendor/boost-math/include"
    "${CMAKE_SOURCE_DIR}/vendor/boost-move/include"
    "${CMAKE_SOURCE_DIR}/vendor/boost-mpl/include"
    "${CMAKE_SOURCE_DIR}/vendor/boost-multiprecision/include"
    "${CMAKE_SOURCE_DIR}/vendor/boost-numeric_conversion/include"
    "${CMAKE_SOURCE_DIR}/vendor/boost-optional/include"
    "${CMAKE_SOURCE_DIR}/vendor/boost-pool/include"
    "${CMAKE_SOURCE_DIR}/vendor/boost-predef/include"
    "${CMAKE_SOURCE_DIR}/vendor/boost-preprocessor/include"
    "${CMAKE_SOURCE_DIR}/vendor/boost-range/include"
    "${CMAKE_SOURCE_DIR}/vendor/boost-rational/include"
    "${CMAKE_SOURCE_DIR}/vendor/boost-scope_exit/include"
    "${CMAKE_SOURCE_DIR}/vendor/boost-smart_ptr/include"
    "${CMAKE_SOURCE_DIR}/vendor/boost-static_assert/include"
    "${CMAKE_SOURCE_DIR}/vendor/boost-system/include"
    "${CMAKE_SOURCE_DIR}/vendor/boost-throw_exception/include"
    "${CMAKE_SOURCE_DIR}/vendor/boost-type_index/include"
    "${CMAKE_SOURCE_DIR}/vendor/boost-type_traits/include"
    "${CMAKE_SOURCE_DIR}/vendor/boost-typeof/include"
    "${CMAKE_SOURCE_DIR}/vendor/boost-utility/include"
    "${CMAKE_SOURCE_DIR}/vendor/boost-variant/include"
    "${CMAKE_SOURCE_DIR}/vendor/boost-winapi/include"
)

add_library(
    boost-system
    STATIC
    vendor/boost-system/src/error_code
)

set_target_properties(boost-system PROPERTIES COMPILE_FLAGS "-fPIC")

target_include_directories(boost-system PRIVATE "${BOOST_INCLUDE_DIRS}")
