arr=(👾 💻 🍀 🦮 ⛰️ 🍺 🎨 🏃🏻‍♂️ 👨🏻‍🌾 🐢 🐼 🐙 🐳 🐓 🪵 🍄 🔥 🍁 🐚 🌊 🍉 🥝 🍋 👻 🎃👁🥷 🧶🧵👑🐰 🦊 🐼 🐨 🐷 🐸 🦋 🐌 🐢 🐙 🦀 🐡 🐠 🐳 🐿 🦢 🪵  🌵 🍀 🍁 🍄 🌸 🌼 🌏 🔥 ☂️ 🌊 ❄️ 🍋 🍌 🍉 🍓 🍒 🥥 🥝 🥑 🌶 🧀 🍿 🍺 ⚽️ 🏀 🏐 🥊 🎹 🥁 🏖 🏔 ⛺️ 💻 💿 ☎️ 📟 ⏳ 🔋 🧲 🔮 🪣 📦 ❤️ 🧡 💛 💚 💙 💜 🖤 🤍 🤎 🇮🇳)
rarr=(🔥 🦋 🐌 🐢 🐙 🦀 🐡 🐠)

export currentContext=$(kubectl config current-context | sed 's/.*\///')
local current_dir='%{$fg[red]%}[%{$reset_color%}%~% %{$fg[red]%}]%{$reset_color%}'
local git_branch='$(git_prompt_info)%{$reset_color%}'

RS="%{$fg[green]%}"
RE="%{$reset_color%}"

PROMPT="%(?,%{$fg[red]%}┌★彡${RE}${RS}🇸​🇮 🇬 ​🇲 ​🇦​ 🄻🄴🄽🄳🄵🄾🅄🄽🄳🅁🅈💻🎮🎼${RE}${arr[RANDOM%${#arr[@]} + 1]} ★─╼${current_dir}%{$reset_color%} ${git_branch}
%{$fg[red]%}└──{$currentContext}──╼${arr[RANDOM%${#arr[@]} + 1]}%{$reset_color%} ,%{$fg[red]%}┌─╼${current_dir}%{$reset_color%} ${git_branch} ${return_status}
%{$fg[red]%}└╼ %{$reset_color%} "

# current time with milliseconds
current_time() {
   echo "%*"
}

RPROMPT='%(?.✔.%{$fg[red]%}✘%f) $(current_time):${rarr[RANDOM%${#rarr[@]} + 1]}'
# Function to get a random element from the arr array
get_random_arr_element() {
    echo ${arr[$((RANDOM % ${#arr[@]}))]}
}

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[red]%}["
ZSH_THEME_GIT_PROMPT_SUFFIX="] %{$reset_color%}"
