<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateStuffsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('stuffs', function (Blueprint $table) {
            $table->id();

            $table->bigIncrements('category_id');
            $table->foreign('category_id')->references('id')->on('bus__categories')->onDelete('cascade');

            $table->bigIncrements('route_id');
            $table->foreign('route_id')->references('id')->on('routes')->onDelete('cascade');

            $table->string('bus_name')->nullable();
            $table->string('designation');
            $table->string('driver_name');
            $table->string('driver_phone');
            $table->string('helper_name');
            $table->string('helper_phone');
            $table->enum('status', ['active', 'inactive']);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('stuffs');
    }
}
