a_HelloWorld: a_HelloWorld.o
	ld -macos_version_min 26.0.0 -o a_HelloWorld a_HelloWorld.o -lSystem -syslibroot `xcrun -sdk macosx --show-sdk-path` -e _start -arch arm64

a_HelloWorld.o: a_HelloWorld.s
	as -o a_HelloWorld.o a_HelloWorld.s

clean:
	rm -f a_HelloWorld.o a_HelloWorld
