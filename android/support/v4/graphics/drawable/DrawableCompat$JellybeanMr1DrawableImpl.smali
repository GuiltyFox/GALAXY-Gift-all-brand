.class Landroid/support/v4/graphics/drawable/DrawableCompat$JellybeanMr1DrawableImpl;
.super Landroid/support/v4/graphics/drawable/DrawableCompat$HoneycombDrawableImpl;
.source "DrawableCompat.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 169
    invoke-direct {p0}, Landroid/support/v4/graphics/drawable/DrawableCompat$HoneycombDrawableImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/graphics/drawable/Drawable;I)V
    .registers 3

    .prologue
    .line 172
    invoke-static {p1, p2}, Landroid/support/v4/graphics/drawable/DrawableCompatJellybeanMr1;->a(Landroid/graphics/drawable/Drawable;I)V

    .line 173
    return-void
.end method

.method public d(Landroid/graphics/drawable/Drawable;)I
    .registers 3

    .prologue
    .line 177
    invoke-static {p1}, Landroid/support/v4/graphics/drawable/DrawableCompatJellybeanMr1;->a(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    .line 178
    if-ltz v0, :cond_7

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method
