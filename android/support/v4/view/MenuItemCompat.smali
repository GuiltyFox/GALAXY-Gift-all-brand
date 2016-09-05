.class public final Landroid/support/v4/view/MenuItemCompat;
.super Ljava/lang/Object;
.source "MenuItemCompat.java"


# static fields
.field static final a:Landroid/support/v4/view/MenuItemCompat$MenuVersionImpl;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 247
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 248
    const/16 v1, 0xe

    if-lt v0, v1, :cond_e

    .line 249
    new-instance v0, Landroid/support/v4/view/MenuItemCompat$IcsMenuVersionImpl;

    invoke-direct {v0}, Landroid/support/v4/view/MenuItemCompat$IcsMenuVersionImpl;-><init>()V

    sput-object v0, Landroid/support/v4/view/MenuItemCompat;->a:Landroid/support/v4/view/MenuItemCompat$MenuVersionImpl;

    .line 255
    :goto_d
    return-void

    .line 250
    :cond_e
    const/16 v1, 0xb

    if-lt v0, v1, :cond_1a

    .line 251
    new-instance v0, Landroid/support/v4/view/MenuItemCompat$HoneycombMenuVersionImpl;

    invoke-direct {v0}, Landroid/support/v4/view/MenuItemCompat$HoneycombMenuVersionImpl;-><init>()V

    sput-object v0, Landroid/support/v4/view/MenuItemCompat;->a:Landroid/support/v4/view/MenuItemCompat$MenuVersionImpl;

    goto :goto_d

    .line 253
    :cond_1a
    new-instance v0, Landroid/support/v4/view/MenuItemCompat$BaseMenuVersionImpl;

    invoke-direct {v0}, Landroid/support/v4/view/MenuItemCompat$BaseMenuVersionImpl;-><init>()V

    sput-object v0, Landroid/support/v4/view/MenuItemCompat;->a:Landroid/support/v4/view/MenuItemCompat$MenuVersionImpl;

    goto :goto_d
.end method

.method public static a(Landroid/view/MenuItem;Landroid/support/v4/view/ActionProvider;)Landroid/view/MenuItem;
    .registers 4

    .prologue
    .line 344
    instance-of v0, p0, Landroid/support/v4/internal/view/SupportMenuItem;

    if-eqz v0, :cond_b

    .line 345
    check-cast p0, Landroid/support/v4/internal/view/SupportMenuItem;

    invoke-interface {p0, p1}, Landroid/support/v4/internal/view/SupportMenuItem;->a(Landroid/support/v4/view/ActionProvider;)Landroid/support/v4/internal/view/SupportMenuItem;

    move-result-object p0

    .line 349
    :goto_a
    return-object p0

    .line 348
    :cond_b
    const-string/jumbo v0, "MenuItemCompat"

    const-string/jumbo v1, "setActionProvider: item does not implement SupportMenuItem; ignoring"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a
.end method

.method public static a(Landroid/view/MenuItem;Landroid/view/View;)Landroid/view/MenuItem;
    .registers 3

    .prologue
    .line 287
    instance-of v0, p0, Landroid/support/v4/internal/view/SupportMenuItem;

    if-eqz v0, :cond_b

    .line 288
    check-cast p0, Landroid/support/v4/internal/view/SupportMenuItem;

    invoke-interface {p0, p1}, Landroid/support/v4/internal/view/SupportMenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    move-result-object v0

    .line 290
    :goto_a
    return-object v0

    :cond_b
    sget-object v0, Landroid/support/v4/view/MenuItemCompat;->a:Landroid/support/v4/view/MenuItemCompat$MenuVersionImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/MenuItemCompat$MenuVersionImpl;->a(Landroid/view/MenuItem;Landroid/view/View;)Landroid/view/MenuItem;

    move-result-object v0

    goto :goto_a
.end method

