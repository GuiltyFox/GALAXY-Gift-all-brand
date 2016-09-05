.class public Landroid/support/v4/app/ActivityCompat;
.super Landroid/support/v4/content/ContextCompat;
.source "ActivityCompat.java"


# direct methods
.method private static a(Landroid/support/v4/app/SharedElementCallback;)Landroid/support/v4/app/ActivityCompat21$SharedElementCallback21;
    .registers 2

    .prologue
    .line 370
    const/4 v0, 0x0

    .line 371
    if-eqz p0, :cond_8

    .line 372
    new-instance v0, Landroid/support/v4/app/ActivityCompat$SharedElementCallback21Impl;

    invoke-direct {v0, p0}, Landroid/support/v4/app/ActivityCompat$SharedElementCallback21Impl;-><init>(Landroid/support/v4/app/SharedElementCallback;)V

    .line 374
    :cond_8
    return-object v0
.end method

.method public static a(Landroid/app/Activity;)V
    .registers 3

    .prologue
    .line 176
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_a

    .line 177
    invoke-static {p0}, Landroid/support/v4/app/ActivityCompatJB;->a(Landroid/app/Activity;)V

    .line 181
    :goto_9
    return-void

    .line 179
    :cond_a
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_9
.end method

.method public static a(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .registers 6

    .prologue
    .line 161
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_a

    .line 162
    invoke-static {p0, p1, p2, p3}, Landroid/support/v4/app/ActivityCompatJB;->a(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 166
    :goto_9
    return-void

    .line 164
    :cond_a
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_9
.end method

.method public static a(Landroid/app/Activity;Landroid/support/v4/app/SharedElementCallback;)V
    .registers 4

    .prologue
    .line 231
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_d

    .line 232
    invoke-static {p1}, Landroid/support/v4/app/ActivityCompat;->a(Landroid/support/v4/app/SharedElementCallback;)Landroid/support/v4/app/ActivityCompat21$SharedElementCallback21;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/support/v4/app/ActivityCompat21;->a(Landroid/app/Activity;Landroid/support/v4/app/ActivityCompat21$SharedElementCallback21;)V

    .line 234
    :cond_d
    return-void
.end method

.method public static a(Landroid/app/Activity;[Ljava/lang/String;I)V
    .registers 5

    .prologue
    .line 315
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_a

    .line 316
    invoke-static {p0, p1, p2}, Landroid/support/v4/app/ActivityCompatApi23;->a(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 338
    :cond_9
    :goto_9
    return-void

    .line 317
    :cond_a
    instance-of v0, p0, Landroid/support/v4/app/ActivityCompat$OnRequestPermissionsResultCallback;

    if-eqz v0, :cond_9

    .line 318
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 319
    new-instance v1, Landroid/support/v4/app/ActivityCompat$1;

    invoke-direct {v1, p1, p0, p2}, Landroid/support/v4/app/ActivityCompat$1;-><init>([Ljava/lang/String;Landroid/app/Activity;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_9
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;)Z
    .registers 4

    .prologue
    .line 362
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_b

    .line 363
    invoke-static {p0, p1}, Landroid/support/v4/app/ActivityCompatApi23;->a(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    .line 365
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static b(Landroid/app/Activity;)V
    .registers 3

    .prologue
    .line 193
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_a

    .line 194
    invoke-static {p0}, Landroid/support/v4/app/ActivityCompat21;->a(Landroid/app/Activity;)V

    .line 198
    :goto_9
    return-void

    .line 196
    :cond_a
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_9
.end method

.method public static b(Landroid/app/Activity;Landroid/support/v4/app/SharedElementCallback;)V
    .registers 4

    .prologue
    .line 247
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_d

    .line 248
    invoke-static {p1}, Landroid/support/v4/app/ActivityCompat;->a(Landroid/support/v4/app/SharedElementCallback;)Landroid/support/v4/app/ActivityCompat21$SharedElementCallback21;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/support/v4/app/ActivityCompat21;->b(Landroid/app/Activity;Landroid/support/v4/app/ActivityCompat21$SharedElementCallback21;)V

    .line 250
    :cond_d
    return-void
.end method

.method public static c(Landroid/app/Activity;)V
    .registers 3

    .prologue
    .line 253
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_9

    .line 254
    invoke-static {p0}, Landroid/support/v4/app/ActivityCompat21;->b(Landroid/app/Activity;)V

    .line 256
    :cond_9
    return-void
.end method

.method public static d(Landroid/app/Activity;)V
    .registers 3

    .prologue
    .line 259
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_9

    .line 260
    invoke-static {p0}, Landroid/support/v4/app/ActivityCompat21;->c(Landroid/app/Activity;)V

    .line 262
    :cond_9
    return-void
.end method
