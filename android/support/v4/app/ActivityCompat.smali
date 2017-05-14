.class public Landroid/support/v4/app/ActivityCompat;
.super Landroid/support/v4/content/ContextCompat;
.source "ActivityCompat.java"


# direct methods
.method private static a(Landroid/support/v4/app/SharedElementCallback;)Landroid/support/v4/app/ActivityCompat21$SharedElementCallback21;
    .registers 2

    .prologue
    .line 429
    const/4 v0, 0x0

    .line 430
    if-eqz p0, :cond_8

    .line 431
    new-instance v0, Landroid/support/v4/app/ActivityCompat$SharedElementCallback21Impl;

    invoke-direct {v0, p0}, Landroid/support/v4/app/ActivityCompat$SharedElementCallback21Impl;-><init>(Landroid/support/v4/app/SharedElementCallback;)V

    .line 433
    :cond_8
    return-object v0
.end method

.method public static a(Landroid/app/Activity;)V
    .registers 3

    .prologue
    .line 221
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_a

    .line 222
    invoke-static {p0}, Landroid/support/v4/app/ActivityCompatJB;->a(Landroid/app/Activity;)V

    .line 226
    :goto_9
    return-void

    .line 224
    :cond_a
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_9
.end method

.method public static a(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .registers 6

    .prologue
    .line 168
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_a

    .line 169
    invoke-static {p0, p1, p2, p3}, Landroid/support/v4/app/ActivityCompatJB;->a(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 173
    :goto_9
    return-void

    .line 171
    :cond_a
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_9
.end method

.method public static a(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .registers 10

    .prologue
    .line 204
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_a

    .line 205
    invoke-static/range {p0 .. p7}, Landroid/support/v4/app/ActivityCompatJB;->a(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    .line 211
    :goto_9
    return-void

    .line 208
    :cond_a
    invoke-virtual/range {p0 .. p6}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    goto :goto_9
.end method

.method public static a(Landroid/app/Activity;Landroid/support/v4/app/SharedElementCallback;)V
    .registers 4

    .prologue
    .line 280
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_e

    .line 281
    invoke-static {p1}, Landroid/support/v4/app/ActivityCompat;->b(Landroid/support/v4/app/SharedElementCallback;)Landroid/support/v4/app/ActivityCompatApi23$SharedElementCallback23;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/support/v4/app/ActivityCompatApi23;->a(Landroid/app/Activity;Landroid/support/v4/app/ActivityCompatApi23$SharedElementCallback23;)V

    .line 285
    :cond_d
    :goto_d
    return-void

    .line 282
    :cond_e
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_d

    .line 283
    invoke-static {p1}, Landroid/support/v4/app/ActivityCompat;->a(Landroid/support/v4/app/SharedElementCallback;)Landroid/support/v4/app/ActivityCompat21$SharedElementCallback21;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/support/v4/app/ActivityCompat21;->a(Landroid/app/Activity;Landroid/support/v4/app/ActivityCompat21$SharedElementCallback21;)V

    goto :goto_d
.end method

.method public static a(Landroid/app/Activity;[Ljava/lang/String;I)V
    .registers 5

    .prologue
    .line 374
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_a

    .line 375
    invoke-static {p0, p1, p2}, Landroid/support/v4/app/ActivityCompatApi23;->a(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 397
    :cond_9
    :goto_9
    return-void

    .line 376
    :cond_a
    instance-of v0, p0, Landroid/support/v4/app/ActivityCompat$OnRequestPermissionsResultCallback;

    if-eqz v0, :cond_9

    .line 377
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 378
    new-instance v1, Landroid/support/v4/app/ActivityCompat$1;

    invoke-direct {v1, p1, p0, p2}, Landroid/support/v4/app/ActivityCompat$1;-><init>([Ljava/lang/String;Landroid/app/Activity;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_9
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;)Z
    .registers 4

    .prologue
    .line 421
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_b

    .line 422
    invoke-static {p0, p1}, Landroid/support/v4/app/ActivityCompatApi23;->a(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    .line 424
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private static b(Landroid/support/v4/app/SharedElementCallback;)Landroid/support/v4/app/ActivityCompatApi23$SharedElementCallback23;
    .registers 2

    .prologue
    .line 438
    const/4 v0, 0x0

    .line 439
    if-eqz p0, :cond_8

    .line 440
    new-instance v0, Landroid/support/v4/app/ActivityCompat$SharedElementCallback23Impl;

    invoke-direct {v0, p0}, Landroid/support/v4/app/ActivityCompat$SharedElementCallback23Impl;-><init>(Landroid/support/v4/app/SharedElementCallback;)V

    .line 442
    :cond_8
    return-object v0
.end method

.method public static b(Landroid/app/Activity;)V
    .registers 3

    .prologue
    .line 238
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_a

    .line 239
    invoke-static {p0}, Landroid/support/v4/app/ActivityCompat21;->a(Landroid/app/Activity;)V

    .line 243
    :goto_9
    return-void

    .line 241
    :cond_a
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_9
.end method

.method public static b(Landroid/app/Activity;Landroid/support/v4/app/SharedElementCallback;)V
    .registers 4

    .prologue
    .line 298
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_e

    .line 299
    invoke-static {p1}, Landroid/support/v4/app/ActivityCompat;->b(Landroid/support/v4/app/SharedElementCallback;)Landroid/support/v4/app/ActivityCompatApi23$SharedElementCallback23;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/support/v4/app/ActivityCompatApi23;->b(Landroid/app/Activity;Landroid/support/v4/app/ActivityCompatApi23$SharedElementCallback23;)V

    .line 303
    :cond_d
    :goto_d
    return-void

    .line 300
    :cond_e
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_d

    .line 301
    invoke-static {p1}, Landroid/support/v4/app/ActivityCompat;->a(Landroid/support/v4/app/SharedElementCallback;)Landroid/support/v4/app/ActivityCompat21$SharedElementCallback21;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/support/v4/app/ActivityCompat21;->b(Landroid/app/Activity;Landroid/support/v4/app/ActivityCompat21$SharedElementCallback21;)V

    goto :goto_d
.end method

.method public static c(Landroid/app/Activity;)V
    .registers 3

    .prologue
    .line 306
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_9

    .line 307
    invoke-static {p0}, Landroid/support/v4/app/ActivityCompat21;->b(Landroid/app/Activity;)V

    .line 309
    :cond_9
    return-void
.end method

.method public static d(Landroid/app/Activity;)V
    .registers 3

    .prologue
    .line 312
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_9

    .line 313
    invoke-static {p0}, Landroid/support/v4/app/ActivityCompat21;->c(Landroid/app/Activity;)V

    .line 315
    :cond_9
    return-void
.end method
