from django.contrib import admin
from .models import Board

# Register your models here.
@admin.register(Board)
class BoardAdmin(admin.ModelAdmin):
    list_display = ('title', 'writer', 'date', 'likes', 'content', 'updated_at', 'created_at')
    list_filter = ('date', 'writer')
    search_fields = ('title', 'content')
    ordering = ('-date',) # Boards 정렬
    readonly_fields = ('writer',) # 수정 불가

    fieldsets = (
        (None, {'fields': ('title', 'content')}),
        ('Advanced options', {'fields': ('writer', 'likes', 'reviews'), 'classes': ('collapse',)}),
    )
    # Advanced options : 제목이라 원하는 이름으로 변경가능

    list_per_page = 2

    actions = ('increment_likes',)

    def increment_likes(self, request, queryset):
        # 선택된 게시글들에 대해 'likes' 수를 1씩 증가
        for board in queryset:
            board.likes += 1
            board.save()
    increment_likes.short_description = "선택된 게시글의 좋아요 수 증가"
