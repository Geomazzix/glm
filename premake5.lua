--Glm external
project "Glm"
	kind "None"
	language "C++"
	cppdialect "C++20"
	architecture "x86_64"

	--Add files to the predefined filter.
	files {
		("**.h"),
		("**.inl"),
		("**.cpp"),
		("**.c")
	}
	removefiles {
		"**test/**",
		"glm/detail/glm.cpp"
	}

	filter "Debug"
		defines { "DEBUG" }
		symbols "on"
		optimize "off"
	filter{}

	filter "Release"
		defines { "NDEBUG" }
		symbols "off"
		optimize "Full" 
	filter{}