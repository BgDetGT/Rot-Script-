--[[
	SKRIP PENGIRIM (SENDER)
	
	TEMPATKAN SKRIP INI:
	Di dalam SETIAP Tombol Emote (misal: "AnimatedGirlSticker")
	
	Skrip ini akan mengambil nama tombolnya sendiri dan mengirimkannya
	sebagai ID emote.
]]

-- --- Referensi ---
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local button = script.Parent

-- Ambil NAMA tombol ini. Ini akan menjadi ID emote kita.
local emoteName = button.Name 

-- Cari BindableEvent
local playEmoteEvent = ReplicatedStorage:WaitForChild("PlayEmoteAnimation")

-- --- Koneksi Event ---
button.MouseButton1Click:Connect(function()
	-- Saat tombol diklik, tembakkan event DAN KIRIM NAMA TOMBOL
	print("Tombol '" .. emoteName .. "' Ditekan. Menembakkan event...")
	playEmoteEvent:Fire(emoteName)
end)
