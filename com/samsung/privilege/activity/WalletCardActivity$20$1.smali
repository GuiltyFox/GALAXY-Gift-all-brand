.class Lcom/samsung/privilege/activity/WalletCardActivity$20$1;
.super Ljava/lang/Object;
.source "WalletCardActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/WalletCardActivity$20;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/WalletCardActivity$20;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/WalletCardActivity$20;)V
    .registers 2

    .prologue
    .line 1492
    iput-object p1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$20$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$20;

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

    .line 1500
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$20$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$20;

    iget-boolean v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$20;->c:Z

    if-ne v0, v2, :cond_1c

    .line 1501
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$20$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$20;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$20;->e:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity;->ah:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1502
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$20$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$20;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$20;->e:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity;->z:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->performClick()Z

    .line 1513
    :cond_1b
    :goto_1b
    return-void

    .line 1503
    :cond_1c
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$20$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$20;

    iget-boolean v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$20;->d:Z

    if-ne v0, v2, :cond_1b

    .line 1504
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$20$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$20;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$20;->e:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity;->ah:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1505
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$20$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$20;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$20;->e:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity;->G:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1506
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$20$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$20;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$20;->e:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity;->E:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1507
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$20$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$20;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$20;->e:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->e(Lcom/samsung/privilege/activity/WalletCardActivity;)Lcom/bzbs/bean/DashboardItem;

    move-result-object v0

    iget-object v0, v0, Lcom/bzbs/bean/DashboardItem;->wallet_queue:Ljava/lang/String;

    const-string/jumbo v1, "DEMO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 1508
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$20$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$20;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$20;->e:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity;->r:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->performClick()Z

    goto :goto_1b

    .line 1510
    :cond_5a
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$20$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$20;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$20;->e:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->performClick()Z

    goto :goto_1b
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    .prologue
    .line 1518
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 4

    .prologue
    .line 1495
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$20$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$20;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$20;->b:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1496
    return-void
.end method
