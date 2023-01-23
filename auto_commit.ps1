Clear-Host
Write-Host "Copying bookmarks file"
# copy-item "C:\Users\Wayne\AppData\Local\Google\Chrome\User Data\Profile 2\Bookmarks" -destination "C:\Users\Wayne\Documents\GitHub\classz.github.io\_data\Bookmarks.json"
copy-item "C:\Users\wayne\AppData\Local\Vivaldi\User Data\Default\Bookmarks" -Destination "C:\Users\wayne\OneDrive\Code\classz.github.io\_data\Bookmarks.json"
git status
git add "C:\Users\Wayne\Documents\GitHub\classz.github.io\_data\Bookmarks.json"
$commit_msg = "Updated bookmarks file " + (get-date -f MM-dd-yyyy_HH_mm_ss)
git commit -m $commit_msg
git pull
git push
git status