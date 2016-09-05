.class Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$5;
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

.field final synthetic e:Landroid/widget/LinearLayout;

.field final synthetic f:Landroid/widget/LinearLayout;

.field final synthetic g:Landroid/widget/TextView;

.field final synthetic h:Landroid/view/animation/Animation;

.field final synthetic i:Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/view/animation/Animation;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/view/animation/Animation;)V
    .registers 10

    .prologue
    .line 587
    iput-object p1, p0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$5;->i:Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;

    iput-object p2, p0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$5;->a:Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$5;->b:Landroid/widget/LinearLayout;

    iput-object p4, p0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$5;->c:Landroid/widget/LinearLayout;

    iput-object p5, p0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$5;->d:Landroid/view/animation/Animation;

    iput-object p6, p0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$5;->e:Landroid/widget/LinearLayout;

    iput-object p7, p0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$5;->f:Landroid/widget/LinearLayout;

    iput-object p8, p0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$5;->g:Landroid/widget/TextView;

    iput-object p9, p0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$5;->h:Landroid/view/animation/Animation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 592
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$5;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 593
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$5;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 594
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$5;->c:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 596
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$5;->d:Landroid/view/animation/Animation;

    new-instance v1, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$5$1;

    invoke-direct {v1, p0}, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$5$1;-><init>(Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$5;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 620
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$5;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_38

    .line 621
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$5;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->clearAnimation()V

    .line 622
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$5;->f:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$5;->d:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 623
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$5;->f:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$5;->d:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 630
    :goto_37
    return-void

    .line 625
    :cond_38
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$5;->g:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearAnimation()V

    .line 626
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$5;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$5;->d:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 627
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$5;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$5;->d:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_37
.end method
