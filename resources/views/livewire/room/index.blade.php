<!-- <main class="mt-28 mb-20">
    <div class="container px-8 mx-auto space-y-10">
        <div class="space-y-2">
            <h1 class="sm:text-5xl text-gray-800 text-3xl font-['poppins'] font-black capitalize after:content-[''] after:block after:w-10 after:h-1 after:bg-gray-800 after:rounded-full">Room Choices For You</h1>
            <p class="tracking-wide text-gray-600 sm:text-base text-sm">We have a choice of {{ $rooms->count() }} different room types that you can choose according to your needs</p>
        </div>
        <div class="grid lg:grid-cols-3 sm:grid-cols-2 grid-cols-1 gap-8">
            @forelse ($rooms as $room)
                <div class="space-y-4">
                    <div class="aspect-[8/6]  w-full rounded-tl-2xl rounded-br-2xl overflow-hidden">
                        <img class="w-full h-full object-cover hover:scale-110 transition-all duration-300" src="{{ asset('storage/' . $room->image) }}" alt="{{ $room->name }}">
                    </div>
                    <div class="bg-gray-200 text-sm text-gray-600 flex gap-x-4 gap-y-2 justify-center rounded-tr-lg rounded-bl-lg py-2 px-4">
                        <div class="flex items-center gap-1 text-gray-800">
                            <i class='bx bx-show'></i>
                            <span class="text-sm capitalize">{{ $room->views }}</span>
                        </div>
                        <div class="flex items-center gap-1 text-gray-800">
                            <i class='bx bx-star'></i>
                            <span class="text-sm capitalize">{{ $room->rate }}</span>
                        </div>
                        <div class="flex items-center gap-1 text-gray-800">
                            <i class='bx bx-chat'></i>
                            <span class="text-sm capitalize">{{ $room->reviews->count() }}</span>
                        </div>
                        <div class="flex items-center gap-1 text-gray-800">
                            <i class='bx bx-money'></i>
                            <span class="text-sm capitalize">${{ $room->price }}/night</span>
                        </div>
                    </div>
                    <div class="space-y-2">
                        <div class="flex justify-between items-center">
                            <h3 class="font-bold font-['poppins'] text-lg text-gray-800">{{ $room->name }}</h3>
                            <a href="{{  route('rooms.show', $room->code) }}" class="flex items-center gap-1 group">
                                <span class="text-sm text-gray-600 group-hover:underline">Learn more</span>
                                <i class='bx bx-right-arrow-alt'></i>
                            </a>
                        </div>
                        <p class="tracking-wide text-gray-600 sm:text-base text-sm break-words">
                            {{ $room->description }}
                        </p>
                    </div>
                    <span class="text-sm text-gray-600 bg-gray-200 py-2 text-center rounded-tr-xl rounded-bl-xl block">{{ (int) $room->total_rooms -  (int) $room->reservations->count()}} rooms available</span>
                </div>
            @empty
                <p class="tracking-wide text-gray-600 sm:text-base text-sm">There is nothing here</p>
            @endforelse
        </div>
    </div>
</main> -->





