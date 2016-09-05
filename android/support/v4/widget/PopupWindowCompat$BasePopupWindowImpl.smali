.class Landroid/support/v4/widget/PopupWindowCompat$BasePopupWindowImpl;
.super Ljava/lang/Object;
.source "PopupWindowCompat.java"

# interfaces
.implements Landroid/support/v4/widget/PopupWindowCompat$PopupWindowImpl;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/widget/PopupWindow;I)V
    .registers 3

    .prologue
    .line 62
    return-void
.end method

.method public a(Landroid/widget/PopupWindow;Landroid/view/View;III)V
    .registers 6

    .prologue
    .line 46
    invoke-virtual {p1, p2, p3, p4}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 47
    return-void
.end method

.method public a(Landroid/widget/PopupWindow;Z)V
    .registers 3

    .prologue
    .line 52
    return-void
.end method

.method public a(Landroid/widget/PopupWindow;)Z
    .registers 3

    .prologue
    .line 56
    const/4 v0, 0x0

    return v0
.end method
