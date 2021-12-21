<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Groups extends Model
{
    use HasFactory;
    protected $fillable = ['name', 'description'];

    public function friends()
    {
        return $this->hasMany(Friends::class);
    }

    public function familys()
    {
        return $this->hasMany(Familys::class);
    }

    public function riwayats()
    {
        return $this->hasMany(Riwayats::class);
    }
}