<main class="mt-28 mb-20">
    <div class="container px-8 mx-auto space-y-10">
        <div class="space-y-2">
            <h1 class="sm:text-5xl text-gray-800 text-3xl font-['poppins'] font-black capitalize after:content-[''] after:block after:w-10 after:h-1 after:bg-gray-800 after:rounded-full">Room Choices For You</h1>
            <p class="tracking-wide text-gray-600 sm:text-base text-sm">We have a choice of {{ $rooms->count() }} different room types that you can choose according to your needs</p>
        </div>
        
        <!-- Type Filter (Optional) -->
        <div class="flex gap-4 overflow-x-auto pb-2">
            <button class="px-4 py-2 rounded-full bg-gray-200 text-gray-800 whitespace-nowrap" data-filter="all">All Types</button>
            <button class="px-4 py-2 rounded-full bg-gray-200 text-gray-800 whitespace-nowrap" data-filter="villa">Villa</button>
            <button class="px-4 py-2 rounded-full bg-gray-200 text-gray-800 whitespace-nowrap" data-filter="kos">Kos</button>
            <button class="px-4 py-2 rounded-full bg-gray-200 text-gray-800 whitespace-nowrap" data-filter="rumah">Rumah</button>
        </div>

        <div class="grid lg:grid-cols-3 sm:grid-cols-2 grid-cols-1 gap-8">
            @forelse ($rooms as $room)
                <div class="space-y-4" data-type="{{ $room->type }}">
                    <!-- Room Type Badge -->
                    <div class="flex justify-between items-center">
                        <span class="px-3 py-1 rounded-full text-xs font-medium 
                            @if($room->type === 'villa') bg-blue-100 text-blue-800
                            @elseif($room->type === 'kos') bg-green-100 text-green-800
                            @else bg-purple-100 text-purple-800
                            @endif">
                            {{ ucfirst($room->type) }}
                        </span>
                        <span class="text-sm text-gray-500">{{ $room->available }} available</span>
                    </div>
                    
                    <div class="aspect-[8/6] w-full rounded-tl-2xl rounded-br-2xl overflow-hidden">
                        <img class="w-full h-full object-cover hover:scale-110 transition-all duration-300" src="{{ asset('storage/' . $room->image) }}" alt="{{ $room->name }}">
                    </div>
                    
                    <div class="bg-gray-200 text-sm text-gray-600 flex gap-x-4 gap-y-2 justify-center rounded-tr-lg rounded-bl-lg py-2 px-4">
                        <div class="flex items-center gap-1 text-gray-800">
                            <i class='bx bx-show'></i>
                            <span class="text-sm capitalize">{{ $room->views }}</span>
                        </div>
                        <div class="flex items-center gap-1 text-gray-800">
                            <i class='bx bx-star'></i>
                            <span class="text-sm capitalize">{{ $room->rate }}</span>
                        </div>
                        <div class="flex items-center gap-1 text-gray-800">
                            <i class='bx bx-chat'></i>
                            <span class="text-sm capitalize">{{ $room->reviews->count() }}</span>
                        </div>
                        <div class="flex items-center gap-1 text-gray-800">
                            <i class='bx bx-money'></i>
                            <span class="text-sm capitalize">${{ $room->price }}/night</span>
                        </div>
                    </div>
                    
                    <div class="space-y-2">
                        <div class="flex justify-between items-center">
                            <h3 class="font-bold font-['poppins'] text-lg text-gray-800">{{ $room->name }}</h3>
                            <a href="{{ route('rooms.show', $room->code) }}" class="flex items-center gap-1 group">
                                <span class="text-sm text-gray-600 group-hover:underline">Learn more</span>
                                <i class='bx bx-right-arrow-alt'></i>
                            </a>
                        </div>
                        <p class="tracking-wide text-gray-600 sm:text-base text-sm break-words">
                            {{ $room->description }}
                        </p>
                    </div>
                </div>
            @empty
                <p class="tracking-wide text-gray-600 sm:text-base text-sm">There is nothing here</p>
            @endforelse
        </div>
    </div>
</main>

<!-- JavaScript for Filtering -->
<script>
document.querySelectorAll('[data-filter]').forEach(button => {
    button.addEventListener('click', function() {
        const filter = this.dataset.filter;
        document.querySelectorAll('[data-type]').forEach(room => {
            if (filter === 'all') {
                room.style.display = 'block';
            } else {
                room.style.display = room.dataset.type === filter ? 'block' : 'none';
            }
        });
        
        // Update active button
        document.querySelectorAll('[data-filter]').forEach(btn => {
            btn.classList.remove('bg-gray-800', 'text-white');
            btn.classList.add('bg-gray-200', 'text-gray-800');
        });
        this.classList.remove('bg-gray-200', 'text-gray-800');
        this.classList.add('bg-gray-800', 'text-white');
    });
});
</script>