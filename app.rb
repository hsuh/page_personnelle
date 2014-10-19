require 'sinatra/base'
require 'sinatra/assetpack'
require 'sinatra/activerecord'
require 'haml'
require 'sass'
require './config/environments'
require './lib/profile'
require './models/profile.rb'


class App < Sinatra::Base
  set :database_file, 'config/database.yml'

  register Sinatra::AssetPack
  register Sinatra::ActiveRecordExtension
  assets do

   js  :application, [
     '/js/form.js'
   ]

   css :application, [
     'stylesheets/reset.css',
     'stylesheets/main.css',
     'css/header.css',
     'css/body_content.css',
     'css/bootstrap.min.css',
     'bootflat/css/bootflat.css'
   ]
   css_compression :sass
  end

  get '/' do
    @profile = Profile.first

    haml :index, :layout => :main
  end

  get '/primes' do
    @profile = Profile.first

    limit = 100
    if params['limit']
      @sum = Primes.sum_to(params['limit'].to_i)
    else
      @sum = Primes.sum_to(limit)
    end

    if request.xhr?
      'The sum is ' + @sum.to_s + '!'
    else
      haml :primes, :layout => :main
    end
  end

  #let me see everything in text
  #in raw-ish form
  get '/raw' do
    @profile = Profile.first
    haml :raw, :layout => :main
  end
end
