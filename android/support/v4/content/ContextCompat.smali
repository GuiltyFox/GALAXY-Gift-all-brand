.class public Landroid/support/v4/content/ContextCompat;
.super Ljava/lang/Object;
.source "ContextCompat.java"


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;)I
    .registers 4

    .prologue
    .line 383
    if-nez p1, :cond_b

    .line 384
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "permission is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 387
    :cond_b
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public static final a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .registers 4

    .prologue
    .line 319
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 320
    const/16 v1, 0x15

    if-lt v0, v1, :cond_b

    .line 321
    invoke-static {p0, p1}, Landroid/support/v4/content/ContextCompatApi21;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 323
    :goto_a
    return-object v0

    :cond_b
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_a
.end method

.method public static a(Landroid/content/Context;[Landroid/content/Intent;Landroid/os/Bundle;)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 105
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 106
    const/16 v2, 0x10

    if-lt v1, v2, :cond_b

    .line 107
    invoke-static {p0, p1, p2}, Landroid/support/v4/content/ContextCompatJellybean;->a(Landroid/content/Context;[Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 113
    :goto_a
    return v0

    .line 109
    :cond_b
    const/16 v2, 0xb

    if-lt v1, v2, :cond_13

    .line 110
    invoke-static {p0, p1}, Landroid/support/v4/content/ContextCompatHoneycomb;->a(Landroid/content/Context;[Landroid/content/Intent;)V

    goto :goto_a

    .line 113
    :cond_13
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static final b(Landroid/content/Context;I)I
    .registers 4

    .prologue
    .line 364
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 365
    const/16 v1, 0x17

    if-lt v0, v1, :cond_b

    .line 366
    invoke-static {p0, p1}, Landroid/support/v4/content/ContextCompatApi23;->a(Landroid/content/Context;I)I

    move-result v0

    .line 368
    :goto_a
    return v0

    :cond_b
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_a
.end method
