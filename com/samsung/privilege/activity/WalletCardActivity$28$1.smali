.class Lcom/samsung/privilege/activity/WalletCardActivity$28$1;
.super Ljava/lang/Object;
.source "WalletCardActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/WalletCardActivity$28;->successfully(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/samsung/privilege/activity/WalletCardActivity$28;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/WalletCardActivity$28;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 2409
    iput-object p1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$28$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$28;

    iput-object p2, p0, Lcom/samsung/privilege/activity/WalletCardActivity$28$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 2412
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$28$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$28;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$28;->c:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity;->x:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2415
    :try_start_c
    new-instance v0, Lorg/json/JSONArray;

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$28$1;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bzbs/bean/HistoryWallet;->GetArrayList(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v3

    .line 2417
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$28$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$28;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$28;->c:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->o(Lcom/samsung/privilege/activity/WalletCardActivity;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_69

    move v1, v2

    .line 2418
    :goto_29
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_69

    .line 2419
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/HistoryWallet;

    .line 2420
    iget-object v4, p0, Lcom/samsung/privilege/activity/WalletCardActivity$28$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$28;

    iget-object v4, v4, Lcom/samsung/privilege/activity/WalletCardActivity$28;->c:Lcom/samsung/privilege/activity/WalletCardActivity;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/samsung/privilege/activity/WalletCardActivity$28$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$28;

    iget-object v6, v6, Lcom/samsung/privilege/activity/WalletCardActivity$28;->c:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v6}, Lcom/samsung/privilege/activity/WalletCardActivity;->o(Lcom/samsung/privilege/activity/WalletCardActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v0, v0, Lcom/bzbs/bean/HistoryWallet;->transactionId:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, "]"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->d(Lcom/samsung/privilege/activity/WalletCardActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 2418
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_29

    .line 2424
    :cond_69
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x19

    if-ge v0, v1, :cond_71

    .line 2430
    :cond_71
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_b2

    .line 2431
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$28$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$28;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$28;->c:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity;->C:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2436
    :goto_81
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$28$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$28;

    iget v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$28;->b:I

    if-nez v0, :cond_ca

    .line 2437
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$28$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$28;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$28;->c:Lcom/samsung/privilege/activity/WalletCardActivity;

    new-instance v1, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;

    iget-object v4, p0, Lcom/samsung/privilege/activity/WalletCardActivity$28$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$28;

    iget-object v4, v4, Lcom/samsung/privilege/activity/WalletCardActivity$28;->c:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-direct {v1, v4, v3}, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;-><init>(Lcom/samsung/privilege/activity/WalletCardActivity;Ljava/util/List;)V

    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/WalletCardActivity;->a(Lcom/samsung/privilege/activity/WalletCardActivity;Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;)Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;

    .line 2438
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$28$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$28;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$28;->c:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->q(Lcom/samsung/privilege/activity/WalletCardActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$28$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$28;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$28;->c:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/WalletCardActivity;->p(Lcom/samsung/privilege/activity/WalletCardActivity;)Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V
    :try_end_aa
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_aa} :catch_be

    .line 2447
    :goto_aa
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$28$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$28;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$28;->c:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v0, v2}, Lcom/samsung/privilege/activity/WalletCardActivity;->c(Lcom/samsung/privilege/activity/WalletCardActivity;Z)Z

    .line 2448
    return-void

    .line 2433
    :cond_b2
    :try_start_b2
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$28$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$28;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$28;->c:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity;->C:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V
    :try_end_bd
    .catch Ljava/lang/Exception; {:try_start_b2 .. :try_end_bd} :catch_be

    goto :goto_81

    .line 2443
    :catch_be
    move-exception v0

    .line 2444
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$28$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$28;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$28;->c:Lcom/samsung/privilege/activity/WalletCardActivity;

    const-string/jumbo v1, "Invalid data format!!!"

    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/WalletCardActivity;->c(Lcom/samsung/privilege/activity/WalletCardActivity;Ljava/lang/String;)V

    goto :goto_aa

    .line 2440
    :cond_ca
    :try_start_ca
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$28$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$28;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$28;->c:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->p(Lcom/samsung/privilege/activity/WalletCardActivity;)Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;->a(Ljava/util/List;)V

    .line 2441
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$28$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$28;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$28;->c:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->p(Lcom/samsung/privilege/activity/WalletCardActivity;)Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;->notifyDataSetChanged()V
    :try_end_e0
    .catch Ljava/lang/Exception; {:try_start_ca .. :try_end_e0} :catch_be

    goto :goto_aa
.end method
