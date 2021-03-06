require 'mxx_ru/cpp'
require 'restinio/asio_helper.rb'

MxxRu::Cpp::exe_target {

	RestinioAsioHelper.attach_propper_asio( self )

	required_prj 'nodejs/http_parser_mxxru/prj.rb'
	required_prj 'fmt_mxxru/prj.rb'
	required_prj 'restinio/platform_specific_libs.rb'

	lib_static( RestinioBoostHelper.get_lib_name( 'boost_regex', self ) )

	target( "_test.router.express_router_boost_regex_bench" )

	cpp_source( "main.cpp" )
}

