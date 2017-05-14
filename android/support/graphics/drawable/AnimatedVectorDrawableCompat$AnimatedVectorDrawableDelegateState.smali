.class Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableDelegateState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "AnimatedVectorDrawableCompat.java"


# instance fields
.field private final a:Landroid/graphics/drawable/Drawable$ConstantState;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable$ConstantState;)V
    .registers 2

    .prologue
    .line 430
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 431
    iput-object p1, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableDelegateState;->a:Landroid/graphics/drawable/Drawable$ConstantState;

    .line 432
    return-void
.end method


# virtual methods
.method public canApplyTheme()Z
    .registers 2

    .prologue
    .line 463
    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableDelegateState;->a:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->canApplyTheme()Z

    move-result v0

    return v0
.end method

.method public getChangingConfigurations()I
    .registers 2

    .prologue
    .line 468
    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableDelegateState;->a:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->getChangingConfigurations()I

    move-result v0

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .registers 4

    .prologue
    .line 436
    new-instance v0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;-><init>(Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$1;)V

    .line 438
    iget-object v1, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableDelegateState;->a:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->a:Landroid/graphics/drawable/Drawable;

    .line 439
    iget-object v1, v0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->a:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->a(Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;)Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 440
    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .registers 5

    .prologue
    .line 445
    new-instance v0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;-><init>(Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$1;)V

    .line 447
    iget-object v1, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableDelegateState;->a:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->a:Landroid/graphics/drawable/Drawable;

    .line 448
    iget-object v1, v0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->a:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->a(Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;)Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 449
    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .registers 6

    .prologue
    .line 454
    new-instance v0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;-><init>(Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$1;)V

    .line 456
    iget-object v1, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableDelegateState;->a:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->a:Landroid/graphics/drawable/Drawable;

    .line 457
    iget-object v1, v0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->a:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->a(Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;)Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 458
    return-object v0
.end method
