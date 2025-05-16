CXX = g++
CFLAGS = -Wall -std=c++11 -Iinclude -Iinclude/imgui
LDFLAGS = -lglfw -lGL
SRC = src/glad.c src/main.cpp src/stb_image.cpp \
      include/imgui/imgui.cpp include/imgui/imgui_draw.cpp include/imgui/imgui_tables.cpp include/imgui/imgui_widgets.cpp \
      include/imgui/imgui_impl_glfw.cpp include/imgui/imgui_impl_opengl3.cpp
TARGET = myopenglapp

$(TARGET): $(SRC)
	$(CXX) $(CFLAGS) $^ -o $@ $(LDFLAGS)

run: $(TARGET)
	./$(TARGET)

clean:
	rm -f $(TARGET)

.PHONY: all run clean