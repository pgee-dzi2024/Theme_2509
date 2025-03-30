from django.contrib import admin
from .models import *

@admin.register(Poll)
class PollV(admin.ModelAdmin):
    list_display = ('id', 'theme', 'description', )
    list_display_links = ('theme', 'description',)
    ordering = ('-id', )

@admin.register(Question)
class QuestionV(admin.ModelAdmin):
    list_display = ('id', 'text', )
    list_display_links = ('id', 'text',)
    list_filter = ('pool_id', )
    ordering = ('-id', )

@admin.register(Option)
class OptionV(admin.ModelAdmin):
    list_display = ('id', 'text', )
    list_display_links = ('id', 'text',)
    list_filter = ('question_id', )
    ordering = ('-id', )

