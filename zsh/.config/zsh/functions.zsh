#!/usr/bin/env zsh

# PHP

function sphp {
    sudo dnf module switch-to php:remi-$1
}

function _sphp {
    compadd $(dnf module list php | grep "remi-[0-9].[0-9]" | awk '{ gsub("remi-","",$2); print $2 }')
}

compdef _sphp sphp

# Miscellaneous

function lorem {
    echo "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse posuere ipsum fermentum quam posuere, nec tempor orci congue. Vestibulum egestas pretium tellus eget vestibulum. Nunc sit amet auctor purus, quis aliquam leo. Donec ut risus sapien. Donec vel euismod ipsum, quis sagittis magna. Maecenas vitae consectetur eros, in vulputate lorem. Mauris nec massa luctus, fringilla massa ut, dapibus lacus. Suspendisse potenti. Curabitur tellus nunc, lacinia in sagittis vitae, ultricies vestibulum erat. Phasellus vitae tempor erat. Pellentesque aliquet metus imperdiet, rutrum nibh congue, malesuada ligula. Vivamus ut est sed quam vulputate fermentum ac id purus. Nullam mollis massa non nisl mattis, in ultrices nunc consequat." | xclip -selection clipboard 
}