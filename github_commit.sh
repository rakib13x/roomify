echo "===== Creation of Auto Commit ======"


echo "Select a branch to push to:"
echo "1) main"
echo "2) master"
echo "3) dev"
echo "4) Enter custom branch name"
read -p "Enter your choice (1-4): " branch_choice

case $branch_choice in
    1) branch="main" ;;
    2) branch="master" ;;
    3) branch="dev" ;;
    4) read -p "Enter your custom branch name: " branch ;;
    *) echo "Invalid choice. Defaulting to main."; branch="main" ;;
esac


read -p "Enter your Github commit message: " commit_message

# Git commands
git add .
git commit -m "$commit_message"
git push origin "$branch"

echo "✅ You have successfully committed and pushed to '$branch' branch!"