from django.contrib import admin

from .models import Post
# Register your models here.


@admin.register(Post)
class PostAdmin(admin.ModelAdmin):
    list_display = ('id', 'name')
    search_fields = ('id', 'name', 'description')
