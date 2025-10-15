a_exercise: a_exercise.o
	ld -macos_version_min 26.0.0 -o a_exercise a_exercise.o -lSystem -syslibroot `xcrun -sdk macosx --show-sdk-path` -arch arm64

a_exercise.o: a_exercises.s
	as -o a_exercise.o a_exercises.s

clean:
	rm -f a_exercise.o a_exercise
