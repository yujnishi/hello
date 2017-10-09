#include <CUnit/CUnit.h>
#include <CUnit/Basic.h>
#include <CUnit/Automated.h>

void hello_test1(void) {
    CU_ASSERT(hello("hoge") == 10);
}

int main() {
    CU_pSuite hello_suite;
    
    CU_initialize_registry();
    hello_suite = CU_add_suite("hello",NULL,NULL);
    CU_add_test(hello_suite,"hello1",hello_test1);
       CU_basic_set_mode(CU_BRM_VERBOSE);
   CU_basic_run_tests();
   printf("\n");
   CU_basic_show_failures(CU_get_failure_list());
   printf("\n\n");
    CU_automated_run_tests();
    CU_cleanup_registry();
    
    return 0;
}

    
