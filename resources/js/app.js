/**
 * First we will load all of this project's JavaScript dependencies which
 * includes Vue and other libraries. It is a great starting point when
 * building robust, powerful web applications using Vue and Laravel.
 */

require('./bootstrap');

import Lang from '@/utils/Lang';
window.Lang = Lang;
window.__ = (string) => Lang.get(string);

import initAnimations from '@/utils/Animate';
initAnimations();
