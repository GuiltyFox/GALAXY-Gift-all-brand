.class Landroid/support/v7/widget/DefaultItemAnimator$8;
.super Landroid/support/v7/widget/DefaultItemAnimator$VpaListenerAdapter;
.source "DefaultItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/DefaultItemAnimator;->animateChangeImpl(Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;

.field final synthetic b:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

.field final synthetic c:Landroid/view/View;

.field final synthetic d:Landroid/support/v7/widget/DefaultItemAnimator;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/DefaultItemAnimator;Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;)V
    .registers 6

    .prologue
    .line 372
    iput-object p1, p0, Landroid/support/v7/widget/DefaultItemAnimator$8;->d:Landroid/support/v7/widget/DefaultItemAnimator;

    iput-object p2, p0, Landroid/support/v7/widget/DefaultItemAnimator$8;->a:Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;

    iput-object p3, p0, Landroid/support/v7/widget/DefaultItemAnimator$8;->b:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    iput-object p4, p0, Landroid/support/v7/widget/DefaultItemAnimator$8;->c:Landroid/view/View;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/DefaultItemAnimator$VpaListenerAdapter;-><init>(Landroid/support/v7/widget/DefaultItemAnimator$1;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 379
    iget-object v0, p0, Landroid/support/v7/widget/DefaultItemAnimator$8;->b:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->a(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 380
    iget-object v0, p0, Landroid/support/v7/widget/DefaultItemAnimator$8;->c:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->c(Landroid/view/View;F)V

    .line 381
    iget-object v0, p0, Landroid/support/v7/widget/DefaultItemAnimator$8;->c:Landroid/view/View;

    invoke-static {v0, v2}, Landroid/support/v4/view/ViewCompat;->a(Landroid/view/View;F)V

    .line 382
    iget-object v0, p0, Landroid/support/v7/widget/DefaultItemAnimator$8;->c:Landroid/view/View;

    invoke-static {v0, v2}, Landroid/support/v4/view/ViewCompat;->b(Landroid/view/View;F)V

    .line 383
    iget-object v0, p0, Landroid/support/v7/widget/DefaultItemAnimator$8;->d:Landroid/support/v7/widget/DefaultItemAnimator;

    iget-object v1, p0, Landroid/support/v7/widget/DefaultItemAnimator$8;->a:Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;

    iget-object v1, v1, Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;->b:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/DefaultItemAnimator;->dispatchChangeFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;Z)V

    .line 384
    iget-object v0, p0, Landroid/support/v7/widget/DefaultItemAnimator$8;->d:Landroid/support/v7/widget/DefaultItemAnimator;

    # getter for: Landroid/support/v7/widget/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;
    invoke-static {v0}, Landroid/support/v7/widget/DefaultItemAnimator;->access$1300(Landroid/support/v7/widget/DefaultItemAnimator;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/DefaultItemAnimator$8;->a:Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;

    iget-object v1, v1, Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;->b:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 385
    iget-object v0, p0, Landroid/support/v7/widget/DefaultItemAnimator$8;->d:Landroid/support/v7/widget/DefaultItemAnimator;

    # invokes: Landroid/support/v7/widget/DefaultItemAnimator;->dispatchFinishedWhenDone()V
    invoke-static {v0}, Landroid/support/v7/widget/DefaultItemAnimator;->access$800(Landroid/support/v7/widget/DefaultItemAnimator;)V

    .line 386
    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 375
    iget-object v0, p0, Landroid/support/v7/widget/DefaultItemAnimator$8;->d:Landroid/support/v7/widget/DefaultItemAnimator;

    iget-object v1, p0, Landroid/support/v7/widget/DefaultItemAnimator$8;->a:Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;

    iget-object v1, v1, Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;->b:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/DefaultItemAnimator;->dispatchChangeStarting(Landroid/support/v7/widget/RecyclerView$ViewHolder;Z)V

    .line 376
    return-void
.end method
