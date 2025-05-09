<div class="space-y-8">
    <h1 class="text-gray-800 text-3xl font-['poppins'] font-black capitalize after:content-[''] after:block after:w-10 after:h-1 after:bg-gray-800 after:rounded-full">
        Edit Profile
    </h1>

    <a href="{{ route('dashboard.admin.users.index') }}" class="btn">Back</a>

    <form class="space-y-4" wire:submit.prevent="update">
        <div class="grid sm:grid-cols-2 gap-4">
            <div class="form-control">
                <label class="label" for="name">Name</label>
                <input wire:model="name" class="input" type="text" id="name">
                @error('name') <span class="invalid">{{ $message }}</span> @enderror
            </div>

            <div class="form-control">
                <label class="label" for="email">Email</label>
                <input wire:model="email" class="input" type="email" id="email">
                @error('email') <span class="invalid">{{ $message }}</span> @enderror
            </div>

            <div class="form-control">
                <label class="label" for="phone_number">Phone Number</label>
                <input wire:model="phone_number" class="input" type="text" id="phone_number">
                @error('phone_number') <span class="invalid">{{ $message }}</span> @enderror
            </div>

            <div class="form-control">
                <label class="label" for="role">Role</label>
                <select wire:model="role" id="role" class="input">
                    @foreach ($roles as $roleItem)
                        <option value="{{ $roleItem }}">{{ ucfirst($roleItem) }}</option>
                    @endforeach
                </select>
                @error('role') <span class="invalid">{{ $message }}</span> @enderror
            </div>

            <div class="form-control">
                <label class="label" for="password">Password (Leave blank if unchanged)</label>
                <input wire:model="password" class="input" type="password" id="password">
                @error('password') <span class="invalid">{{ $message }}</span> @enderror
            </div>

            <div class="form-control">
                <label class="label" for="password_confirmation">Confirm Password</label>
                <input wire:model="password_confirmation" class="input" type="password" id="password_confirmation">
            </div>

            <div class="form-control sm:col-span-2">
                <label class="label" for="avatar">Avatar</label>
                <input wire:model="avatar" class="input" type="file" id="avatar">
                @error('avatar') <span class="invalid">{{ $message }}</span> @enderror
            </div>

            <div class="sm:col-span-2">
                @if ($avatar)
                    <p class="text-sm text-gray-500 mb-2">Preview:</p>
                    <img src="{{ $avatar->temporaryUrl() }}" class="w-32 h-32 rounded-full object-cover">
                @else
                    <p class="text-sm text-gray-500 mb-2">Current Avatar:</p>
                    <img src="{{ asset('storage/' . $user->avatar) }}" class="w-32 h-32 rounded-full object-cover">
                @endif
            </div>
        </div>

        <button type="submit" class="btn" wire:loading.attr="disabled">Update Profile</button>
    </form>

    <!-- Modal success -->
    <div x-data="{ open: false }">
        <div x-show="open" @user:updated.window="open = true" style="display: none" x-on:keydown.escape.prevent.stop="open = false" role="dialog" aria-modal="true" class="fixed inset-0 overflow-y-auto z-50">
            <div x-show="open" x-transition.opacity class="fixed inset-0 bg-black/50"></div>
            <div x-show="open" x-transition x-on:click="open = false" class="relative min-h-screen flex items-center justify-center p-4">
                <div x-on:click.stop class="relative max-w-md w-full bg-white rounded-xl p-10 overflow-y-auto space-y-4">
                    <div class="text-center space-y-4">
                        <i class='bx bx-check-circle text-8xl text-green-600'></i>
                        <h2 class="text-3xl font-bold text-gray-800">Profile Updated</h2>
                        <p class="tracking-wide text-gray-600">User data has been updated successfully.</p>
                    </div>
                    <div class="flex justify-center gap-4">
                        <a href="{{ route('dashboard.admin.users.index') }}" class="btn">View Users</a>
                        <button x-on:click="open = false" class="btn btn-outline">Close</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
