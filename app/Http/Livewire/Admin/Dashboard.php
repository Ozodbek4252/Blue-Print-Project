<?php

namespace App\Http\Livewire\Admin;

use App\Models\Data;
use Livewire\Component;

class Dashboard extends Component
{
    public $data;

    public function mount()
    {
        $this->data = Data::all();
    }

    public function render()
    {
        return view('admin.index')->layout('layouts.admin');
    }
}
