.class Landroid/support/v4/graphics/drawable/DrawableCompat$EclairDrawableImpl;
.super Landroid/support/v4/graphics/drawable/DrawableCompat$BaseDrawableImpl;
.source "DrawableCompat.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 147
    invoke-direct {p0}, Landroid/support/v4/graphics/drawable/DrawableCompat$BaseDrawableImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 3

    .prologue
    .line 150
    invoke-static {p1}, Landroid/support/v4/graphics/drawable/DrawableCompatEclair;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method
