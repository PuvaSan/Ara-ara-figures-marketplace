# 📚 Ara-ara

Anime figure buyer/selling market place.

![Ara-ara_demo](https://github.com/user-attachments/assets/08b671ed-e8bf-48dc-93d4-05fb46e2dc69)


<br>

App home: https://ara-ara-6c2b168380d4.herokuapp.com/
   

## Getting Started
### Setup

Install gems
gem "bootstrap", "~> 5.2"
gem "devise"
gem "autoprefixer-rails"
gem "font-awesome-sass", "~> 6.1"
gem "simple_form", github: "heartcombo/simple_form"
gem "sassc-rails"
gem "geocoder"
gem 'ffi', '1.16.3'
```

### ENV Variables
Create `.env` file
```
touch .env
```
Inside `.env`, set these variables. For any APIs, see group Slack channel.
```
CLOUDINARY_URL=your_own_cloudinary_url_key
```

### DB Setup
```
rails db:create
rails db:migrate
rails db:seed
```

### Run a server
```
rails s
```

## Built With
- [Rails 7](https://guides.rubyonrails.org/) - Backend / Front-end
- [Stimulus JS](https://stimulus.hotwired.dev/) - Front-end JS
- [Heroku](https://heroku.com/) - Deployment
- [PostgreSQL](https://www.postgresql.org/) - Database
- [Bootstrap](https://getbootstrap.com/) - Basic Styling
— [SCSS](https://getbootstrap.com/) — Styling
- [Figma](https://www.figma.com) — Prototyping


## Acknowledgements
- For those who have hoards of Anime Figures stacked up from crane game addictions now have a place to offload their collection.

## Team Members
- [Brian Inphouva](https://www.linkedin.com/in/brian-inphouva/)
- [Ayano Fujita] (https://www.linkedin.com/in/ayano-fujita-872a03297/)

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

## License
This project is licensed under the MIT License

