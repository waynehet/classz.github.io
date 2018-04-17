Write-Host "Copying bookmarks file"
copy-item "C:\Users\Wayne\AppData\Local\Google\Chrome\User Data\Profile 2\Bookmarks" -destination "C:\Users\Wayne\Documents\GitHub\classz.github.io\_data\Bookmarks.json"
git commit -m "Updated bookmarks file"
git push
