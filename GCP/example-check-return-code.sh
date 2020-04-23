
function check_return_code_example() {

   INSTANCE_NAME=$1
   
   gcloud compute instances list &> /dev/null
   # Check the status of the command above, did it work? 
   if [ "$?" != 0 ]; then
     echo "Bad news, command failed."
   else
     echo "Good news, all is well."
   fi
}

check_return_code_example "instance-3"
