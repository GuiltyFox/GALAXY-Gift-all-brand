.class Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableDelegateState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "VectorDrawableCompat.java"


# instance fields
.field private final a:Landroid/graphics/drawable/Drawable$ConstantState;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable$ConstantState;)V
    .registers 2

    .prologue
    .line 730
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 731
    iput-object p1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableDelegateState;->a:Landroid/graphics/drawable/Drawable$ConstantState;

    .line 732
    return-void
.end method


# virtual methods
.method public canApplyTheme()Z
    .registers 2

    .prologue
    .line 758
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableDelegateState;->a:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->canApplyTheme()Z

    move-result v0

    return v0
.end method

.method public getChangingConfigurations()I
    .registers 2

    .prologue
    .line 763
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableDelegateState;->a:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->getChangingConfigurations()I

    move-result v0

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .registers 3

    .prologue
    .line 736
    new-instance v1, Landroid/support/graphics/drawable/VectorDrawableCompat;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Landroid/support/graphics/drawable/VectorDrawableCompat;-><init>(Landroid/support/graphics/drawable/VectorDrawableCompat$1;)V

    .line 737
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableDelegateState;->a:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/VectorDrawable;

    iput-object v0, v1, Landroid/support/graphics/drawable/VectorDrawableCompat;->a:Landroid/graphics/drawable/Drawable;

    .line 738
    return-object v1
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .registers 4

    .prologue
    .line 743
    new-instance v1, Landroid/support/graphics/drawable/VectorDrawableCompat;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Landroid/support/graphics/drawable/VectorDrawableCompat;-><init>(Landroid/support/graphics/drawable/VectorDrawableCompat$1;)V

    .line 744
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableDelegateState;->a:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/VectorDrawable;

    iput-object v0, v1, Landroid/support/graphics/drawable/VectorDrawableCompat;->a:Landroid/graphics/drawable/Drawable;

    .line 745
    return-object v1
.end method

.method public newDrawable(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .registers 5

    .prologue
    .line 750
    new-instance v1, Landroid/support/graphics/drawable/VectorDrawableCompat;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Landroid/support/graphics/drawable/VectorDrawableCompat;-><init>(Landroid/support/graphics/drawable/VectorDrawableCompat$1;)V

    .line 751
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableDelegateState;->a:Landroid/graphics/drawable/Drawable$ConstantState;

    .line 752
    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/VectorDrawable;

    iput-object v0, v1, Landroid/support/graphics/drawable/VectorDrawableCompat;->a:Landroid/graphics/drawable/Drawable;

    .line 753
    return-object v1
.end method
