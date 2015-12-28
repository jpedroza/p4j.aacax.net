<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Book extends Model
{
    public function format() {
        # Book belongs to Format
        # Define an inverse one-to-many relationship.
        return $this->belongsTo('\App\Format');
    }

    public function user() {
        return $this->belongsTo('\App\User');
    }

    public function tags() {
        return $this->belongsToMany('\App\Tag')->withTimestamps();;
    }
	

}
