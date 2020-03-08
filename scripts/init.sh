
#!/usr/bin/env sh

script_path="$( cd "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )/..";
storage="$script_path/config";

echo "Hi mate :) Can you type your pseudo please ? ";
read pseudo;
echo "";

# Save the pseudo and create a unique ID
touch "$storage";
echo "pseudo=\"$pseudo\"" >> "$storage";
echo "id=$(uuidgen)" >> "$storage";

echo "Okay $pseudo, welcome to the Elm Workshop.";
echo "The workshop works with steps, and each steps should be a little bit harder to solve than the previous one.";
echo "Each step must be validated using this script. It will test, send and display the result to this page: https://nicolasguilloux.eu/pouet";
echo "All information are stored within the config file. We only track your progression. ;)";
echo "";

echo "You may now enter into the Step 01 folder, and open the Main.elm file with your favorite editor.";
echo "We recommand Virtual Studio Code, as it is free and have enough plugins to make your life easier.";
echo "You may now follow the instructions in the file, and remember to execute this script to test your solutions.";
echo "You are now ready to go! Good luck! :) ";