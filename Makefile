run_all_in_parallel:
	make -j test_Android_7.0 test_Android_8.0 test_Android_6.0

test_Android_7.0:
	platformVersion=7.0 platformName=Android pybot sample_test.robot

test_Android_8.0:
	platformVersion=8.0 platformName=Android pybot sample_test.robot

test_Android_6.0:
	platformVersion=6.0 platformName=Android pybot sample_test.robot