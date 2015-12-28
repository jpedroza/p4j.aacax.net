<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class ConnectFormatsAndBooks extends Migration
{
    public function up()
    {
        Schema::table('books', function (Blueprint $table) {

			# Add a new INT field called `format_id` that has to be unsigned (i.e. positive)
            $table->integer('format_id')->unsigned();

			# This field `format_id` is a foreign key that connects to the `id` field in the `formats` table
            $table->foreign('format_id')->references('id')->on('formats');

        });
    }

    public function down()
    {
        Schema::table('books', function (Blueprint $table) {

            # ref: http://laravel.com/docs/5.1/migrations#dropping-indexes
            $table->dropForeign('books_format_id_foreign');

            $table->dropColumn('format_id');
        });
    }
}
