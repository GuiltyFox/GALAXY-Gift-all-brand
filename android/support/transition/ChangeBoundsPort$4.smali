.class Landroid/support/transition/ChangeBoundsPort$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ChangeBoundsPort.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/transition/ChangeBoundsPort;->a(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/animation/Animator;
.end annotation


# instance fields
.field final synthetic a:Landroid/view/ViewGroup;

.field final synthetic b:Landroid/graphics/drawable/BitmapDrawable;

.field final synthetic c:Landroid/view/View;

.field final synthetic d:Landroid/support/transition/ChangeBoundsPort;


# direct methods
.method constructor <init>(Landroid/support/transition/ChangeBoundsPort;Landroid/view/ViewGroup;Landroid/graphics/drawable/BitmapDrawable;Landroid/view/View;)V
    .registers 5

    .prologue
    .line 335
    iput-object p1, p0, Landroid/support/transition/ChangeBoundsPort$4;->d:Landroid/support/transition/ChangeBoundsPort;

    iput-object p2, p0, Landroid/support/transition/ChangeBoundsPort$4;->a:Landroid/view/ViewGroup;

    iput-object p3, p0, Landroid/support/transition/ChangeBoundsPort$4;->b:Landroid/graphics/drawable/BitmapDrawable;

    iput-object p4, p0, Landroid/support/transition/ChangeBoundsPort$4;->c:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    .prologue
    .line 338
    iget-object v0, p0, Landroid/support/transition/ChangeBoundsPort$4;->a:Landroid/view/ViewGroup;

    invoke-static {v0}, Landroid/support/transition/ViewOverlay;->d(Landroid/view/View;)Landroid/support/transition/ViewOverlay;

    move-result-object v0

    iget-object v1, p0, Landroid/support/transition/ChangeBoundsPort$4;->b:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v1}, Landroid/support/transition/ViewOverlay;->b(Landroid/graphics/drawable/Drawable;)V

    .line 340
    iget-object v0, p0, Landroid/support/transition/ChangeBoundsPort$4;->c:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 341
    return-void
.end method
