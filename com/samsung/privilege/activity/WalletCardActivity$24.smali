.class Lcom/samsung/privilege/activity/WalletCardActivity$24;
.super Ljava/lang/Object;
.source "WalletCardActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/WalletCardActivity;->k()V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/samsung/privilege/activity/WalletCardActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/WalletCardActivity;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1953
    iput-object p1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$24;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    iput-object p2, p0, Lcom/samsung/privilege/activity/WalletCardActivity$24;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 1957
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$24;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bzbs/bean/Campaign;->GetArrayList(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1959
    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$24;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/WalletCardActivity;->n(Lcom/samsung/privilege/activity/WalletCardActivity;)Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter;

    move-result-object v1

    if-eqz v1, :cond_44

    .line 1960
    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$24;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/WalletCardActivity;->n(Lcom/samsung/privilege/activity/WalletCardActivity;)Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter;

    move-result-object v1

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1961
    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$24;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/WalletCardActivity;->n(Lcom/samsung/privilege/activity/WalletCardActivity;)Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter;->a(Ljava/util/List;)V

    .line 1962
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$24;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->n(Lcom/samsung/privilege/activity/WalletCardActivity;)Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter;->notifyDataSetChanged()V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_30} :catch_60

    .line 1971
    :goto_30
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$24;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    const v1, 0x7f1001f0

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/WalletCardActivity$24$1;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/WalletCardActivity$24$1;-><init>(Lcom/samsung/privilege/activity/WalletCardActivity$24;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1982
    return-void

    .line 1964
    :cond_44
    :try_start_44
    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$24;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    new-instance v2, Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter;

    iget-object v3, p0, Lcom/samsung/privilege/activity/WalletCardActivity$24;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-direct {v2, v3, v0}, Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter;-><init>(Lcom/samsung/privilege/activity/WalletCardActivity;Ljava/util/List;)V

    invoke-static {v1, v2}, Lcom/samsung/privilege/activity/WalletCardActivity;->a(Lcom/samsung/privilege/activity/WalletCardActivity;Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter;)Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter;

    .line 1965
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$24;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->o(Lcom/samsung/privilege/activity/WalletCardActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$24;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/WalletCardActivity;->n(Lcom/samsung/privilege/activity/WalletCardActivity;)Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_5f} :catch_60

    goto :goto_30

    .line 1967
    :catch_60
    move-exception v0

    goto :goto_30
.end method
