<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Kyslik\ColumnSortable\Sortable;

class Dokter extends Model
{
    protected $table = 'dokter';

    protected $fillable = ['nama','alamat','email','no_hp','nip'];
    
    use Sortable;

    public $sortable = ['nama', 'alamat','emai'];
}
