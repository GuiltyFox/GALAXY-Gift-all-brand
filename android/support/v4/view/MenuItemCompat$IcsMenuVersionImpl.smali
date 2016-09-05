.class Landroid/support/v4/view/MenuItemCompat$IcsMenuVersionImpl;
.super Landroid/support/v4/view/MenuItemCompat$HoneycombMenuVersionImpl;
.source "MenuItemCompat.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 200
    invoke-direct {p0}, Landroid/support/v4/view/MenuItemCompat$HoneycombMenuVersionImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/MenuItem;)Z
    .registers 3

    .prologue
    .line 203
    invoke-static {p1}, Landroid/support/v4/view/MenuItemCompatIcs;->a(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public c(Landroid/view/MenuItem;)Z
    .registers 3

    .prologue
    .line 213
    invoke-static {p1}, Landroid/support/v4/view/MenuItemCompatIcs;->b(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
