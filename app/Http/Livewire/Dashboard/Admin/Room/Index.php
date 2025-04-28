<?php

namespace App\Http\Livewire\Dashboard\Admin\Room;

use App\Models\Room;
use Illuminate\Support\Facades\Storage;
use Livewire\Component;
use Livewire\WithPagination;
use Illuminate\Support\Facades\DB;

class Index extends Component
{
    use WithPagination;

    public $selectedRoom;
    public $search;

    protected $queryString = [
        'search' => ['except' => ''],
    ];

    public function render()
    {
        return view('livewire.dashboard.admin.room.index', [
            'rooms' => Room::filter(['search' => $this->search])
                         ->latest()
                         ->paginate(10)
        ])->layoutData(['title' => 'Room Dashboard | Hollux']);
    }

    public function mount()
    {
        $this->selectedRoom = Room::first() ?? new Room();
    }

    public function show(Room $room)
    {
        $this->dispatchBrowserEvent('room:show');
        $this->selectedRoom = $room;
    }

    public function delete(Room $room)
    {
        $this->dispatchBrowserEvent('room:delete');
        $this->selectedRoom = $room;
    }

    public function destroy()
    {
        try {
            DB::beginTransaction();
            
            if ($this->selectedRoom->image && Storage::exists('public/'.$this->selectedRoom->image)) {
                Storage::delete('public/'.$this->selectedRoom->image);
            }
            
            $this->selectedRoom->delete();
            DB::commit();
            
            $this->dispatchBrowserEvent('room:deleted');
        } catch (\Exception $e) {
            DB::rollBack();
            $this->dispatchBrowserEvent('error', ['message' => 'Failed to delete room']);
        }
    }

    public function cancel()
    {
        $this->selectedRoom = Room::first() ?? new Room();
    }
}