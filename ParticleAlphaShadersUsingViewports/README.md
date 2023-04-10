# ParticleAlphaShadersUsingViewports

This small project show cases how you could use viewports, to interpret one particle system as a single big texture.
This is useful for effects where you want to for example merge particles based on their overlap (similar to metaballs).

For a preview see below:

![Godot_v4 0 2-stable_win64_e919xZZdsa](https://user-images.githubusercontent.com/18115780/230944079-adf5f2b3-a08d-44a9-a1d2-ce76d949f643.gif)

The main layout is the following:

A sprite to hold the texture of a viewport.
(This sprite will need to hold the shader where you want to use the colors produced by the particle system)

The viewport holding the particle system.

And the camera should (or can) hold a camera to center the viewport on it.

In editor the camera in the viewport will not be active. Because of this in the demo I manually positioned the particle system so it has the same position as if it was centered by the camera.

The viewport needs to be sufficiently big, so no particle are cut off, this is similar to the visibility rect of the particle system. You also need to enable transparency if you want to use it.
Its best to also make the viewport as small as possible, so if particles mostly move down, add an offset to both the particle system and the camera.

As now the particle system is in a new viewport, you cannot move it by default having the effect of relative movement you might normally have.
In this project there is a simple demo where the movement of a player (the velocity) gets forwarded to the particle system, reproducing this effect. You now need a big enough viewport once again.