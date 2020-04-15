<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Kyslik\ColumnSortable\Sortable;
class Pasien extends Model
{
    protected $table='pasien';

    protected $fillable = ['nama','alamat','kecamatan','no_hp','jenis'];
    
    use Sortable;

    public $sortable = ['nama', 'alamat'];


}
