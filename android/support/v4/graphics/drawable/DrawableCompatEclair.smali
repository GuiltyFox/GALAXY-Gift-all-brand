.class Landroid/support/v4/graphics/drawable/DrawableCompatEclair;
.super Ljava/lang/Object;
.source "DrawableCompatEclair.java"


# direct methods
.method public static a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 26
    instance-of v0, p0, Landroid/support/v4/graphics/drawable/TintAwareDrawable;

    if-nez v0, :cond_a

    .line 27
    new-instance v0, Landroid/support/v4/graphics/drawable/DrawableWrapperEclair;

    invoke-direct {v0, p0}, Landroid/support/v4/graphics/drawable/DrawableWrapperEclair;-><init>(Landroid/graphics/drawable/Drawable;)V

    move-object p0, v0

    .line 29
    :cond_a
    return-object p0
.end method
