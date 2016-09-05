.class Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$5$1;
.super Ljava/lang/Object;
.source "ShowCodeBlurDialog.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$5;->onClick(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$5;


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$5;)V
    .registers 2

    .prologue
    .line 596
    iput-object p1, p0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$5$1;->a:Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 5

    .prologue
    const/4 v2, 0x4

    .line 609
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$5$1;->a:Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$5;

    iget-object v0, v0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$5;->e:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 610
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$5$1;->a:Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$5;

    iget-object v0, v0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$5;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 611
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$5$1;->a:Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$5;

    iget-object v0, v0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$5;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 613
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$5$1;->a:Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$5;

    iget-object v0, v0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$5;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->clearAnimation()V

    .line 614
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$5$1;->a:Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$5;

    iget-object v0, v0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$5;->e:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$5$1;->a:Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$5;

    iget-object v1, v1, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$5;->h:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 615
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$5$1;->a:Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$5;

    iget-object v0, v0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$5;->e:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$5$1;->a:Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$5;

    iget-object v1, v1, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$5;->h:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 617
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    .prologue
    .line 604
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2

    .prologue
    .line 600
    return-void
.end method
