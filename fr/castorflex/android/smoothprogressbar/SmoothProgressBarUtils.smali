.class public final Lfr/castorflex/android/smoothprogressbar/SmoothProgressBarUtils;
.super Ljava/lang/Object;
.source "SmoothProgressBarUtils.java"


# direct methods
.method public static a([IF)Landroid/graphics/drawable/Drawable;
    .registers 4

    .prologue
    .line 14
    if-eqz p0, :cond_5

    array-length v0, p0

    if-nez v0, :cond_7

    :cond_5
    const/4 v0, 0x0

    .line 16
    :goto_6
    return-object v0

    :cond_7
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v1, Lfr/castorflex/android/smoothprogressbar/ColorsShape;

    invoke-direct {v1, p1, p0}, Lfr/castorflex/android/smoothprogressbar/ColorsShape;-><init>(F[I)V

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    goto :goto_6
.end method

.method static a(F)V
    .registers 3

    .prologue
    .line 20
    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_e

    .line 21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Speed must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 22
    :cond_e
    return-void
.end method

.method static a(FLjava/lang/String;)V
    .registers 7

    .prologue
    .line 35
    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gez v0, :cond_1f

    .line 36
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "%s %d must be positive"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_1f
    return-void
.end method

.method static a(ILjava/lang/String;)V
    .registers 6

    .prologue
    .line 40
    if-gtz p0, :cond_15

    .line 41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "%s must not be null"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_15
    return-void
.end method

.method static a(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 45
    if-nez p0, :cond_15

    .line 46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "%s must be not null"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_15
    return-void
.end method

.method static a([I)V
    .registers 3

    .prologue
    .line 25
    if-eqz p0, :cond_5

    array-length v0, p0

    if-nez v0, :cond_e

    .line 26
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "You must provide at least 1 color"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27
    :cond_e
    return-void
.end method
