.class Landroid/support/v4/graphics/drawable/DrawableWrapperDonut$DrawableWrapperStateDonut;
.super Landroid/support/v4/graphics/drawable/DrawableWrapperDonut$DrawableWrapperState;
.source "DrawableWrapperDonut.java"


# direct methods
.method constructor <init>(Landroid/support/v4/graphics/drawable/DrawableWrapperDonut$DrawableWrapperState;Landroid/content/res/Resources;)V
    .registers 3

    .prologue
    .line 375
    invoke-direct {p0, p1, p2}, Landroid/support/v4/graphics/drawable/DrawableWrapperDonut$DrawableWrapperState;-><init>(Landroid/support/v4/graphics/drawable/DrawableWrapperDonut$DrawableWrapperState;Landroid/content/res/Resources;)V

    .line 376
    return-void
.end method


# virtual methods
.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .registers 3

    .prologue
    .line 380
    new-instance v0, Landroid/support/v4/graphics/drawable/DrawableWrapperDonut;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/graphics/drawable/DrawableWrapperDonut;-><init>(Landroid/support/v4/graphics/drawable/DrawableWrapperDonut$DrawableWrapperState;Landroid/content/res/Resources;)V

    return-object v0
.end method
