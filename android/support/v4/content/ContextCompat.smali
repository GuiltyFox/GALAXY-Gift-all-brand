.class public Landroid/support/v4/content/ContextCompat;
.super Ljava/lang/Object;
.source "ContextCompat.java"


# static fields
.field private static final a:Ljava/lang/Object;

.field private static b:Landroid/util/TypedValue;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v4/content/ContextCompat;->a:Ljava/lang/Object;

    return-void
.end method

.method public static final a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .registers 6

    .prologue
    .line 342
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 343
    const/16 v1, 0x15

    if-lt v0, v1, :cond_b

    .line 344
    invoke-static {p0, p1}, Landroid/support/v4/content/ContextCompatApi21;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 360
    :goto_a
    return-object v0

    .line 345
    :cond_b
    const/16 v1, 0x10

    if-lt v0, v1, :cond_18

    .line 346
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_a

    .line 353
    :cond_18
    sget-object v1, Landroid/support/v4/content/ContextCompat;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 354
    :try_start_1b
    sget-object v0, Landroid/support/v4/content/ContextCompat;->b:Landroid/util/TypedValue;

    if-nez v0, :cond_26

    .line 355
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    sput-object v0, Landroid/support/v4/content/ContextCompat;->b:Landroid/util/TypedValue;

    .line 357
    :cond_26
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v2, Landroid/support/v4/content/ContextCompat;->b:Landroid/util/TypedValue;

    const/4 v3, 0x1

    invoke-virtual {v0, p1, v2, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 358
    sget-object v0, Landroid/support/v4/content/ContextCompat;->b:Landroid/util/TypedValue;

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    .line 359
    monitor-exit v1
    :try_end_35
    .catchall {:try_start_1b .. :try_end_35} :catchall_3e

    .line 360
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_a

    .line 359
    :catchall_3e
    move-exception v0

    :try_start_3f
    monitor-exit v1
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    throw v0
.end method

.method public static a(Landroid/content/Context;[Landroid/content/Intent;Landroid/os/Bundle;)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 118
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 119
    const/16 v2, 0x10

    if-lt v1, v2, :cond_b

    .line 120
    invoke-static {p0, p1, p2}, Landroid/support/v4/content/ContextCompatJellybean;->a(Landroid/content/Context;[Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 126
    :goto_a
    return v0

    .line 122
    :cond_b
    const/16 v2, 0xb

    if-lt v1, v2, :cond_13

    .line 123
    invoke-static {p0, p1}, Landroid/support/v4/content/ContextCompatHoneycomb;->a(Landroid/content/Context;[Landroid/content/Intent;)V

    goto :goto_a

    .line 126
    :cond_13
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static a(Landroid/content/Context;)[Ljava/io/File;
    .registers 4

    .prologue
    .line 310
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 311
    const/16 v1, 0x13

    if-lt v0, v1, :cond_b

    .line 312
    invoke-static {p0}, Landroid/support/v4/content/ContextCompatKitKat;->a(Landroid/content/Context;)[Ljava/io/File;

    move-result-object v0

    .line 314
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/File;

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_a
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)[Ljava/io/File;
    .registers 5

    .prologue
    .line 257
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 258
    const/16 v1, 0x13

    if-lt v0, v1, :cond_b

    .line 259
    invoke-static {p0, p1}, Landroid/support/v4/content/ContextCompatKitKat;->a(Landroid/content/Context;Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    .line 261
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/File;

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_a
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)I
    .registers 4

    .prologue
    .line 421
    if-nez p1, :cond_b

    .line 422
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "permission is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 425
    :cond_b
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public static final b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .registers 4

    .prologue
    .line 379
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 380
    const/16 v1, 0x17

    if-lt v0, v1, :cond_b

    .line 381
    invoke-static {p0, p1}, Landroid/support/v4/content/ContextCompatApi23;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 383
    :goto_a
    return-object v0

    :cond_b
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_a
.end method

.method public static final c(Landroid/content/Context;I)I
    .registers 4

    .prologue
    .line 402
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 403
    const/16 v1, 0x17

    if-lt v0, v1, :cond_b

    .line 404
    invoke-static {p0, p1}, Landroid/support/v4/content/ContextCompatApi23;->b(Landroid/content/Context;I)I

    move-result v0

    .line 406
    :goto_a
    return v0

    :cond_b
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_a
.end method
