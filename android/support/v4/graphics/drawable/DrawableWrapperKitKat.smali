.class Landroid/support/v4/graphics/drawable/DrawableWrapperKitKat;
.super Landroid/support/v4/graphics/drawable/DrawableWrapperHoneycomb;
.source "DrawableWrapperKitKat.java"


# direct methods
.method constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/support/v4/graphics/drawable/DrawableWrapperHoneycomb;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 28
    return-void
.end method

.method constructor <init>(Landroid/support/v4/graphics/drawable/DrawableWrapperDonut$DrawableWrapperState;Landroid/content/res/Resources;)V
    .registers 3

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/support/v4/graphics/drawable/DrawableWrapperHoneycomb;-><init>(Landroid/support/v4/graphics/drawable/DrawableWrapperDonut$DrawableWrapperState;Landroid/content/res/Resources;)V

    .line 32
    return-void
.end method


# virtual methods
.method b()Landroid/support/v4/graphics/drawable/DrawableWrapperDonut$DrawableWrapperState;
    .registers 4

    .prologue
    .line 47
    new-instance v0, Landroid/support/v4/graphics/drawable/DrawableWrapperKitKat$DrawableWrapperStateKitKat;

    iget-object v1, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperKitKat;->b:Landroid/support/v4/graphics/drawable/DrawableWrapperDonut$DrawableWrapperState;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/support/v4/graphics/drawable/DrawableWrapperKitKat$DrawableWrapperStateKitKat;-><init>(Landroid/support/v4/graphics/drawable/DrawableWrapperDonut$DrawableWrapperState;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public isAutoMirrored()Z
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperKitKat;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isAutoMirrored()Z

    move-result v0

    return v0
.end method

.method public setAutoMirrored(Z)V
    .registers 3

    .prologue
    .line 36
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperKitKat;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 37
    return-void
.end method
