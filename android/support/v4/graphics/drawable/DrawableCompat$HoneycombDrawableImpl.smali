.class Landroid/support/v4/graphics/drawable/DrawableCompat$HoneycombDrawableImpl;
.super Landroid/support/v4/graphics/drawable/DrawableCompat$EclairDrawableImpl;
.source "DrawableCompat.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 157
    invoke-direct {p0}, Landroid/support/v4/graphics/drawable/DrawableCompat$EclairDrawableImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .prologue
    .line 160
    invoke-static {p1}, Landroid/support/v4/graphics/drawable/DrawableCompatHoneycomb;->a(Landroid/graphics/drawable/Drawable;)V

    .line 161
    return-void
.end method

.method public c(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 3

    .prologue
    .line 165
    invoke-static {p1}, Landroid/support/v4/graphics/drawable/DrawableCompatHoneycomb;->b(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method
