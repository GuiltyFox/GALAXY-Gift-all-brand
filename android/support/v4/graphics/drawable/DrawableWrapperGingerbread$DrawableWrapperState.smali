.class public abstract Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "DrawableWrapperGingerbread.java"


# instance fields
.field a:I

.field b:Landroid/graphics/drawable/Drawable$ConstantState;

.field c:Landroid/content/res/ColorStateList;

.field d:Landroid/graphics/PorterDuff$Mode;


# direct methods
.method constructor <init>(Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;Landroid/content/res/Resources;)V
    .registers 4

    .prologue
    .line 345
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 342
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;->c:Landroid/content/res/ColorStateList;

    .line 343
    sget-object v0, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->a:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;->d:Landroid/graphics/PorterDuff$Mode;

    .line 346
    if-eqz p1, :cond_1c

    .line 347
    iget v0, p1, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;->a:I

    iput v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;->a:I

    .line 348
    iget-object v0, p1, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;->b:Landroid/graphics/drawable/Drawable$ConstantState;

    iput-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;->b:Landroid/graphics/drawable/Drawable$ConstantState;

    .line 349
    iget-object v0, p1, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;->c:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;->c:Landroid/content/res/ColorStateList;

    .line 350
    iget-object v0, p1, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;->d:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;->d:Landroid/graphics/PorterDuff$Mode;

    .line 352
    :cond_1c
    return-void
.end method


# virtual methods
.method a()Z
    .registers 2

    .prologue
    .line 368
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;->b:Landroid/graphics/drawable/Drawable$ConstantState;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public getChangingConfigurations()I
    .registers 3

    .prologue
    .line 363
    iget v1, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;->a:I

    iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;->b:Landroid/graphics/drawable/Drawable$ConstantState;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;->b:Landroid/graphics/drawable/Drawable$ConstantState;

    .line 364
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->getChangingConfigurations()I

    move-result v0

    :goto_c
    or-int/2addr v0, v1

    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 356
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public abstract newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
.end method
