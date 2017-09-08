.class Lcom/samsung/privilege/activity/WalletCardActivity$34$1;
.super Ljava/lang/Object;
.source "WalletCardActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/WalletCardActivity$34;->successfully(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/samsung/privilege/activity/WalletCardActivity$34;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/WalletCardActivity$34;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 3106
    iput-object p1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$34$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$34;

    iput-object p2, p0, Lcom/samsung/privilege/activity/WalletCardActivity$34$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 3109
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$34$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$34;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$34;->c:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity;->k:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 3111
    const/4 v0, 0x0

    .line 3113
    :try_start_c
    new-instance v1, Lorg/json/JSONArray;

    iget-object v2, p0, Lcom/samsung/privilege/activity/WalletCardActivity$34$1;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/bzbs/bean/Campaign;->GetArrayList(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v0

    .line 3115
    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$34$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$34;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$34;->c:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/WalletCardActivity;->v(Lcom/samsung/privilege/activity/WalletCardActivity;)Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter;

    move-result-object v1

    if-eqz v1, :cond_af

    .line 3116
    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$34$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$34;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$34;->c:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/WalletCardActivity;->v(Lcom/samsung/privilege/activity/WalletCardActivity;)Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter;

    move-result-object v1

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 3117
    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$34$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$34;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$34;->c:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/WalletCardActivity;->v(Lcom/samsung/privilege/activity/WalletCardActivity;)Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter;->a(Ljava/util/List;)V

    .line 3118
    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$34$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$34;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$34;->c:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/WalletCardActivity;->v(Lcom/samsung/privilege/activity/WalletCardActivity;)Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter;->notifyDataSetChanged()V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_44} :catch_d4

    .line 3128
    :goto_44
    if-eqz v0, :cond_a6

    :try_start_46
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ltz v0, :cond_a6

    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$34$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$34;

    iget v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$34;->b:I

    if-nez v0, :cond_a6

    .line 3129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "cache_wallet_promotion_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$34$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$34;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$34;->c:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/WalletCardActivity;->d(Lcom/samsung/privilege/activity/WalletCardActivity;)Lcom/bzbs/bean/DashboardItem;

    move-result-object v1

    iget-object v1, v1, Lcom/bzbs/bean/DashboardItem;->wallet_promotion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$34$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$34;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$34;->c:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-virtual {v1}, Lcom/samsung/privilege/activity/WalletCardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/LocalFileHelper;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 3130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "cache_wallet_promotion_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$34$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$34;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$34;->c:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/WalletCardActivity;->d(Lcom/samsung/privilege/activity/WalletCardActivity;)Lcom/bzbs/bean/DashboardItem;

    move-result-object v1

    iget-object v1, v1, Lcom/bzbs/bean/DashboardItem;->wallet_promotion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$34$1;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/privilege/activity/WalletCardActivity$34$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$34;

    iget-object v2, v2, Lcom/samsung/privilege/activity/WalletCardActivity$34;->c:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/WalletCardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/bzbs/util/LocalFileHelper;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    :try_end_a6
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_a6} :catch_d7

    .line 3136
    :cond_a6
    :goto_a6
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$34$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$34;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$34;->c:Lcom/samsung/privilege/activity/WalletCardActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/WalletCardActivity;->d(Lcom/samsung/privilege/activity/WalletCardActivity;Z)Z

    .line 3137
    return-void

    .line 3120
    :cond_af
    :try_start_af
    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$34$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$34;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$34;->c:Lcom/samsung/privilege/activity/WalletCardActivity;

    new-instance v2, Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter;

    iget-object v3, p0, Lcom/samsung/privilege/activity/WalletCardActivity$34$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$34;

    iget-object v3, v3, Lcom/samsung/privilege/activity/WalletCardActivity$34;->c:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-direct {v2, v3, v0}, Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter;-><init>(Lcom/samsung/privilege/activity/WalletCardActivity;Ljava/util/List;)V

    invoke-static {v1, v2}, Lcom/samsung/privilege/activity/WalletCardActivity;->a(Lcom/samsung/privilege/activity/WalletCardActivity;Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter;)Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter;

    .line 3121
    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$34$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$34;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$34;->c:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/WalletCardActivity;->w(Lcom/samsung/privilege/activity/WalletCardActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/privilege/activity/WalletCardActivity$34$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$34;

    iget-object v2, v2, Lcom/samsung/privilege/activity/WalletCardActivity$34;->c:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v2}, Lcom/samsung/privilege/activity/WalletCardActivity;->v(Lcom/samsung/privilege/activity/WalletCardActivity;)Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V
    :try_end_d2
    .catch Ljava/lang/Exception; {:try_start_af .. :try_end_d2} :catch_d4

    goto/16 :goto_44

    .line 3123
    :catch_d4
    move-exception v1

    goto/16 :goto_44

    .line 3132
    :catch_d7
    move-exception v0

    goto :goto_a6
.end method
