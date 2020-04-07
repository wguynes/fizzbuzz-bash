#usbienv bats

source fizzbuzz.sh

@test "fizzbuzz given 1 prints 1" {
    run fizzbuzz 1
    [ "$status" -eq 0 ]
    [ "$output" = "1" ]
}

@test "fizzbuzz given 2 prints 2" {
    run fizzbuzz 2
    [ "$status" -eq 0 ]
    [ "$output" = "2" ]
}

@test "fizzbuzz given 3 prints 'fizz'" {
    run fizzbuzz 3
    [ "$status" -eq 0 ]
    [ "$output" = "fizz" ]
}

@test "fizzbuzz given 6 prints 'fizz'" {
    run fizzbuzz 6
    [ "$status" -eq 0 ]
    [ "$output" = "fizz" ]
}

@test "fizzbuzz given 5 prints 'buzz'" {
    run fizzbuzz 5
    [ "$status" -eq 0 ]
    [ "$output" = "buzz" ]
}

@test "fizzbuzz given 15 prints 'fizzbuzz'" {
    run fizzbuzz 15
    [ "$status" -eq 0 ]
    [ "$output" = "fizzbuzz" ]
}

@test "fizzbuzz given 0 does not print" {
    run fizzbuzz 0
    [ "$status" -eq 1 ]
    [ -z "$output" ]
}

@test "fizzbuzz given -1 does not print" {
    run fizzbuzz -1 
    [ "$status" -eq 1 ]
    [ -z "$output" ]
}
