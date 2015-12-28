<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Format extends Model
{

    /**
	*
	*/
    public function book() {
        # Author has many Books
        # Define a one-to-many relationship.
        return $this->hasMany('\App\Book');
    }

    /**
	*
	*/
    public function getFormatsForDropdown() {

        $formats = $this->orderby('last_name','ASC')->get();

        $formats_for_dropdown = [];
        foreach($formats as $format) {
            $formats_for_dropdown[$format->id] = $format->last_name.', '.$format->first_name;
        }

        return $formats_for_dropdown;

    }
}
