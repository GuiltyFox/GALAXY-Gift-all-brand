.class Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$3;
.super Ljava/lang/Object;
.source "ShowCodeBlurDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;->b(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/LinearLayout;

.field final synthetic b:Landroid/widget/LinearLayout;

.field final synthetic c:Landroid/widget/LinearLayout;

.field final synthetic d:Landroid/view/animation/Animation;

.field final synthetic e:Landroid/widget/TextView;

.field final synthetic f:Landroid/widget/LinearLayout;

.field final synthetic g:Landroid/widget/LinearLayout;

.field final synthetic h:Landroid/view/animation/Animation;

.field final synthetic i:Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/view/animation/Animation;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/view/animation/Animation;)V
    .registers 10

    .prologue
    .line 496
    iput-object p1, p0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$3;->i:Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;

    iput-object p2, p0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$3;->a:Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$3;->b:Landroid/widget/LinearLayout;

    iput-object p4, p0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$3;->c:Landroid/widget/LinearLayout;

    iput-object p5, p0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$3;->d:Landroid/view/animation/Animation;

    iput-object p6, p0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$3;->e:Landroid/widget/TextView;

    iput-object p7, p0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$3;->f:Landroid/widget/LinearLayout;

    iput-object p8, p0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$3;->g:Landroid/widget/LinearLayout;

    iput-object p9, p0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$3;->h:Landroid/view/animation/Animation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 501
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$3;->a:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 502
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$3;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 503
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$3;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 505
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$3;->d:Landroid/view/animation/Animation;

    new-instance v1, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$3$1;

    invoke-direct {v1, p0}, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$3$1;-><init>(Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$3;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 528
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$3;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_38

    .line 529
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$3;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearAnimation()V

    .line 530
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$3;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$3;->d:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 531
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$3;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$3;->d:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 538
    :goto_37
    return-void

    .line 533
    :cond_38
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$3;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->clearAnimation()V

    .line 534
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$3;->f:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$3;->d:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 535
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$3;->f:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$3;->d:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_37
.end method
