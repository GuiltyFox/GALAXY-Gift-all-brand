.class Lcom/samsung/privilege/activity/WalletCardActivity$26$1;
.super Ljava/lang/Object;
.source "WalletCardActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/WalletCardActivity$26;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/WalletCardActivity$26;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/WalletCardActivity$26;)V
    .registers 2

    .prologue
    .line 2297
    iput-object p1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$26$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$26;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 6

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 2305
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$26$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$26;

    iget-boolean v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$26;->c:Z

    if-ne v0, v3, :cond_1b

    .line 2306
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$26$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$26;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$26;->e:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity;->an:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2307
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$26$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$26;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$26;->e:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity;->y:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->performClick()Z

    .line 2324
    :cond_1a
    :goto_1a
    return-void

    .line 2308
    :cond_1b
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$26$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$26;

    iget-boolean v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$26;->d:Z

    if-ne v0, v3, :cond_1a

    .line 2309
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$26$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$26;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$26;->e:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity;->an:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2310
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$26$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$26;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$26;->e:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity;->I:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2311
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$26$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$26;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$26;->e:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity;->G:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2313
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$26$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$26;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$26;->e:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$26$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$26;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$26;->e:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/WalletCardActivity;->d(Lcom/samsung/privilege/activity/WalletCardActivity;)Lcom/bzbs/bean/DashboardItem;

    move-result-object v1

    iget-object v1, v1, Lcom/bzbs/bean/DashboardItem;->wallet_issuer:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bzbs/data/UserLogin;->v(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 2314
    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$26$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$26;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$26;->e:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/WalletCardActivity;->d(Lcom/samsung/privilege/activity/WalletCardActivity;)Lcom/bzbs/bean/DashboardItem;

    move-result-object v1

    iget-object v1, v1, Lcom/bzbs/bean/DashboardItem;->wallet_queue:Ljava/lang/String;

    const-string/jumbo v2, "DEMO"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_72

    .line 2315
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$26$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$26;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$26;->e:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity;->q:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->performClick()Z

    goto :goto_1a

    .line 2316
    :cond_72
    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$26$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$26;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$26;->e:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/WalletCardActivity;->d(Lcom/samsung/privilege/activity/WalletCardActivity;)Lcom/bzbs/bean/DashboardItem;

    move-result-object v1

    iget-object v1, v1, Lcom/bzbs/bean/DashboardItem;->wallet_dashboard_key_activated:Ljava/lang/String;

    if-eqz v1, :cond_9e

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$26$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$26;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$26;->e:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/WalletCardActivity;->d(Lcom/samsung/privilege/activity/WalletCardActivity;)Lcom/bzbs/bean/DashboardItem;

    move-result-object v1

    iget-object v1, v1, Lcom/bzbs/bean/DashboardItem;->wallet_dashboard_key_activated:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9e

    if-ne v0, v3, :cond_9e

    .line 2317
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$26$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$26;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$26;->e:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity;->u:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->performClick()Z

    goto/16 :goto_1a

    .line 2318
    :cond_9e
    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$26$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$26;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$26;->e:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/WalletCardActivity;->d(Lcom/samsung/privilege/activity/WalletCardActivity;)Lcom/bzbs/bean/DashboardItem;

    move-result-object v1

    iget-object v1, v1, Lcom/bzbs/bean/DashboardItem;->wallet_dashboard_key_inactivate:Ljava/lang/String;

    if-eqz v1, :cond_ca

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$26$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$26;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$26;->e:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/WalletCardActivity;->d(Lcom/samsung/privilege/activity/WalletCardActivity;)Lcom/bzbs/bean/DashboardItem;

    move-result-object v1

    iget-object v1, v1, Lcom/bzbs/bean/DashboardItem;->wallet_dashboard_key_inactivate:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ca

    if-nez v0, :cond_ca

    .line 2319
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$26$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$26;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$26;->e:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity;->u:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->performClick()Z

    goto/16 :goto_1a

    .line 2321
    :cond_ca
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$26$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$26;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$26;->e:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity;->m:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->performClick()Z

    goto/16 :goto_1a
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    .prologue
    .line 2329
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 4

    .prologue
    .line 2300
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$26$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$26;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$26;->b:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2301
    return-void
.end method
