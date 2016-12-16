.class Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$UserLoginListener$1;
.super Ljava/lang/Object;
.source "DashboardGiftRecyclerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$UserLoginListener;->c(Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$UserLoginListener;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$UserLoginListener;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 3068
    iput-object p1, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$UserLoginListener$1;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$UserLoginListener;

    iput-object p2, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$UserLoginListener$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    const v6, 0x7f090399

    .line 3071
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$UserLoginListener$1;->a:Ljava/lang/String;

    const-string/jumbo v1, "wallet_create"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 3075
    :try_start_e
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$UserLoginListener$1;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$UserLoginListener;

    iget-object v0, v0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$UserLoginListener;->a:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    iget-object v0, v0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->c:Lcom/samsung/privilege/holder/DashboardHolder_wallet;

    if-eqz v0, :cond_4e

    .line 3076
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$UserLoginListener$1;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$UserLoginListener;

    iget-object v0, v0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$UserLoginListener;->a:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    iget-object v0, v0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->c:Lcom/samsung/privilege/holder/DashboardHolder_wallet;

    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$UserLoginListener$1;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$UserLoginListener;

    iget-object v0, v0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$UserLoginListener;->a:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    invoke-virtual {v0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$UserLoginListener$1;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$UserLoginListener;

    iget-object v1, v1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$UserLoginListener;->a:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    iget-object v2, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$UserLoginListener$1;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$UserLoginListener;

    iget-object v2, v2, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$UserLoginListener;->a:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    invoke-static {v2}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->b(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$UserLoginListener$1;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$UserLoginListener;

    iget-object v3, v3, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$UserLoginListener;->a:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    iget-object v3, v3, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->c:Lcom/samsung/privilege/holder/DashboardHolder_wallet;

    iget-object v3, v3, Lcom/samsung/privilege/holder/DashboardHolder_wallet;->v:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$UserLoginListener$1;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$UserLoginListener;

    iget-object v4, v4, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$UserLoginListener;->a:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    const-string/jumbo v5, "header_en"

    invoke-static {v4, v5}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->a(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/samsung/privilege/holder/DashboardHolder_wallet;->a(Landroid/app/Activity;Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_4e} :catch_6c

    .line 3082
    :cond_4e
    :goto_4e
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$UserLoginListener$1;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$UserLoginListener;

    iget-object v0, v0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$UserLoginListener;->a:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    invoke-virtual {v0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity;

    if-eqz v0, :cond_6b

    .line 3084
    :try_start_5a
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$UserLoginListener$1;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$UserLoginListener;

    iget-object v0, v0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$UserLoginListener;->a:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    invoke-virtual {v0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/samsung/privilege/activity/WalletCardActivity;

    .line 3085
    const-string/jumbo v1, "getWalletCardList"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/privilege/activity/WalletCardActivity;->a(Ljava/lang/String;Z)V
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_6b} :catch_81

    .line 3092
    :cond_6b
    :goto_6b
    return-void

    .line 3078
    :catch_6c
    move-exception v0

    .line 3079
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$UserLoginListener$1;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$UserLoginListener;

    iget-object v0, v0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$UserLoginListener;->a:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    invoke-virtual {v0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$UserLoginListener$1;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$UserLoginListener;

    iget-object v1, v1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$UserLoginListener;->a:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    invoke-virtual {v1, v6}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/DialogUtil;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_4e

    .line 3087
    :catch_81
    move-exception v0

    .line 3088
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$UserLoginListener$1;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$UserLoginListener;

    iget-object v0, v0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$UserLoginListener;->a:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    invoke-virtual {v0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$UserLoginListener$1;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$UserLoginListener;

    iget-object v1, v1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$UserLoginListener;->a:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    invoke-virtual {v1, v6}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/DialogUtil;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_6b
.end method
