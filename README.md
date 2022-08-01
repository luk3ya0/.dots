# dots

some dot configuration for mac and linux

### Precondition

...

### Installation

...

### For zsh

- zsh-autocompletions
- zsh-completions
- zsh-syntax-hightlighting
- oh-my-zsh

### For bin

there are some trick script

- imgcat : special for iterm2 to preview images in ranger
- tldr : too long don't read
- mntfs : mount the ntfs-format disk

### For skhd

...

### For yabai

Since my display is about 32inch, so I need yabai to till-manage my windows not only for functionality but for aesthetics.


### Test for github text

text inline: $E = mc^2$

tikz:

$$
\begin{tikzpicture}

\def \n {5}
\def \radius {3cm}
\def \margin {8} % margin in angles, depends on the radius

\foreach \s in {1,...,\n}
{
  \node[draw, circle] at ({360/\n * (\s - 1)}:\radius) {$\s$};
  \draw[->, >=latex] ({360/\n * (\s - 1)+\margin}:\radius) 
    arc ({360/\n * (\s - 1)+\margin}:{360/\n * (\s)-\margin}:\radius);
}
\end{tikzpicture}
$$
