echo "=====creation of auto commit ======"

read -p "Enter your Github commit message:" commit_message

git add .
git commit -m "$commit_message"
git push origin main

echo "You have committed your message successfully"