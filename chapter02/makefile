a_exercise: a_exercise.o
	ld -macos_version_min 26.0.0 -o a_exercise a_exercise.o -lSystem -syslibroot `xcrun -sdk macosx --show-sdk-path` -arch arm64

a_exercise.o: a_exercises.s
	as -o a_exercise.o a_exercises.s

a_sub_carry: a_sub_carry.o
	ld -macos_version_min 26.0.0 -o a_sub_carry a_sub_carry.o -lSystem -syslibroot `xcrun -sdk macosx --show-sdk-path` -arch arm64

a_sub_carry.o: a_sub_carry.s
	as -o a_sub_carry.o a_sub_carry.s

clean:
	rm -f a_exercise.o a_exercise a_sub_carry a_sub_carry.o
