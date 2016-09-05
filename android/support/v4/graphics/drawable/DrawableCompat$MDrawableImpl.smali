.class Landroid/support/v4/graphics/drawable/DrawableCompat$MDrawableImpl;
.super Landroid/support/v4/graphics/drawable/DrawableCompat$LollipopDrawableImpl;
.source "DrawableCompat.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 267
    invoke-direct {p0}, Landroid/support/v4/graphics/drawable/DrawableCompat$LollipopDrawableImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/graphics/drawable/Drawable;I)V
    .registers 3

    .prologue
    .line 270
    invoke-static {p1, p2}, Landroid/support/v4/graphics/drawable/DrawableCompatApi23;->a(Landroid/graphics/drawable/Drawable;I)V

    .line 271
    return-void
.end method

.method public c(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 281
    return-object p1
.end method

.method public d(Landroid/graphics/drawable/Drawable;)I
    .registers 3

    .prologue
    .line 275
    invoke-static {p1}, Landroid/support/v4/graphics/drawable/DrawableCompatApi23;->a(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    return v0
.end method
