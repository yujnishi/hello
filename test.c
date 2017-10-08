#include <CUnit/CUnit.h>
#include <CUnit/Console.h>

void hello_test1(void) {
    CU_ASSERT(hello() == 10);
}

int main() {
    CU_pSuite hello_suite;
    
    CU_initialize_registry();
    hello_suite = CU_add_suite("hello",NULL,NULL);
    CU_add_test(hello_suite,"hello1",hello_test1);
    CU_console_run_tests();
    CU_cleanup_registry();
    
    return 0;
}

    
