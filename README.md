# Docker for OctoberCMS

1. Rename .env.example to .env.

2. Pull your project to "public" dir. If you want another dir name - change APP_PATH_HOST value in .env to match new project root dir name.

3. Set APP_PATH_CONTAINER_ASSETS in .env. Change default value to match your project theme name: /var/www/html/themes/THEME_NAME/assets. This path needs to point to the dir where your package.json is.

4. Run 
    ````$xslt
    docker-compose up --build
    ````
    
5. Run docker in background:
    ````$xslt
    docker-compose up -d
    ````

6. [OPTIONAL] Run the following command if you need to build your assets. Replace THEME_NAME by your theme directory name.
    ````$xslt
    docker-compose exec php theme build THEME_NAME
    ````