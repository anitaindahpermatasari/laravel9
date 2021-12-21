<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Familys extends Model
{
    use HasFactory;
    protected $fillable = ['first_name', 'last_name', 'number_phone', 'address', 'email'];

    public function groups()
    {
        return $this->belongsTo(Groups::class);
    }

    public function riwayats()
    {
        return $this->hasMany(Riwayats::class);
    }
}
