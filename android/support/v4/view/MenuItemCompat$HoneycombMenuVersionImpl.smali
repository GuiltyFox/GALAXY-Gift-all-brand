.class Landroid/support/v4/view/MenuItemCompat$HoneycombMenuVersionImpl;
.super Ljava/lang/Object;
.source "MenuItemCompat.java"

# interfaces
.implements Landroid/support/v4/view/MenuItemCompat$MenuVersionImpl;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/MenuItem;Landroid/view/View;)Landroid/view/MenuItem;
    .registers 4

    .prologue
    .line 166
    invoke-static {p1, p2}, Landroid/support/v4/view/MenuItemCompatHoneycomb;->a(Landroid/view/MenuItem;Landroid/view/View;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/MenuItem;)Landroid/view/View;
    .registers 3

    .prologue
    .line 176
    invoke-static {p1}, Landroid/support/v4/view/MenuItemCompatHoneycomb;->a(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/MenuItem;I)V
    .registers 3

    .prologue
    .line 161
    invoke-static {p1, p2}, Landroid/support/v4/view/MenuItemCompatHoneycomb;->a(Landroid/view/MenuItem;I)V

    .line 162
    return-void
.end method

.method public b(Landroid/view/MenuItem;I)Landroid/view/MenuItem;
    .registers 4

    .prologue
    .line 171
    invoke-static {p1, p2}, Landroid/support/v4/view/MenuItemCompatHoneycomb;->b(Landroid/view/MenuItem;I)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/view/MenuItem;)Z
    .registers 3

    .prologue
    .line 181
    const/4 v0, 0x0

    return v0
.end method

.method public c(Landroid/view/MenuItem;)Z
    .registers 3

    .prologue
    .line 191
    const/4 v0, 0x0

    return v0
.end method
