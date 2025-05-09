<?php

namespace App\Http\Livewire\Dashboard\User;

use Livewire\Component;
use App\Models\User; // Pastikan model User sudah diimport
use Illuminate\Support\Facades\Hash; // Jika kamu ingin mengubah password pengguna

class Edit extends Component
{
    public $user;
    public $name;
    public $email;
    public $password;

    // Menginisialisasi data pengguna untuk form
    public function mount($userCode)
    {
        $this->user = User::where('code', $userCode)->firstOrFail(); // Ambil data berdasarkan 'code'
        $this->name = $this->user->name;
        $this->email = $this->user->email;
    }

    // Menyimpan data pengguna yang sudah diubah
    public function update()
    {
        // Validasi input
        $this->validate([
            'name' => 'required|string|max:255',
            'email' => 'required|email|max:255|unique:users,email,' . $this->user->id,
            'password' => 'nullable|min:8|confirmed', // Optional password, jika ingin merubah
        ]);

        // Update data pengguna
        $this->user->name = $this->name;
        $this->user->email = $this->email;

        // Jika password diubah
        if ($this->password) {
            $this->user->password = Hash::make($this->password);
        }

        $this->user->save();

        session()->flash('message', 'User updated successfully!');

        // Redirect atau tampilkan pesan
        return redirect()->route('dashboard.users.index');
    }

    public function render()
    {
        return view('livewire.dashboard.user.edit');
    }
}
