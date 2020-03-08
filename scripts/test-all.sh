#!/usr/bin/env sh

script_path="$( cd "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )/..";

cd "$script_path";
source ./config;

for step in Step*; do
    if [ -d "$step" ]; then
        echo "Testing $step...";

        # Test the step
        result=1;

        if [ "$result" -eq "1" ]; then
            # Send the current test to the server
            

            exit 1;
        fi

        echo "";
    fi
done

echo "";
echo "Well done boy! You finished all the exercices. Feel free to let us your feelings about this workshop, and I hope you enjoyed learning Elm.";
echo "To dig further into the Elm world, we recommand joining the Elm slack to interact with people available there: https://elmlang.herokuapp.com/";
echo "See you soon!";