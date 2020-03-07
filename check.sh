#!/usr/bin/env sh

script_path="$( cd "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )";
storage_file="config";

if [ ! -f "$script_path/$storage_file" ]; then
    echo "Hi mate :) Can you type your pseudo please ? ";
    read pseudo;
    echo "";
    
    # Save the pseudo and create a unique ID
    touch "$script_path/$storage_file";
    echo "pseudo=\"$pseudo\"" >> "$script_path/$storage_file";
    echo "id=$(uuidgen)" >> "$script_path/$storage_file";

    echo "Okay $pseudo, welcome to the Elm Workshop.";
    echo "The workshop works with steps, and each steps should be a little bit harder to solve than the previous one.";
    echo "Each step must be validated using this script. It will test, send and display the result to this page: https://nicolasguilloux.eu/pouet";
    echo "All information are stored within the config.json file. We only track your progression. ;)";
    echo "";

    echo "You may now enter into the Step 01 folder, and open the Main.elm file with your favorite editor.";
    echo "We recommand Virtual Studio Code, as it is free and have enough plugins to make your life easier.";
    echo "You may now follow the instructions in the file, and remember to execute this script to test your solutions.";
    echo "You are now ready to go! Good luck! :) ";

    exit 0;
fi

cd "$script_path";
source ./$storage_file;

for step in *; do
    if [ -d "$step" ]; then
        echo "";
        echo "Testing $step...";

        # Test the step
        result=1;

        if [ "$result" -eq "1" ]; then
            # Send the current test to the server
            

            exit 1;
        fi
    fi
done

echo "";
echo "Well done boy! You finished all the exercices. Feel free to let us your feelings about this workshop, and I hope you enjoyed learning Elm.";
echo "To dig further into the Elm world, we recommand joining the Elm slack to interact with people available there: https://elmlang.herokuapp.com/";
echo "See you soon!";