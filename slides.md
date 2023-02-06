---
# try also 'default' to start simple
theme: seriph
# apply any windi css classes to the current slide
class: "text-center"
# https://sli.dev/custom/highlighters.html
highlighter: shiki
# show line numbers in code blocks
lineNumbers: false
# some information about the slides, markdown enabled
info: |
  ## Abakus Linux og terminal kurs

  [abaus.no](https://abakus.no/events/3370)

  Av Ludvig Hozman

# persist drawings in exports and build
drawings:
  persist: false
# page transition
transition: slide-left
# use UnoCSS
css: unocss
layout: intro
---

# Linux + Terminalen

Hvorfor bruke GNU/Linux
og hvordan bli en racer i terminalen

<br>

Ludvig Hozman - Februar 2023

<div class="abs-br m-6 flex gap-2">
  <button @click="$slidev.nav.openInEditor()" title="Open in Editor" class="text-xl slidev-icon-btn opacity-50 !border-none !hover:text-white">
    <carbon:edit />
  </button>
  <a href="https://github.com/LudvigHz/abakus-linux-terminal-kurs" target="_blank" alt="GitHub"
    class="text-xl slidev-icon-btn opacity-50 !border-none !hover:text-white">
    <carbon-logo-github />
  </a>
</div>

<!--
The last comment block of each slide will be treated as slide notes. It will be visible and editable in Presenter Mode along with the slide. [Read more in the docs](https://sli.dev/guide/syntax.html#notes)
-->

---
transition: fade-out
---

# Agenda

1. 🐧 Litt om Linux. Hva er det og hvorfor skal du bry deg?
2. 👶 Hvordan komme i gang med linux
3. <logos-terminal /> Terminalen, hva og hvorfor
4. <logos-bash-icon /> Tips og triks til terminalen


<br>
<br>

> Det blir oppgaver underveis, så sitt klar! (Terminal oppe)

<br>
<br>
<br>

### Slides: [aba.wtf/termkurs](https://aba.wtf/termkurs)

<style>
h1 {
  background-color: #2B90B6;
  background-image: linear-gradient(45deg, #4EC5D4 10%, #146b8c 20%);
  background-size: 100%;
  -webkit-background-clip: text;
  -moz-background-clip: text;
  -webkit-text-fill-color: transparent;
  -moz-text-fill-color: transparent;
}
</style>

<!--
Skal snakke litt om hva Linux er, hvorfor skal du bry deg om den rare greia ingen bruker?

Så litt tips til hvordan komme i gang

Deretter skal vi gå over til terminalen. Vi kommer til å gå gjennom litt basics til å begynne med,
før vi 
-->

---
transition: slide-left
layout: cover
---

# GNU/Linux

---
layout: center
---

## Average linux user?


![](/southpark-gamer.jpg)


<!-- 
noen av dere har kanskje ikke hørt om Linux før? (Håndsopprekning)

Hvor mange har hørt om det?
Hvor mange har brukt det før?
-->

---
layout: center
---

## I beg to differ!

![](/chad-arch-user.gif)


---

# Så, hva er denne nerde-greia egt?

- Linux (GNU/Linux) er et operativsystem akkurat som Windows eller macOS.
- Forskjellen er at det er fullstendig **open-source** og "free software"
- Ikke ett selskap som eier det. Består av mange ulike deler satt sammen
- Null spyware
- Null ads
- Null profit-hunting
- Liker du ikke noe? Bruk noe annet!


---

# Hvorfor bry deg?

<v-clicks>

- Linux kjører på servere verden over!
  - <mdi-cloud /> Clouden drives av Linux
  - Og andre servere, svitsjer, rutere mm  (for dere Komtekere)
  - Alle top 500 superdatamaskiner
- <logos-android-icon /> 85% av mobiltelefoner kjører Linux
- <mdi-bug class="color-red"/> Kan du Linux så gjør det at du skjønner hva som skjer når noe går galt
  - <twemoji-1st-place-medal /> du kan utnytte ekspertise til å lage bedre produkter
- <twemoji-man-teacher /> Det brukes mye i læring og profesjonelt
  - <logos-stackoverflow-icon />: 40% av profesjonelle utviklere bruker Linux-basert OS
- <mdi-security /> Mye brukt i sikkerhetsverden

</v-clicks>


<!--
Cloud: Som vi vet er clouden ganske hot for tiden, og det medfører at det er nesten garantert at
dere kommer til å måtte ha noe med linux å gjøre en gang i nær fremtid.
-->

---
layout: two-cols
---

# Kort om FOSS (**F**ree & **O**pen **S**ource **S**oftware)

- Betyr at du har frihet med programvaren. Du kan gjøre hva du vil[^1]
- All kode er tilgjengelig på internett. Du kan se hva som faktisk skjer i operativsystemet ditt
- Alle som vil kan bidra!
- Og ja, det er gratis (Ikke gitt med FOSS!)


<br>
<br>


[^1]: [Med noen krav og unntak](https://choosealicense.com/licenses/gpl-2.0/)


::right::

![](https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fi.imgur.com%2FNbtfWXT.jpg&f=1&nofb=1&ipt=073b3526ccae5b7b1a8728daeefbfaaf72957b0cd86efc8a59aa50883590b244&ipo=images)

![](https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fiblnews.org%2Fwp-content%2Fuploads%2F2019%2F09%2Fstallman.jpg&f=1&nofb=1&ipt=e65a4c8c09247ecefd7a0a91fbd89cf0c6f2b24c29670f3bb4067c5559b338b3&ipo=images)


---

## Det gjør at det finnes mange "varianter"


![KDE](https://www.cloudhostnews.com/wp-content/uploads/2022/05/KDE-Plasma-5.25-Beta-Now-Available-to-Download.png)

---
layout: image
image: https://res.cloudinary.com/canonical/image/fetch/f_auto,q_auto,fl_sanitize,w_2557,h_1321/https://assets.ubuntu.com/v1/acdf946a-Screenshot+from+2022-04-18+13-05-17.png
---



---
layout: image
image: /rice.png
class: "text-right"
---
## Kan også lage din egen!


---

# Hvordan komme i gang med Linux?

> Prøv det!

<v-clicks>

1. <mdi-usb-flash-drive /> Finn en USB minnepenn, kan eks. anskaffes fra Tihlde-kontoret
2. <logos-linux-mint /> Velg en distro[^2]
4. <fxemoji-lightningmood /> Flash linux på USB
3. Plugg inn minnepenn
4. Boot inn i minnepenn (restart PC -> F10 -> USB)
5. BAM! Great success
<br>
6. Og om du føler deg dristig, installer ved siden av <logos-microsoft-windows class="text-xl" />

</v-clicks>

<br>

<v-click>

> TIP: På koseprogg kan du finne masse folk som er behjelpelige med å prøve det ut

</v-click>


[^2]: Anbefalinger: [Linux mint](https://linuxmint.com), [Ubuntu](https://ubuntu.com/desktop),
    [Fedora](https://getfedora.org), [Pop!_OS](https://system76.com/pop)

---
layout: section
---

# Terminalen og how-to linux

> Noe her kommer til å være rettet mer mot Linux (WSL gjelder fortsatt!)

Terminalen er den primære måten vi jobber med systemet vårt på. Linux er laget terminal-first, med
de ulemper det medfører.

---

# Motivasjon

"Hvis du vet hva du skal gjøre, er det kjappere å bare si nøyaktig det til systemet!"

<v-clicks>

- <mdi-toolbox class="color-red"/> Det finnes verktøy for det meste i terminalen. (Programmerere er late, og det er vanskelig å lage GUI)
- <mdi-speedometer class="color-red-600"/> Hvis du kan gjøre alt i terminalen trenger du aldri å åpne et annet program
- <mdi-server/> Det blir lettere å jobbe med servere og clouden
- <mdi-arrow-up /> Du kan installere verktøy, lage en nettside og deploye til clouden alt uten å 
  forlate komforten av terminalen!
- <twemoji-smiling-face-with-sunglasses /> Du ser sykt kul ut når folk går forbi på A3
- <twemoji-shushing-face /> Du får lettere godkjent øvinger
- <twemoji-racing-car /> Du kan bli **veldig** kjapp!

</v-clicks>


---
layout: center
---

![](https://i.pinimg.com/originals/c8/76/fd/c876fd3ffa4cf36bc8534abc37611b0a.png)


---

# Hva ser vi på?


<div grid="~ cols-2 gap-2" m="-t-2">

![](/shell.png)

<div>

- En terminal er bare en applikasjon som viser og lar deg interagere med tekst
- Vi bruker og skriver i et _shell_
  - kanskje hørt om Bash og zsh?


### Basics:

- `ls` list filer
- `cd` change directory
- `mkdir` make directory
- `cat` les filer
- `mv` flytt på ting


</div>

## Demo

</div>


---

# Shellet <mdi-terminal />

Posh, Zsh, Bash, Fish, Sh ???

- Alle disse er ulike _shell_. Et shell er programmet som lar deg skrive tekst input, kjører programmer,
  og skriver ut outputen.
- <logos-bash-icon /> De fleste Unix shell (Linux/macOS) er standardiserte (alle funker på samme måte)
- <mdi-powershell /> Powershell (windows) er eksempel på et veldig annerledes shell
  - Men fortsatt veldig kraftig!
  - _Vi fokuserer på bash/zsh siden det er standarden_


---

# Shell basics!

101: Tekst inn -> tekst ut

Vi kan ta _output_ fra et program, og gi det til et annet!

- Piping: `cat storfil.txt | grep "nålen"`
- Vi _befinner_ oss alltid et sted. Tenk: filutforsker <mdi-folder color="cyan" />
  - Programmer vil ofte gjøre ting med utgangspunkt i mappen du befinner deg i
- Argumenter: `program -vab --option1 --etternavn=Hozman Ludvig`
  - > TIP: Gode programmer har tab-completion (bygget inn eller mulig å anskaffe)


---

<div class="task">

## Oppgave!

Med hjelp av pipe `|` og flere kommandoer, finn ut hvor mange kurs det er i abakus fra og med i dag.

Du kan finne data med alle kurs her: ("eventType": "course" angir kurs)

`https://lego.abakus.no/api/v1/events/?date_after=2023-02-07`

TIPS:
- `curl` kan gjøre nettverkskall
- `jq` kan formatere JSON
- `grep` kan søke i tekst
- `wc` kan telle ord og linjer (innebygd i shellet)

</div>

<v-click>

## Fasit

```zsh
$ curl "https://lego.abakus.no/api/v1/events/?date_after=2023-02-08" -s | jq | grep course | wc -l
7
```

</v-click>


---

# Package managers

> Også en av de største fordelene med Linux!

Package managers lar deg installere programmer på PCen din, enkelt og greit

På linux og mac kan du installere det aller meste du kan trenge [**demo**]


<v-click>

<div class="task">

# Oppgave! (~10 min)

Installer programmene `neofetch` og `hollywood` og prøv de ut i terminalen.

Tips: 

- WSL/Ubuntu: `apt install`.
- macOS: `brew install` [^3]



</div>

[^3]: [Installer homebrew om du ikke har det allerede](https://brew.sh) (Mac only)

</v-click>



---
class: text-center
---

# Anbefaling:

## Bruk package managers til alt!

(så langt det lar seg gjøre)

<br>

> Gjelder både linux og macOS

---

### Keyboard Shortcuts

|                                                    |                             |
| -------------------------------------------------- | --------------------------- |
| <kbd>Ctrl</kbd>+<kbd>R</kbd>                       | Søk i historikken           |
| <kbd>Ctrl</kbd>+<kbd>C</kbd>                       | Avbryt det du gjør nå       |
| <kbd>Ctrl</kbd>+<kbd>D</kbd>                       | Exit shellet ditt           |
| <kbd>Ctrl</kbd>+<kbd>shift</kbd>+<kbd>C</kbd>      | Kopier                      |
| <kbd>Ctrl</kbd>+<kbd>shift</kbd>+<kbd>V</kbd>      | Lim inn                     |
| <kbd>Tab</kbd>                                     | Autocomplete (den nyttigste av alt!) |


Er du usikker? Spam <kbd>Tab</kbd>

---
layout: image
image: /mashtab.jpg
---


---

# Tip 2


## Bruk git i alle skole prosjekter og gjør mest mulig i terminalen


<br>

<v-click>

<div class="task">

## Oppgave! Finn et skole prosjekt som ikke er i git og lag et nytt repo (~15 min)

_Ikke lov til å bruke file manager!_

**TIP**: `git init`


_hvis du er ferdig med den over_: Installer GitHub sitt CLI[^ghcli] og push repoet ditt til github

TIP: `gh repo create`

</div>

</v-click>

[^ghcli]: <https://github.com/cli/cli> ________ Ubuntu/WSL: [Se her](https://github.com/cli/cli/blob/trunk/docs/install_linux.md#debian-ubuntu-linux-raspberry-pi-os-apt)

---

# Andre kule saker

- `tldr` (Denne er gull!)
- `grep` (`ripgrep` er en kulere og kjappere grep)
- `curl`, `wget`
- `less`
- og masse mer

DEMO?


---
layout: image-right
image: https://i.redd.it/191gvl7ldos91.png
---

# Rice [^rice]

En litt mer komfortabel terminal!

1. `zsh` (installeres på vanlig måte)
2. [oh-my-zsh](https://ohmyz.sh/)
3. zsh plugins: <https://github.com/zsh-users>
4. `fzf`

Valgfritt men anbefalt:

- `autojump`
- `exa`
- En bedre terminal
  - Windows Terminal (windows store)
  - MacOS: Iterm2
  - Jeg anbefaler: kitty (mac/Linux)


[^rice]: <https://reddit.com/r/unixporn>

---
layout: section
---

# Mer advanced tips!

---

# Aliaser

Lag aliaser for vanlige kommandoer! Time is money <twemoji-money-with-wings animate-pulse />!

```zsh
alias gd="git diff"
alias gcm="git checkout master"
```

> Putt dette i `~/.zshrc` for å gjøre det permanent

Du kan også få mange aliaser fra `oh-my-zsh`! Se docs for hvordan enable

---

# Funksjoner

zsh og bash er fullverdige språk i seg selv! Det betyr at du har variabler, funksjoner og mer!

DEMO

```zsh
function foo() {
  mkdir foo
  cd foo
  echo $(git status) > status.txt
  cat status.txt
}
```


---
layout: center
class: text-center
---

# Spørsmål?

---
layout: center
class: text-center
---

# Takk for meg!