.method public static a(Landroid/view/MenuItem;)Landroid/view/View;
    .registers 2

    .prologue
    .line 322
    instance-of v0, p0, Landroid/support/v4/internal/view/SupportMenuItem;

    if-eqz v0, :cond_b

    .line 323
    check-cast p0, Landroid/support/v4/internal/view/SupportMenuItem;

    invoke-interface {p0}, Landroid/support/v4/internal/view/SupportMenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    .line 325
    :goto_a
    return-object v0

    :cond_b
    sget-object v0, Landroid/support/v4/view/MenuItemCompat;->a:Landroid/support/v4/view/MenuItemCompat$MenuVersionImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/view/MenuItemCompat$MenuVersionImpl;->a(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    goto :goto_a
.end method

.method public static a(Landroid/view/MenuItem;I)V
    .registers 3

    .prologue
    .line 268
    instance-of v0, p0, Landroid/support/v4/internal/view/SupportMenuItem;

    if-eqz v0, :cond_a

    .line 269
    check-cast p0, Landroid/support/v4/internal/view/SupportMenuItem;

    invoke-interface {p0, p1}, Landroid/support/v4/internal/view/SupportMenuItem;->setShowAsAction(I)V

    .line 273
    :goto_9
    return-void

    .line 271
    :cond_a
    sget-object v0, Landroid/support/v4/view/MenuItemCompat;->a:Landroid/support/v4/view/MenuItemCompat$MenuVersionImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/MenuItemCompat$MenuVersionImpl;->a(Landroid/view/MenuItem;I)V

    goto :goto_9
.end method

.method public static b(Landroid/view/MenuItem;I)Landroid/view/MenuItem;
    .registers 3

    .prologue
    .line 309
    instance-of v0, p0, Landroid/support/v4/internal/view/SupportMenuItem;

    if-eqz v0, :cond_b

    .line 310
    check-cast p0, Landroid/support/v4/internal/view/SupportMenuItem;

    invoke-interface {p0, p1}, Landroid/support/v4/internal/view/SupportMenuItem;->setActionView(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 312
    :goto_a
    return-object v0

    :cond_b
    sget-object v0, Landroid/support/v4/view/MenuItemCompat;->a:Landroid/support/v4/view/MenuItemCompat$MenuVersionImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/MenuItemCompat$MenuVersionImpl;->b(Landroid/view/MenuItem;I)Landroid/view/MenuItem;

    move-result-object v0

    goto :goto_a
.end method

.method public static b(Landroid/view/MenuItem;)Z
    .registers 2

    .prologue
    .line 383
    instance-of v0, p0, Landroid/support/v4/internal/view/SupportMenuItem;

    if-eqz v0, :cond_b

    .line 384
    check-cast p0, Landroid/support/v4/internal/view/SupportMenuItem;

    invoke-interface {p0}, Landroid/support/v4/internal/view/SupportMenuItem;->expandActionView()Z

    move-result v0

    .line 386
    :goto_a
    return v0

    :cond_b
    sget-object v0, Landroid/support/v4/view/MenuItemCompat;->a:Landroid/support/v4/view/MenuItemCompat$MenuVersionImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/view/MenuItemCompat$MenuVersionImpl;->b(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_a
.end method

.method public static c(Landroid/view/MenuItem;)Z
    .registers 2

    .prologue
    .line 418
    instance-of v0, p0, Landroid/support/v4/internal/view/SupportMenuItem;

    if-eqz v0, :cond_b

    .line 419
    check-cast p0, Landroid/support/v4/internal/view/SupportMenuItem;

    invoke-interface {p0}, Landroid/support/v4/internal/view/SupportMenuItem;->isActionViewExpanded()Z

    move-result v0

    .line 421
    :goto_a
    return v0

    :cond_b
    sget-object v0, Landroid/support/v4/view/MenuItemCompat;->a:Landroid/support/v4/view/MenuItemCompat$MenuVersionImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/view/MenuItemCompat$MenuVersionImpl;->c(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_a
.end method
