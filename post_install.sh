logger "install.sh was just launched"
thisscriptname=$(basename "$0")
sed -i "/$thisscriptname/d" /root/.bashrc

# Ask if you want to proceed with fast install or stop
while true; do
  read -rp "Do you want to execute the fast installer script? (y/n): " answer
  case "${answer,,}" in
    y)
      echo "Running the script..."
      break
      ;;
    n)
      echo "Exiting."
      exit 0
      ;;
    *)
      echo "Invalid answer. Please enter 'y' or 'n'."
      ;;
  esac
done

echo "hey, it worked!"
