.class Landroid/support/v4/widget/PopupWindowCompat$Api23PopupWindowImpl;
.super Landroid/support/v4/widget/PopupWindowCompat$Api21PopupWindowImpl;
.source "PopupWindowCompat.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 108
    invoke-direct {p0}, Landroid/support/v4/widget/PopupWindowCompat$Api21PopupWindowImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/widget/PopupWindow;I)V
    .registers 3

    .prologue
    .line 121
    invoke-static {p1, p2}, Landroid/support/v4/widget/PopupWindowCompatApi23;->a(Landroid/widget/PopupWindow;I)V

    .line 122
    return-void
.end method

.method public a(Landroid/widget/PopupWindow;Z)V
    .registers 3

    .prologue
    .line 111
    invoke-static {p1, p2}, Landroid/support/v4/widget/PopupWindowCompatApi23;->a(Landroid/widget/PopupWindow;Z)V

    .line 112
    return-void
.end method

.method public a(Landroid/widget/PopupWindow;)Z
    .registers 3

    .prologue
    .line 116
    invoke-static {p1}, Landroid/support/v4/widget/PopupWindowCompatApi23;->a(Landroid/widget/PopupWindow;)Z

    move-result v0

    return v0
.end method
