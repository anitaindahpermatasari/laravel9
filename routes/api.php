<?php

use App\Http\Controllers\API\CobaController;
use App\Http\Controllers\API\FamilysController;
use App\Http\Controllers\API\GroupsController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::get('', [App\Http\Controllers\API\CobaController::class, 'home']);
Route::resources([
    'friends' => App\Http\Controllers\CobaController::class,
    'familys' => App\Http\Controllers\FamilysController::class,
    'groups' => App\Http\Controllers\GroupsController::class,
]);
