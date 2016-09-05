.class final Landroid/support/v4/view/ViewPropertyAnimatorCompatKK$1;
.super Ljava/lang/Object;
.source "ViewPropertyAnimatorCompatKK.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/view/ViewPropertyAnimatorCompatKK;->a(Landroid/view/View;Landroid/support/v4/view/ViewPropertyAnimatorUpdateListener;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/view/ViewPropertyAnimatorUpdateListener;

.field final synthetic b:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/support/v4/view/ViewPropertyAnimatorUpdateListener;Landroid/view/View;)V
    .registers 3

    .prologue
    .line 27
    iput-object p1, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompatKK$1;->a:Landroid/support/v4/view/ViewPropertyAnimatorUpdateListener;

    iput-object p2, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompatKK$1;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4

    .prologue
    .line 30
    iget-object v0, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompatKK$1;->a:Landroid/support/v4/view/ViewPropertyAnimatorUpdateListener;

    iget-object v1, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompatKK$1;->b:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorUpdateListener;->a(Landroid/view/View;)V

    .line 31
    return-void
.end method
