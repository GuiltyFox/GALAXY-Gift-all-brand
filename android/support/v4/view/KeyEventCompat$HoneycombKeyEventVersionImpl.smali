.class Landroid/support/v4/view/KeyEventCompat$HoneycombKeyEventVersionImpl;
.super Landroid/support/v4/view/KeyEventCompat$BaseKeyEventVersionImpl;
.source "KeyEventCompat.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 102
    invoke-direct {p0}, Landroid/support/v4/view/KeyEventCompat$BaseKeyEventVersionImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)I
    .registers 3

    .prologue
    .line 105
    invoke-static {p1}, Landroid/support/v4/view/KeyEventCompatHoneycomb;->a(I)I

    move-result v0

    return v0
.end method

.method public a(II)Z
    .registers 4

    .prologue
    .line 110
    invoke-static {p1, p2}, Landroid/support/v4/view/KeyEventCompatHoneycomb;->a(II)Z

    move-result v0

    return v0
.end method

.method public a(Landroid/view/KeyEvent;)Z
    .registers 3

    .prologue
    .line 120
    invoke-static {p1}, Landroid/support/v4/view/KeyEventCompatHoneycomb;->a(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public b(I)Z
    .registers 3

    .prologue
    .line 115
    invoke-static {p1}, Landroid/support/v4/view/KeyEventCompatHoneycomb;->b(I)Z

    move-result v0

    return v0
.end method
