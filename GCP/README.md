Creating a simple bash project to create a simple stack in GCP

## gcloud examples
### Set our correct GCP account and projet
```console
  $ gcloud auth init
```

### List networks, subnets and running instances
```console
  $ gcloud compute networks list
  $ gcloud compute networks subnets list
  $ gcloud compute instancs list
```

## Bash script naming convention

Bash script names should have a dash '-'

Good name: my-script.sh
Not good: my_script.sh

First thing to run: 00-script.sh (create network)
Second thing to run: 01-script.sh (create subnet)
Third thing to run: 02-script.sh (create vm)

VARS should be in all CAPS
Using a VAR should be as: ${VARS}

## Functions 

- Function names should contain an underscore. 

Good name: my_function
Not good:  my-function

take input as $1 .. $2 .. $3
as in:
```console
  function my_function() {

    # Use this function to ... 
    # Example: my_function 'first' 'second' 'third thing'

    FIRST_THING=$1
    SECOND_THING=$2
    THIRD_THING=$3

    echo "First: ${FIRST_THING}"
    echo "Second: ${SECOND_THING}"
    echo "Third: ${THIRD_THING}"
}
```

## Variables
Should be in CAPS with Underscores

Good name: VAR_ONE
Not good: var-one



## Libraries should contain functions

Put library files in their own directory
```console
  mkdir lib/
   - lib/gcloud-library.sh
   - lib/intuition-robotics-bash.sh
   - lib/database-functions.sh
```

### Document your functions so people know what they do 
### and how to call them (as above).
