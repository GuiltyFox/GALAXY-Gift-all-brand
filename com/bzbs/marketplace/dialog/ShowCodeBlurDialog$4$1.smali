.class Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$4$1;
.super Ljava/lang/Object;
.source "ShowCodeBlurDialog.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$4;->onClick(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$4;


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$4;)V
    .registers 2

    .prologue
    .line 550
    iput-object p1, p0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$4$1;->a:Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 5

    .prologue
    const/4 v2, 0x4

    .line 563
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$4$1;->a:Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$4;

    iget-object v0, v0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$4;->e:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 564
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$4$1;->a:Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$4;

    iget-object v0, v0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$4;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 565
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$4$1;->a:Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$4;

    iget-object v0, v0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$4;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 567
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$4$1;->a:Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$4;

    iget-object v0, v0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$4;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearAnimation()V

    .line 568
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$4$1;->a:Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$4;

    iget-object v0, v0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$4;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$4$1;->a:Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$4;

    iget-object v1, v1, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$4;->h:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 569
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$4$1;->a:Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$4;

    iget-object v0, v0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$4;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$4$1;->a:Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$4;

    iget-object v1, v1, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$4;->h:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 571
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    .prologue
    .line 558
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2

    .prologue
    .line 554
    return-void
.end method
