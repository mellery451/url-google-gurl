use 5.012;
use Module::Build::WithXSpp;
use Devel::CheckLib;

check_lib_or_exit(lib => [qw(icuuc icuio icudata icui18n)]);

my $build = Module::Build::WithXSpp->new(
    module_name       => 'URL::Google::GURL',
    license           => 'perl',
    extra_typemap_modules => {
      'ExtUtils::Typemaps::Default' => '0.01',
    },
    extra_linker_flags => '-licuuc -licuio -licudata -licui18n',
    extra_compiler_flags => '-I. -I.. -I./src/googleurl -I./src/googleurl/base -I./src/googleurl/src',
);

$build->create_build_script;


