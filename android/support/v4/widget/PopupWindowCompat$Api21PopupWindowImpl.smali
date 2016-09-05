.class Landroid/support/v4/widget/PopupWindowCompat$Api21PopupWindowImpl;
.super Landroid/support/v4/widget/PopupWindowCompat$KitKatPopupWindowImpl;
.source "PopupWindowCompat.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 96
    invoke-direct {p0}, Landroid/support/v4/widget/PopupWindowCompat$KitKatPopupWindowImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/widget/PopupWindow;Z)V
    .registers 3

    .prologue
    .line 99
    invoke-static {p1, p2}, Landroid/support/v4/widget/PopupWindowCompatApi21;->a(Landroid/widget/PopupWindow;Z)V

    .line 100
    return-void
.end method

.method public a(Landroid/widget/PopupWindow;)Z
    .registers 3

    .prologue
    .line 104
    invoke-static {p1}, Landroid/support/v4/widget/PopupWindowCompatApi21;->a(Landroid/widget/PopupWindow;)Z

    move-result v0

    return v0
.end method
