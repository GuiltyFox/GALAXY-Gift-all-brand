.class public final Landroid/support/v4/graphics/drawable/DrawableCompat;
.super Ljava/lang/Object;
.source "DrawableCompat.java"


# static fields
.field static final a:Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 290
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 291
    const/16 v1, 0x17

    if-lt v0, v1, :cond_e

    .line 292
    new-instance v0, Landroid/support/v4/graphics/drawable/DrawableCompat$MDrawableImpl;

    invoke-direct {v0}, Landroid/support/v4/graphics/drawable/DrawableCompat$MDrawableImpl;-><init>()V

    sput-object v0, Landroid/support/v4/graphics/drawable/DrawableCompat;->a:Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;

    .line 306
    :goto_d
    return-void

    .line 293
    :cond_e
    const/16 v1, 0x15

    if-lt v0, v1, :cond_1a

    .line 294
    new-instance v0, Landroid/support/v4/graphics/drawable/DrawableCompat$LollipopDrawableImpl;

    invoke-direct {v0}, Landroid/support/v4/graphics/drawable/DrawableCompat$LollipopDrawableImpl;-><init>()V

    sput-object v0, Landroid/support/v4/graphics/drawable/DrawableCompat;->a:Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;

    goto :goto_d

    .line 295
    :cond_1a
    const/16 v1, 0x13

    if-lt v0, v1, :cond_26

    .line 296
    new-instance v0, Landroid/support/v4/graphics/drawable/DrawableCompat$KitKatDrawableImpl;

    invoke-direct {v0}, Landroid/support/v4/graphics/drawable/DrawableCompat$KitKatDrawableImpl;-><init>()V

    sput-object v0, Landroid/support/v4/graphics/drawable/DrawableCompat;->a:Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;

    goto :goto_d

    .line 297
    :cond_26
    const/16 v1, 0x11

    if-lt v0, v1, :cond_32

    .line 298
    new-instance v0, Landroid/support/v4/graphics/drawable/DrawableCompat$JellybeanMr1DrawableImpl;

    invoke-direct {v0}, Landroid/support/v4/graphics/drawable/DrawableCompat$JellybeanMr1DrawableImpl;-><init>()V

    sput-object v0, Landroid/support/v4/graphics/drawable/DrawableCompat;->a:Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;

    goto :goto_d

    .line 299
    :cond_32
    const/16 v1, 0xb

    if-lt v0, v1, :cond_3e

    .line 300
    new-instance v0, Landroid/support/v4/graphics/drawable/DrawableCompat$HoneycombDrawableImpl;

    invoke-direct {v0}, Landroid/support/v4/graphics/drawable/DrawableCompat$HoneycombDrawableImpl;-><init>()V

    sput-object v0, Landroid/support/v4/graphics/drawable/DrawableCompat;->a:Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;

    goto :goto_d

    .line 301
    :cond_3e
    const/4 v1, 0x5

    if-lt v0, v1, :cond_49

    .line 302
    new-instance v0, Landroid/support/v4/graphics/drawable/DrawableCompat$EclairDrawableImpl;

    invoke-direct {v0}, Landroid/support/v4/graphics/drawable/DrawableCompat$EclairDrawableImpl;-><init>()V

    sput-object v0, Landroid/support/v4/graphics/drawable/DrawableCompat;->a:Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;

    goto :goto_d

    .line 304
    :cond_49
    new-instance v0, Landroid/support/v4/graphics/drawable/DrawableCompat$BaseDrawableImpl;

    invoke-direct {v0}, Landroid/support/v4/graphics/drawable/DrawableCompat$BaseDrawableImpl;-><init>()V

    sput-object v0, Landroid/support/v4/graphics/drawable/DrawableCompat;->a:Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;

    goto :goto_d
.end method

