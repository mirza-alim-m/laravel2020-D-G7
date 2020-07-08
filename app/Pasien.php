<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Kyslik\ColumnSortable\Sortable;
class Pasien extends Model
{
    protected $table='pasien';

    protected $guarded = [];
    
    use Sortable;

    public $sortable = ['nama', 'alamat'];


}
