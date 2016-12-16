.class final Lcom/samsung/privilege/holder/DashboardHolder_wallet$5;
.super Ljava/lang/Object;
.source "DashboardHolder_wallet.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/holder/DashboardHolder_wallet;->a(Landroid/app/Activity;Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Landroid/os/Handler;Landroid/support/v7/widget/RecyclerView$ViewHolder;Lcom/bzbs/bean/DashboardItem;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/samsung/privilege/holder/DashboardHolder_wallet;

.field final synthetic c:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

.field final synthetic d:Landroid/os/Handler;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcom/bzbs/bean/DashboardItem;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/samsung/privilege/holder/DashboardHolder_wallet;Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Landroid/os/Handler;Ljava/lang/String;Lcom/bzbs/bean/DashboardItem;)V
    .registers 7

    .prologue
    .line 522
    iput-object p1, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$5;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$5;->b:Lcom/samsung/privilege/holder/DashboardHolder_wallet;

    iput-object p3, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$5;->c:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    iput-object p4, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$5;->d:Landroid/os/Handler;

    iput-object p5, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$5;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$5;->f:Lcom/bzbs/bean/DashboardItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7

    .prologue
    .line 525
    invoke-static {}, Lcom/bzbs/util/BBUtil;->a()Z

    move-result v0

    if-nez v0, :cond_15

    .line 526
    iget-object v0, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$5;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$5;->a:Landroid/app/Activity;

    const v2, 0x7f0900c4

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/DialogUtil;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 560
    :cond_14
    :goto_14
    return-void

    .line 528
    :cond_15
    iget-object v0, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$5;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 530
    if-eqz v0, :cond_81

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_81

    .line 531
    iget-object v0, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$5;->b:Lcom/samsung/privilege/holder/DashboardHolder_wallet;

    iget-object v0, v0, Lcom/samsung/privilege/holder/DashboardHolder_wallet;->v:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 533
    if-eqz v0, :cond_14

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 534
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$5;->a:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 535
    iget-object v2, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$5;->a:Landroid/app/Activity;

    const v3, 0x7f09040b

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 536
    iget-object v2, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$5;->a:Landroid/app/Activity;

    const v3, 0x7f09039b

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string/jumbo v3, "Yes"

    new-instance v4, Lcom/samsung/privilege/holder/DashboardHolder_wallet$5$2;

    invoke-direct {v4, p0, v0}, Lcom/samsung/privilege/holder/DashboardHolder_wallet$5$2;-><init>(Lcom/samsung/privilege/holder/DashboardHolder_wallet$5;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string/jumbo v2, "No"

    new-instance v3, Lcom/samsung/privilege/holder/DashboardHolder_wallet$5$1;

    invoke-direct {v3, p0}, Lcom/samsung/privilege/holder/DashboardHolder_wallet$5$1;-><init>(Lcom/samsung/privilege/holder/DashboardHolder_wallet$5;)V

    .line 544
    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 549
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 550
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_14

    .line 553
    :cond_81
    iget-object v0, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$5;->a:Landroid/app/Activity;

    instance-of v0, v0, Lcom/samsung/privilege/activity/DashboardActivity;

    if-eqz v0, :cond_af

    .line 554
    iget-object v1, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$5;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$5;->d:Landroid/os/Handler;

    iget-object v0, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$5;->a:Landroid/app/Activity;

    check-cast v0, Lcom/samsung/privilege/activity/DashboardActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/DashboardActivity;->a:Lcom/facebook/CallbackManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Dashboard "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$5;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "wallet"

    invoke-static {v1, v2, v0, v3, v4}, Lcom/samsung/privilege/util/DialogLoginGift;->a(Landroid/content/Context;Landroid/os/Handler;Lcom/facebook/CallbackManager;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_14

    .line 556
    :cond_af
    iget-object v1, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$5;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$5;->d:Landroid/os/Handler;

    iget-object v0, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$5;->a:Landroid/app/Activity;

    check-cast v0, Lcom/samsung/privilege/activity/MainPagerActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainPagerActivity;->a:Lcom/facebook/CallbackManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Dashboard "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$5;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "wallet"

    invoke-static {v1, v2, v0, v3, v4}, Lcom/samsung/privilege/util/DialogLoginGift;->a(Landroid/content/Context;Landroid/os/Handler;Lcom/facebook/CallbackManager;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_14
.end method