.method public static a(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .prologue
    .line 317
    sget-object v0, Landroid/support/v4/graphics/drawable/DrawableCompat;->a:Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;->a(Landroid/graphics/drawable/Drawable;)V

    .line 318
    return-void
.end method

.method public static a(Landroid/graphics/drawable/Drawable;FF)V
    .registers 4

    .prologue
    .line 359
    sget-object v0, Landroid/support/v4/graphics/drawable/DrawableCompat;->a:Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;

    invoke-interface {v0, p0, p1, p2}, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;->a(Landroid/graphics/drawable/Drawable;FF)V

    .line 360
    return-void
.end method

.method public static a(Landroid/graphics/drawable/Drawable;I)V
    .registers 3

    .prologue
    .line 380
    sget-object v0, Landroid/support/v4/graphics/drawable/DrawableCompat;->a:Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;->a(Landroid/graphics/drawable/Drawable;I)V

    .line 381
    return-void
.end method

.method public static a(Landroid/graphics/drawable/Drawable;IIII)V
    .registers 11

    .prologue
    .line 370
    sget-object v0, Landroid/support/v4/graphics/drawable/DrawableCompat;->a:Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;->a(Landroid/graphics/drawable/Drawable;IIII)V

    .line 371
    return-void
.end method

.method public static a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V
    .registers 3

    .prologue
    .line 390
    sget-object v0, Landroid/support/v4/graphics/drawable/DrawableCompat;->a:Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 391
    return-void
.end method

.method public static a(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources$Theme;)V
    .registers 3

    .prologue
    .line 417
    sget-object v0, Landroid/support/v4/graphics/drawable/DrawableCompat;->a:Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources$Theme;)V

    .line 418
    return-void
.end method

.method public static a(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .registers 11

    .prologue
    .line 449
    sget-object v0, Landroid/support/v4/graphics/drawable/DrawableCompat;->a:Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 450
    return-void
.end method

.method public static a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V
    .registers 3

    .prologue
    .line 400
    sget-object v0, Landroid/support/v4/graphics/drawable/DrawableCompat;->a:Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 401
    return-void
.end method

.method public static a(Landroid/graphics/drawable/Drawable;Z)V
    .registers 3

    .prologue
    .line 333
    sget-object v0, Landroid/support/v4/graphics/drawable/DrawableCompat;->a:Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;->a(Landroid/graphics/drawable/Drawable;Z)V

    .line 334
    return-void
.end method

.method public static b(Landroid/graphics/drawable/Drawable;I)V
    .registers 3

    .prologue
    .line 512
    sget-object v0, Landroid/support/v4/graphics/drawable/DrawableCompat;->a:Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;->b(Landroid/graphics/drawable/Drawable;I)V

    .line 513
    return-void
.end method

.method public static b(Landroid/graphics/drawable/Drawable;)Z
    .registers 2

    .prologue
    .line 348
    sget-object v0, Landroid/support/v4/graphics/drawable/DrawableCompat;->a:Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;->b(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    return v0
.end method

.method public static c(Landroid/graphics/drawable/Drawable;)I
    .registers 2

    .prologue
    .line 410
    sget-object v0, Landroid/support/v4/graphics/drawable/DrawableCompat;->a:Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;->e(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    return v0
.end method

.method public static d(Landroid/graphics/drawable/Drawable;)Z
    .registers 2

    .prologue
    .line 424
    sget-object v0, Landroid/support/v4/graphics/drawable/DrawableCompat;->a:Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;->f(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    return v0
.end method

.method public static e(Landroid/graphics/drawable/Drawable;)Landroid/graphics/ColorFilter;
    .registers 2

    .prologue
    .line 433
    sget-object v0, Landroid/support/v4/graphics/drawable/DrawableCompat;->a:Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;->g(Landroid/graphics/drawable/Drawable;)Landroid/graphics/ColorFilter;

    move-result-object v0

    return-object v0
.end method

.method public static f(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 481
    sget-object v0, Landroid/support/v4/graphics/drawable/DrawableCompat;->a:Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;->c(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static g(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/graphics/drawable/Drawable;",
            ">(",
            "Landroid/graphics/drawable/Drawable;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 495
    instance-of v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapper;

    if-eqz v0, :cond_a

    .line 496
    check-cast p0, Landroid/support/v4/graphics/drawable/DrawableWrapper;

    invoke-interface {p0}, Landroid/support/v4/graphics/drawable/DrawableWrapper;->a()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 498
    :cond_a
    return-object p0
.end method

.method public static h(Landroid/graphics/drawable/Drawable;)I
    .registers 2

    .prologue
    .line 523
    sget-object v0, Landroid/support/v4/graphics/drawable/DrawableCompat;->a:Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;->d(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    return v0
.end method
