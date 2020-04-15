<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Kyslik\ColumnSortable\Sortable;

class Kamar extends Model
{
    
     protected $table = 'kamars'; 

    protected $fillable = ['nama','ruangan','kelas'];
    
    use Sortable;

    public $sortable = ['nama', 'ruangan','kelas'];
}
