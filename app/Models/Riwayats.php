<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Riwayats extends Model
{
    use HasFactory;
    protected $guarded = ['id'];

    public function friends()
    {
        return $this->belongsTo(Friends::class);
    }

    public function familys()
    {
        return $this->belongsTo(Familys::class);
    }

    public function groups()
    {
        return $this->belongsTo(Groups::class);
    }
}
