.class public Lpl/aprilapps/easyphotopicker/EasyImage;
.super Ljava/lang/Object;
.source "EasyImage.java"


# direct methods
.method private static a(Landroid/content/Context;I)Landroid/content/Intent;
    .registers 5

    .prologue
    .line 70
    invoke-static {p0, p1}, Lpl/aprilapps/easyphotopicker/EasyImage;->c(Landroid/content/Context;I)V

    .line 71
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.PICK"

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    return-object v0
.end method

.method private static a(Landroid/content/Context;)Landroid/net/Uri;
    .registers 6

    .prologue
    .line 51
    invoke-static {p0}, Lpl/aprilapps/easyphotopicker/EasyImageFiles;->f(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 52
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".easyphotopicker.fileprovider"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 54
    invoke-static {p0, v1, v0}, Landroid/support/v4/content/FileProvider;->a(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 55
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 56
    const-string/jumbo v3, "pl.aprilapps.easyphotopicker.photo_uri"

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 57
    const-string/jumbo v3, "pl.aprilapps.easyphotopicker.last_photo"

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 58
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 59
    return-object v1
.end method

.method public static a(IILandroid/content/Intent;Landroid/app/Activity;Lpl/aprilapps/easyphotopicker/EasyImage$Callbacks;)V
    .registers 9

    .prologue
    const/16 v3, 0x1d23

    const/16 v2, 0x1d22

    const/16 v1, 0x1d21

    .line 255
    const/16 v0, 0x1d24

    if-eq p0, v0, :cond_10

    if-eq p0, v2, :cond_10

    if-eq p0, v3, :cond_10

    if-ne p0, v1, :cond_18

    .line 256
    :cond_10
    const/4 v0, -0x1

    if-ne p1, v0, :cond_35

    .line 257
    if-ne p0, v1, :cond_19

    .line 258
    invoke-static {p2, p3, p4}, Lpl/aprilapps/easyphotopicker/EasyImage;->a(Landroid/content/Intent;Landroid/app/Activity;Lpl/aprilapps/easyphotopicker/EasyImage$Callbacks;)V

    .line 282
    :cond_18
    :goto_18
    return-void

    .line 259
    :cond_19
    if-ne p0, v2, :cond_1f

    .line 260
    invoke-static {p2, p3, p4}, Lpl/aprilapps/easyphotopicker/EasyImage;->b(Landroid/content/Intent;Landroid/app/Activity;Lpl/aprilapps/easyphotopicker/EasyImage$Callbacks;)V

    goto :goto_18

    .line 261
    :cond_1f
    if-ne p0, v3, :cond_25

    .line 262
    invoke-static {p3, p4}, Lpl/aprilapps/easyphotopicker/EasyImage;->a(Landroid/app/Activity;Lpl/aprilapps/easyphotopicker/EasyImage$Callbacks;)V

    goto :goto_18

    .line 263
    :cond_25
    if-eqz p2, :cond_2d

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_31

    .line 264
    :cond_2d
    invoke-static {p3, p4}, Lpl/aprilapps/easyphotopicker/EasyImage;->a(Landroid/app/Activity;Lpl/aprilapps/easyphotopicker/EasyImage$Callbacks;)V

    goto :goto_18

    .line 266
    :cond_31
    invoke-static {p2, p3, p4}, Lpl/aprilapps/easyphotopicker/EasyImage;->a(Landroid/content/Intent;Landroid/app/Activity;Lpl/aprilapps/easyphotopicker/EasyImage$Callbacks;)V

    goto :goto_18

    .line 269
    :cond_35
    if-ne p0, v1, :cond_41

    .line 270
    sget-object v0, Lpl/aprilapps/easyphotopicker/EasyImage$ImageSource;->b:Lpl/aprilapps/easyphotopicker/EasyImage$ImageSource;

    invoke-static {p3}, Lpl/aprilapps/easyphotopicker/EasyImage;->b(Landroid/content/Context;)I

    move-result v1

    invoke-interface {p4, v0, v1}, Lpl/aprilapps/easyphotopicker/EasyImage$Callbacks;->a(Lpl/aprilapps/easyphotopicker/EasyImage$ImageSource;I)V

    goto :goto_18

    .line 271
    :cond_41
    if-ne p0, v2, :cond_4d

    .line 272
    sget-object v0, Lpl/aprilapps/easyphotopicker/EasyImage$ImageSource;->a:Lpl/aprilapps/easyphotopicker/EasyImage$ImageSource;

    invoke-static {p3}, Lpl/aprilapps/easyphotopicker/EasyImage;->b(Landroid/content/Context;)I

    move-result v1

    invoke-interface {p4, v0, v1}, Lpl/aprilapps/easyphotopicker/EasyImage$Callbacks;->a(Lpl/aprilapps/easyphotopicker/EasyImage$ImageSource;I)V

    goto :goto_18

    .line 273
    :cond_4d
    if-ne p0, v3, :cond_59

    .line 274
    sget-object v0, Lpl/aprilapps/easyphotopicker/EasyImage$ImageSource;->c:Lpl/aprilapps/easyphotopicker/EasyImage$ImageSource;

    invoke-static {p3}, Lpl/aprilapps/easyphotopicker/EasyImage;->b(Landroid/content/Context;)I

    move-result v1

    invoke-interface {p4, v0, v1}, Lpl/aprilapps/easyphotopicker/EasyImage$Callbacks;->a(Lpl/aprilapps/easyphotopicker/EasyImage$ImageSource;I)V

    goto :goto_18

    .line 275
    :cond_59
    if-eqz p2, :cond_61

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_6b

    .line 276
    :cond_61
    sget-object v0, Lpl/aprilapps/easyphotopicker/EasyImage$ImageSource;->c:Lpl/aprilapps/easyphotopicker/EasyImage$ImageSource;

    invoke-static {p3}, Lpl/aprilapps/easyphotopicker/EasyImage;->b(Landroid/content/Context;)I

    move-result v1

    invoke-interface {p4, v0, v1}, Lpl/aprilapps/easyphotopicker/EasyImage$Callbacks;->a(Lpl/aprilapps/easyphotopicker/EasyImage$ImageSource;I)V

    goto :goto_18

    .line 278
    :cond_6b
    sget-object v0, Lpl/aprilapps/easyphotopicker/EasyImage$ImageSource;->b:Lpl/aprilapps/easyphotopicker/EasyImage$ImageSource;

    invoke-static {p3}, Lpl/aprilapps/easyphotopicker/EasyImage;->b(Landroid/content/Context;)I

    move-result v1

    invoke-interface {p4, v0, v1}, Lpl/aprilapps/easyphotopicker/EasyImage$Callbacks;->a(Lpl/aprilapps/easyphotopicker/EasyImage$ImageSource;I)V

    goto :goto_18
.end method

.method public static a(Landroid/app/Activity;I)V
    .registers 4

    .prologue
    .line 215
    invoke-static {p0, p1}, Lpl/aprilapps/easyphotopicker/EasyImage;->a(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    .line 216
    const/16 v1, 0x1d22

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 217
    return-void
.end method

.method private static a(Landroid/app/Activity;Lpl/aprilapps/easyphotopicker/EasyImage$Callbacks;)V
    .registers 5

    .prologue
    .line 331
    :try_start_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "pl.aprilapps.easyphotopicker.photo_uri"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 332
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 333
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lpl/aprilapps/easyphotopicker/EasyImage;->a(Landroid/content/Context;Landroid/net/Uri;)V

    .line 336
    :cond_19
    invoke-static {p0}, Lpl/aprilapps/easyphotopicker/EasyImage;->c(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 338
    if-nez v0, :cond_4a

    .line 339
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Unable to get the picture returned from camera"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 340
    sget-object v1, Lpl/aprilapps/easyphotopicker/EasyImage$ImageSource;->c:Lpl/aprilapps/easyphotopicker/EasyImage$ImageSource;

    invoke-static {p0}, Lpl/aprilapps/easyphotopicker/EasyImage;->b(Landroid/content/Context;)I

    move-result v2

    invoke-interface {p1, v0, v1, v2}, Lpl/aprilapps/easyphotopicker/EasyImage$Callbacks;->a(Ljava/lang/Exception;Lpl/aprilapps/easyphotopicker/EasyImage$ImageSource;I)V

    .line 345
    :goto_30
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 346
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "pl.aprilapps.easyphotopicker.last_photo"

    .line 347
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "pl.aprilapps.easyphotopicker.photo_uri"

    .line 348
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 349
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 354
    :goto_49
    return-void

    .line 342
    :cond_4a
    sget-object v1, Lpl/aprilapps/easyphotopicker/EasyImage$ImageSource;->c:Lpl/aprilapps/easyphotopicker/EasyImage$ImageSource;

    invoke-static {p0}, Lpl/aprilapps/easyphotopicker/EasyImage;->b(Landroid/content/Context;)I

    move-result v2

    invoke-interface {p1, v0, v1, v2}, Lpl/aprilapps/easyphotopicker/EasyImage$Callbacks;->a(Ljava/io/File;Lpl/aprilapps/easyphotopicker/EasyImage$ImageSource;I)V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_53} :catch_54

    goto :goto_30

    .line 350
    :catch_54
    move-exception v0

    .line 351
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 352
    sget-object v1, Lpl/aprilapps/easyphotopicker/EasyImage$ImageSource;->c:Lpl/aprilapps/easyphotopicker/EasyImage$ImageSource;

    invoke-static {p0}, Lpl/aprilapps/easyphotopicker/EasyImage;->b(Landroid/content/Context;)I

    move-result v2

    invoke-interface {p1, v0, v1, v2}, Lpl/aprilapps/easyphotopicker/EasyImage$Callbacks;->a(Ljava/lang/Exception;Lpl/aprilapps/easyphotopicker/EasyImage$ImageSource;I)V

    goto :goto_49
.end method

.method private static a(Landroid/content/Context;Landroid/content/Intent;Landroid/net/Uri;)V
    .registers 6

    .prologue
    .line 95
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v1, 0x10000

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 96
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 97
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 98
    const/4 v2, 0x3

    invoke-virtual {p0, v0, p2, v2}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    goto :goto_e

    .line 100
    :cond_23
    return-void
.end method

.method private static a(Landroid/content/Context;Landroid/net/Uri;)V
    .registers 3

    .prologue
    .line 91
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->revokeUriPermission(Landroid/net/Uri;I)V

    .line 92
    return-void
.end method

.method private static a(Landroid/content/Intent;Landroid/app/Activity;Lpl/aprilapps/easyphotopicker/EasyImage$Callbacks;)V
    .registers 6

    .prologue
    .line 308
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 309
    invoke-static {p1, v0}, Lpl/aprilapps/easyphotopicker/EasyImageFiles;->a(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    .line 310
    sget-object v1, Lpl/aprilapps/easyphotopicker/EasyImage$ImageSource;->b:Lpl/aprilapps/easyphotopicker/EasyImage$ImageSource;

    invoke-static {p1}, Lpl/aprilapps/easyphotopicker/EasyImage;->b(Landroid/content/Context;)I

    move-result v2

    invoke-interface {p2, v0, v1, v2}, Lpl/aprilapps/easyphotopicker/EasyImage$Callbacks;->a(Ljava/io/File;Lpl/aprilapps/easyphotopicker/EasyImage$ImageSource;I)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    .line 315
    :goto_11
    return-void

    .line 311
    :catch_12
    move-exception v0

    .line 312
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 313
    sget-object v1, Lpl/aprilapps/easyphotopicker/EasyImage$ImageSource;->b:Lpl/aprilapps/easyphotopicker/EasyImage$ImageSource;

    invoke-static {p1}, Lpl/aprilapps/easyphotopicker/EasyImage;->b(Landroid/content/Context;)I

    move-result v2

    invoke-interface {p2, v0, v1, v2}, Lpl/aprilapps/easyphotopicker/EasyImage$Callbacks;->a(Ljava/lang/Exception;Lpl/aprilapps/easyphotopicker/EasyImage$ImageSource;I)V

    goto :goto_11
.end method

.method private static b(Landroid/content/Context;)I
    .registers 4

    .prologue
    .line 142
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "pl.aprilapps.easyphotopicker.type"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static b(Landroid/content/Context;I)Landroid/content/Intent;
    .registers 5

    .prologue
    .line 75
    invoke-static {p0, p1}, Lpl/aprilapps/easyphotopicker/EasyImage;->c(Landroid/content/Context;I)V

    .line 77
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v0, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 79
    :try_start_b
    invoke-static {p0}, Lpl/aprilapps/easyphotopicker/EasyImage;->a(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    .line 81
    invoke-static {p0, v1, v0}, Lpl/aprilapps/easyphotopicker/EasyImage;->a(Landroid/content/Context;Landroid/content/Intent;Landroid/net/Uri;)V

    .line 82
    const-string/jumbo v2, "output"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_18} :catch_19

    .line 87
    :goto_18
    return-object v1

    .line 83
    :catch_19
    move-exception v0

    .line 84
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_18
.end method

.method public static b(Landroid/app/Activity;I)V
    .registers 4

    .prologue
    .line 230
    invoke-static {p0, p1}, Lpl/aprilapps/easyphotopicker/EasyImage;->b(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    .line 231
    const/16 v1, 0x1d23

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 232
    return-void
.end method

.method private static b(Landroid/content/Intent;Landroid/app/Activity;Lpl/aprilapps/easyphotopicker/EasyImage$Callbacks;)V
    .registers 6

    .prologue
    .line 319
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 320
    invoke-static {p1, v0}, Lpl/aprilapps/easyphotopicker/EasyImageFiles;->a(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    .line 321
    sget-object v1, Lpl/aprilapps/easyphotopicker/EasyImage$ImageSource;->a:Lpl/aprilapps/easyphotopicker/EasyImage$ImageSource;

    invoke-static {p1}, Lpl/aprilapps/easyphotopicker/EasyImage;->b(Landroid/content/Context;)I

    move-result v2

    invoke-interface {p2, v0, v1, v2}, Lpl/aprilapps/easyphotopicker/EasyImage$Callbacks;->a(Ljava/io/File;Lpl/aprilapps/easyphotopicker/EasyImage$ImageSource;I)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    .line 326
    :goto_11
    return-void

    .line 322
    :catch_12
    move-exception v0

    .line 323
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 324
    sget-object v1, Lpl/aprilapps/easyphotopicker/EasyImage$ImageSource;->a:Lpl/aprilapps/easyphotopicker/EasyImage$ImageSource;

    invoke-static {p1}, Lpl/aprilapps/easyphotopicker/EasyImage;->b(Landroid/content/Context;)I

    move-result v2

    invoke-interface {p2, v0, v1, v2}, Lpl/aprilapps/easyphotopicker/EasyImage$Callbacks;->a(Ljava/lang/Exception;Lpl/aprilapps/easyphotopicker/EasyImage$ImageSource;I)V

    goto :goto_11
.end method

.method private static c(Landroid/content/Context;)Ljava/io/File;
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 246
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v2, "pl.aprilapps.easyphotopicker.last_photo"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 247
    if-eqz v1, :cond_13

    .line 248
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 250
    :cond_13
    return-object v0
.end method

.method private static c(Landroid/content/Context;I)V
    .registers 4

    .prologue
    .line 138
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "pl.aprilapps.easyphotopicker.type"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 139
    return-void
.end method
