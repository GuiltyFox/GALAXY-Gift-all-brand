.class Lcom/samsung/privilege/activity/CampaignReviewActivity$6$1;
.super Ljava/lang/Object;
.source "CampaignReviewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignReviewActivity$6;->successfully(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/samsung/privilege/activity/CampaignReviewActivity$6;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignReviewActivity$6;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 379
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity$6$1;->b:Lcom/samsung/privilege/activity/CampaignReviewActivity$6;

    iput-object p2, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity$6$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 382
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity$6$1;->b:Lcom/samsung/privilege/activity/CampaignReviewActivity$6;

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignReviewActivity$6;->b:Lcom/samsung/privilege/activity/CampaignReviewActivity;

    const v1, 0x7f10011d

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignReviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 383
    invoke-virtual {v0, v4}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 386
    :try_start_11
    new-instance v0, Lorg/json/JSONArray;

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity$6$1;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bzbs/bean/CampaignReview;->GetArrayList(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v0

    .line 388
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0x19

    if-ge v1, v2, :cond_5d

    .line 389
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity$6$1;->b:Lcom/samsung/privilege/activity/CampaignReviewActivity$6;

    iget-object v1, v1, Lcom/samsung/privilege/activity/CampaignReviewActivity$6;->b:Lcom/samsung/privilege/activity/CampaignReviewActivity;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/samsung/privilege/activity/CampaignReviewActivity;->a(Lcom/samsung/privilege/activity/CampaignReviewActivity;Z)Z

    .line 394
    :goto_2c
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity$6$1;->b:Lcom/samsung/privilege/activity/CampaignReviewActivity$6;

    iget v1, v1, Lcom/samsung/privilege/activity/CampaignReviewActivity$6;->a:I

    if-nez v1, :cond_72

    .line 395
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity$6$1;->b:Lcom/samsung/privilege/activity/CampaignReviewActivity$6;

    iget-object v1, v1, Lcom/samsung/privilege/activity/CampaignReviewActivity$6;->b:Lcom/samsung/privilege/activity/CampaignReviewActivity;

    new-instance v2, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter;

    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity$6$1;->b:Lcom/samsung/privilege/activity/CampaignReviewActivity$6;

    iget-object v3, v3, Lcom/samsung/privilege/activity/CampaignReviewActivity$6;->b:Lcom/samsung/privilege/activity/CampaignReviewActivity;

    invoke-direct {v2, v3, v0}, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter;-><init>(Lcom/samsung/privilege/activity/CampaignReviewActivity;Ljava/util/List;)V

    invoke-static {v1, v2}, Lcom/samsung/privilege/activity/CampaignReviewActivity;->a(Lcom/samsung/privilege/activity/CampaignReviewActivity;Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter;)Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter;

    .line 396
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity$6$1;->b:Lcom/samsung/privilege/activity/CampaignReviewActivity$6;

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignReviewActivity$6;->b:Lcom/samsung/privilege/activity/CampaignReviewActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignReviewActivity;->k(Lcom/samsung/privilege/activity/CampaignReviewActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity$6$1;->b:Lcom/samsung/privilege/activity/CampaignReviewActivity$6;

    iget-object v1, v1, Lcom/samsung/privilege/activity/CampaignReviewActivity$6;->b:Lcom/samsung/privilege/activity/CampaignReviewActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignReviewActivity;->g(Lcom/samsung/privilege/activity/CampaignReviewActivity;)Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_55} :catch_66

    .line 405
    :goto_55
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity$6$1;->b:Lcom/samsung/privilege/activity/CampaignReviewActivity$6;

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignReviewActivity$6;->b:Lcom/samsung/privilege/activity/CampaignReviewActivity;

    invoke-static {v0, v4}, Lcom/samsung/privilege/activity/CampaignReviewActivity;->b(Lcom/samsung/privilege/activity/CampaignReviewActivity;Z)Z

    .line 406
    return-void

    .line 391
    :cond_5d
    :try_start_5d
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity$6$1;->b:Lcom/samsung/privilege/activity/CampaignReviewActivity$6;

    iget-object v1, v1, Lcom/samsung/privilege/activity/CampaignReviewActivity$6;->b:Lcom/samsung/privilege/activity/CampaignReviewActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/samsung/privilege/activity/CampaignReviewActivity;->a(Lcom/samsung/privilege/activity/CampaignReviewActivity;Z)Z
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_65} :catch_66

    goto :goto_2c

    .line 401
    :catch_66
    move-exception v0

    .line 402
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity$6$1;->b:Lcom/samsung/privilege/activity/CampaignReviewActivity$6;

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignReviewActivity$6;->b:Lcom/samsung/privilege/activity/CampaignReviewActivity;

    const-string/jumbo v1, "Invalid data format!!!"

    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/CampaignReviewActivity;->a(Lcom/samsung/privilege/activity/CampaignReviewActivity;Ljava/lang/String;)V

    goto :goto_55

    .line 398
    :cond_72
    :try_start_72
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity$6$1;->b:Lcom/samsung/privilege/activity/CampaignReviewActivity$6;

    iget-object v1, v1, Lcom/samsung/privilege/activity/CampaignReviewActivity$6;->b:Lcom/samsung/privilege/activity/CampaignReviewActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignReviewActivity;->g(Lcom/samsung/privilege/activity/CampaignReviewActivity;)Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter;->a(Ljava/util/List;)V

    .line 399
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity$6$1;->b:Lcom/samsung/privilege/activity/CampaignReviewActivity$6;

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignReviewActivity$6;->b:Lcom/samsung/privilege/activity/CampaignReviewActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignReviewActivity;->g(Lcom/samsung/privilege/activity/CampaignReviewActivity;)Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter;->notifyDataSetChanged()V
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_88} :catch_66

    goto :goto_55
.end method
