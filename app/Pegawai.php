<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Kyslik\ColumnSortable\Sortable;

class Pegawai extends Model
{
    protected $table = 'pegawai';

    protected $fillable = ['nama','jabatan','alamat','email','no_hp','foto', 'pdf'];

    use Sortable;

    public $sortable = ['nama','jabatan'];
}
