#!/usr/bin/python
# -*- coding: utf-8 -*-

# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.

import sys, re
import gtk, gobject
import webkit
DEFAULT_URL ="http://roboticaro.org/documentacion/index.html"
#sys.path[0]+'/documentos/publican/manual_np05/tmp/es-ES/html/index.html'
class SimpleBrowser: # needs GTK, Python, Webkit-GTK
    tam=1
    def __init__(self):
        self.window = gtk.Window(gtk.WINDOW_TOPLEVEL)
        self.window.set_position(gtk.WIN_POS_CENTER_ALWAYS)
        self.window.connect('delete_event', self.close_application)
        self.window.set_default_size(750, 500)
        vbox = gtk.VBox(spacing=5)
        vbox.set_border_width(5)
        self.txt_url = gtk.Entry()
        self.txt_url.connect('activate', self._txt_url_activate)
#~
        # Genero una barra de herramientas
        toolbar = gtk.HBox(spacing=5)
        vbox.pack_start(toolbar,False,False)
#~
        # Agrego el boton "Atras"
        self.btnback = gtk.Button()
        self.btnback.add(gtk.Arrow(gtk.ARROW_LEFT,gtk.SHADOW_OUT))
        self.btnback.connect('clicked',self._go_back)
        toolbar.pack_start(self.btnback,False,False)
        # Agrego el boton de "Ir"
        button = gtk.Button(_('Home'))
        button.connect('clicked',self._open_bar_url)
        toolbar.pack_start(button,False,False)
        # Agrego el boton "Adelante"
        self.btnforward = gtk.Button()
        self.btnforward.add(gtk.Arrow(gtk.ARROW_RIGHT,gtk.SHADOW_OUT))
        self.btnforward.connect('clicked',self._go_forward)
        toolbar.pack_start(self.btnforward,False,False)
        # Agrego el boton de "close"
        button = gtk.Button(_('Exit'))
        button.connect('clicked',self.close)
        toolbar.pack_start(button,False,False)
        # Agrego el boton de "zoom"
        button = gtk.Button(_('increase'))
        button.connect('clicked',self.zoom,1)
        toolbar.pack_start(button,False,False)
        button = gtk.Button(_('Decrease'))
        button.connect('clicked',self.zoom,-1)
        toolbar.pack_start(button,False,False)
        #~ # Agrego el boton "Actualizar"
        #~ btnrefresh = gtk.Button('Actualizar')
        #~ btnrefresh.connect('clicked',self._refresh)
        #~ toolbar.pack_start(btnrefresh,False,False)
#~
        #~ # Agrego la barra de direcciones
        #~ self.text = gtk.Entry()
        #~ self.text.connect('activate',self._open_bar_url)
        #~ toolbar.pack_start(self.text,True,True)
#~


        # Agrego el renderer del motor
        self.scrolled_window = gtk.ScrolledWindow()
        self.webview = webkit.WebView()
        self.scrolled_window.add(self.webview)
        vbox.pack_start(self.scrolled_window, fill=True, expand=True)
        self.window.add(vbox)

        # Agrego un alinea de estado, con una etiqueta y una barra de progreso
        self.pbar = gtk.ProgressBar()
        self.status = gtk.Label()
        hbox2 = gtk.HBox(False,0)
        hbox2.pack_start(self.status,False,False)
        hbox2.pack_end(self.pbar,False,False)
        vbox.pack_start(hbox2,False,True)

        # Defino las acciones a realizar segun los eventos del motor html
        self.webview.connect('load-started',self._load_start)
        self.webview.connect('load-progress-changed',self._load_progress_changed)
        self.webview.connect('load-finished',self._load_finished)
        self.webview.connect('title-changed',self._title_changed)
        self.webview.connect('hovering-over-link',self._hover_link)

    def _open_bar_url(self, nada):
        self.open(DEFAULT_URL)
    def _txt_url_activate(self, entry):
        self._load(entry.get_text())
    def _load(self, url):
        self.webview.open(url)
    def open(self, url):
        # Si la url no tiene el http:// adelante, se lo agrego
        #~ if url[0:7] != "http://":
            #~ url = "http://"+url
        self.txt_url.set_text(url)
        self._load(url)
    def show(self):
        self.window.show_all()

    def zoom(self,b,c):
        self.tam +=c
        self.webview.set_zoom_level(self.tam)
        if self.tam<=0:
            self.tam==0
    def close(self,arg):
        #~ gtk.main_quit()
        self.window.hide()
    def close_application(self, widget, event, data=None):
        #~ gtk.main_quit()
        self.window.hide()
    def _load_start(self, view, nadas):
        self.status.set_text('Cargando...')
        self.pbar.set_fraction(0)
    def _load_progress_changed(self, view, prog):
        self.pbar.set_fraction(prog/100.0)
    def _load_finished(self, view, nada):
        self.pbar.set_fraction(0)
        self.status.set_text('Listo')
    def _go_back(self,nada):
        self.webview.go_back()
    def _go_forward(self,nada):
        self.webview.go_forward()
    def _refresh(self,nada):
        self.webview.reload()
    def _title_changed(self,view,frame,title):
        # Actualizo el titulo del navegador, la url en la barra de url y activo/desactivo los botones Adelante y Atras
        self.window.set_title('%s' % title)
        #self.text.set_text(frame.get_uri())
        self.btnback.props.sensitive = self.webview.can_go_back()
        self.btnforward.props.sensitive = self.webview.can_go_forward()
    def _hover_link(self,view,frame,url):
        # Si se hace hover sobre un link, pongo en la barra de estado la url hacia la que linkea
        if view and url:
            self.status.set_text(url)
        else:
            self.status.set_text("")

