.class Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$3$1;
.super Ljava/lang/Object;
.source "ShowCodeBlurDialog.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$3;->onClick(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$3;


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$3;)V
    .registers 2

    .prologue
    .line 505
    iput-object p1, p0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$3$1;->a:Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4

    .prologue
    const/4 v1, 0x4

    .line 518
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$3$1;->a:Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$3;

    iget-object v0, v0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$3;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 519
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$3$1;->a:Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$3;

    iget-object v0, v0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$3;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 520
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$3$1;->a:Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$3;

    iget-object v0, v0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$3;->g:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 522
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$3$1;->a:Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$3;

    iget-object v0, v0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$3;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->clearAnimation()V

    .line 523
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$3$1;->a:Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$3;

    iget-object v0, v0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$3;->g:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$3$1;->a:Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$3;

    iget-object v1, v1, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$3;->h:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 524
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$3$1;->a:Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$3;

    iget-object v0, v0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$3;->g:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$3$1;->a:Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$3;

    iget-object v1, v1, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$3;->h:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 525
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    .prologue
    .line 513
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2

    .prologue
    .line 509
    return-void
.end method
