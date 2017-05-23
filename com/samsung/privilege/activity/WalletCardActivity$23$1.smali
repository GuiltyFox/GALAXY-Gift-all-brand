.class Lcom/samsung/privilege/activity/WalletCardActivity$23$1;
.super Ljava/lang/Object;
.source "WalletCardActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/WalletCardActivity$23;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/WalletCardActivity$23;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/WalletCardActivity$23;)V
    .registers 2

    .prologue
    .line 1949
    iput-object p1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$23$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$23;

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

    .line 1957
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$23$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$23;

    iget-boolean v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$23;->c:Z

    if-ne v0, v2, :cond_1c

    .line 1958
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$23$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$23;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$23;->e:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity;->ai:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1959
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$23$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$23;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$23;->e:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity;->y:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->performClick()Z

    .line 1970
    :cond_1b
    :goto_1b
    return-void

    .line 1960
    :cond_1c
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$23$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$23;

    iget-boolean v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$23;->d:Z

    if-ne v0, v2, :cond_1b

    .line 1961
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$23$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$23;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$23;->e:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity;->ai:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1962
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$23$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$23;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$23;->e:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity;->F:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1963
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$23$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$23;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$23;->e:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity;->D:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1964
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$23$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$23;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$23;->e:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->d(Lcom/samsung/privilege/activity/WalletCardActivity;)Lcom/bzbs/bean/DashboardItem;

    move-result-object v0

    iget-object v0, v0, Lcom/bzbs/bean/DashboardItem;->wallet_queue:Ljava/lang/String;

    const-string/jumbo v1, "DEMO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 1965
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$23$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$23;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$23;->e:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity;->q:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->performClick()Z

    goto :goto_1b

    .line 1967
    :cond_5a
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$23$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$23;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$23;->e:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity;->m:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->performClick()Z

    goto :goto_1b
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    .prologue
    .line 1975
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 4

    .prologue
    .line 1952
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$23$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$23;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$23;->b:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1953
    return-void
.end method
