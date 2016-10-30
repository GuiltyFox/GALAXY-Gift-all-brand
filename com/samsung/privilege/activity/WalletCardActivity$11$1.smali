.class Lcom/samsung/privilege/activity/WalletCardActivity$11$1;
.super Ljava/lang/Object;
.source "WalletCardActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/WalletCardActivity$11;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/WalletCardActivity$11;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/WalletCardActivity$11;)V
    .registers 2

    .prologue
    .line 1053
    iput-object p1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$11$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 6

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1061
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$11$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$11;

    iget-boolean v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$11;->c:Z

    if-ne v0, v2, :cond_1c

    .line 1062
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$11$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$11;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$11;->e:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity;->Y:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1063
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$11$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$11;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$11;->e:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity;->q:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->performClick()Z

    .line 1070
    :cond_1b
    :goto_1b
    return-void

    .line 1064
    :cond_1c
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$11$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$11;

    iget-boolean v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$11;->d:Z

    if-ne v0, v2, :cond_1b

    .line 1065
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$11$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$11;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$11;->e:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity;->Y:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1066
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$11$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$11;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$11;->e:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity;->x:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1067
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$11$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$11;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$11;->e:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity;->v:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1068
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$11$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$11;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$11;->e:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity;->m:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->performClick()Z

    goto :goto_1b
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    .prologue
    .line 1075
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 4

    .prologue
    .line 1056
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$11$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$11;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$11;->b:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1057
    return-void
.end method
