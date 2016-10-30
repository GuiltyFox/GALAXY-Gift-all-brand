.class Lcom/samsung/privilege/fragment/CampaignListGiftFragment$6$1;
.super Ljava/lang/Object;
.source "CampaignListGiftFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/fragment/CampaignListGiftFragment$6;->successfully(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/samsung/privilege/fragment/CampaignListGiftFragment$6;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/fragment/CampaignListGiftFragment$6;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 336
    iput-object p1, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$6$1;->b:Lcom/samsung/privilege/fragment/CampaignListGiftFragment$6;

    iput-object p2, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$6$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 339
    iget-object v0, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$6$1;->b:Lcom/samsung/privilege/fragment/CampaignListGiftFragment$6;

    iget-object v0, v0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$6;->c:Lcom/samsung/privilege/fragment/CampaignListGiftFragment;

    invoke-virtual {v0}, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_c

    .line 394
    :goto_b
    return-void

    .line 341
    :cond_c
    iget-object v0, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$6$1;->b:Lcom/samsung/privilege/fragment/CampaignListGiftFragment$6;

    iget-object v0, v0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$6;->c:Lcom/samsung/privilege/fragment/CampaignListGiftFragment;

    invoke-static {v0}, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->h(Lcom/samsung/privilege/fragment/CampaignListGiftFragment;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100111

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 342
    invoke-virtual {v0, v5}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 344
    iget-object v0, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$6$1;->b:Lcom/samsung/privilege/fragment/CampaignListGiftFragment$6;

    iget-object v0, v0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$6;->c:Lcom/samsung/privilege/fragment/CampaignListGiftFragment;

    const-string/jumbo v1, "cat"

    invoke-static {v0, v1}, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->a(Lcom/samsung/privilege/fragment/CampaignListGiftFragment;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 346
    :try_start_2b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "cache_campaign_gift_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$6$1;->b:Lcom/samsung/privilege/fragment/CampaignListGiftFragment$6;

    iget-object v1, v1, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$6;->c:Lcom/samsung/privilege/fragment/CampaignListGiftFragment;

    invoke-virtual {v1}, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/LocalFileHelper;->b(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 347
    if-eqz v0, :cond_70

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_70

    .line 348
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$6$1;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70

    .line 349
    iget-object v0, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$6$1;->b:Lcom/samsung/privilege/fragment/CampaignListGiftFragment$6;

    iget-object v0, v0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$6;->c:Lcom/samsung/privilege/fragment/CampaignListGiftFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->a(Lcom/samsung/privilege/fragment/CampaignListGiftFragment;Z)Z
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_6e} :catch_6f

    goto :goto_b

    .line 353
    :catch_6f
    move-exception v0

    .line 357
    :cond_70
    const/4 v0, 0x0

    .line 359
    :try_start_71
    new-instance v1, Lorg/json/JSONArray;

    iget-object v3, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$6$1;->a:Ljava/lang/String;

    invoke-direct {v1, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/bzbs/bean/Campaign;->GetArrayList(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_7b} :catch_162

    move-result-object v1

    .line 361
    :try_start_7c
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v3, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$6$1;->b:Lcom/samsung/privilege/fragment/CampaignListGiftFragment$6;

    iget-object v3, v3, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$6;->c:Lcom/samsung/privilege/fragment/CampaignListGiftFragment;

    invoke-static {v3}, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->j(Lcom/samsung/privilege/fragment/CampaignListGiftFragment;)I

    move-result v3

    if-ge v0, v3, :cond_13b

    .line 362
    iget-object v0, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$6$1;->b:Lcom/samsung/privilege/fragment/CampaignListGiftFragment$6;

    iget-object v0, v0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$6;->c:Lcom/samsung/privilege/fragment/CampaignListGiftFragment;

    const/4 v3, 0x1

    invoke-static {v0, v3}, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->b(Lcom/samsung/privilege/fragment/CampaignListGiftFragment;Z)Z

    .line 367
    :goto_92
    iget-object v0, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$6$1;->b:Lcom/samsung/privilege/fragment/CampaignListGiftFragment$6;

    iget v0, v0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$6;->b:I

    if-nez v0, :cond_149

    .line 368
    iget-object v0, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$6$1;->b:Lcom/samsung/privilege/fragment/CampaignListGiftFragment$6;

    iget-object v0, v0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$6;->c:Lcom/samsung/privilege/fragment/CampaignListGiftFragment;

    new-instance v3, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$CampaignListAdapter;

    iget-object v4, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$6$1;->b:Lcom/samsung/privilege/fragment/CampaignListGiftFragment$6;

    iget-object v4, v4, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$6;->c:Lcom/samsung/privilege/fragment/CampaignListGiftFragment;

    invoke-direct {v3, v4, v1}, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$CampaignListAdapter;-><init>(Lcom/samsung/privilege/fragment/CampaignListGiftFragment;Ljava/util/List;)V

    invoke-static {v0, v3}, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->a(Lcom/samsung/privilege/fragment/CampaignListGiftFragment;Lcom/samsung/privilege/fragment/CampaignListGiftFragment$CampaignListAdapter;)Lcom/samsung/privilege/fragment/CampaignListGiftFragment$CampaignListAdapter;

    .line 369
    iget-object v0, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$6$1;->b:Lcom/samsung/privilege/fragment/CampaignListGiftFragment$6;

    iget-object v0, v0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$6;->c:Lcom/samsung/privilege/fragment/CampaignListGiftFragment;

    invoke-static {v0}, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->k(Lcom/samsung/privilege/fragment/CampaignListGiftFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$6$1;->b:Lcom/samsung/privilege/fragment/CampaignListGiftFragment$6;

    iget-object v3, v3, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$6;->c:Lcom/samsung/privilege/fragment/CampaignListGiftFragment;

    invoke-static {v3}, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->g(Lcom/samsung/privilege/fragment/CampaignListGiftFragment;)Lcom/samsung/privilege/fragment/CampaignListGiftFragment$CampaignListAdapter;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 371
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_e4

    .line 372
    iget-object v0, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$6$1;->b:Lcom/samsung/privilege/fragment/CampaignListGiftFragment$6;

    iget-object v0, v0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$6;->c:Lcom/samsung/privilege/fragment/CampaignListGiftFragment;

    invoke-static {v0}, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->h(Lcom/samsung/privilege/fragment/CampaignListGiftFragment;)Landroid/view/View;

    move-result-object v0

    const v3, 0x7f10061e

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 373
    iget-object v3, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$6$1;->b:Lcom/samsung/privilege/fragment/CampaignListGiftFragment$6;

    iget-object v3, v3, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$6;->c:Lcom/samsung/privilege/fragment/CampaignListGiftFragment;

    const v4, 0x7f090342

    invoke-virtual {v3, v4}, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 374
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_e4
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_e4} :catch_145

    .line 385
    :cond_e4
    :goto_e4
    if-eqz v1, :cond_132

    :try_start_e6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_132

    iget-object v0, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$6$1;->b:Lcom/samsung/privilege/fragment/CampaignListGiftFragment$6;

    iget v0, v0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$6;->b:I

    if-nez v0, :cond_132

    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "cache_campaign_gift_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$6$1;->b:Lcom/samsung/privilege/fragment/CampaignListGiftFragment$6;

    iget-object v1, v1, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$6;->c:Lcom/samsung/privilege/fragment/CampaignListGiftFragment;

    invoke-virtual {v1}, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/LocalFileHelper;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 387
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "cache_campaign_gift_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$6$1;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$6$1;->b:Lcom/samsung/privilege/fragment/CampaignListGiftFragment$6;

    iget-object v2, v2, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$6;->c:Lcom/samsung/privilege/fragment/CampaignListGiftFragment;

    invoke-virtual {v2}, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/bzbs/util/LocalFileHelper;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    :try_end_132
    .catch Ljava/lang/Exception; {:try_start_e6 .. :try_end_132} :catch_160

    .line 393
    :cond_132
    :goto_132
    iget-object v0, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$6$1;->b:Lcom/samsung/privilege/fragment/CampaignListGiftFragment$6;

    iget-object v0, v0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$6;->c:Lcom/samsung/privilege/fragment/CampaignListGiftFragment;

    invoke-static {v0, v5}, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->a(Lcom/samsung/privilege/fragment/CampaignListGiftFragment;Z)Z

    goto/16 :goto_b

    .line 364
    :cond_13b
    :try_start_13b
    iget-object v0, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$6$1;->b:Lcom/samsung/privilege/fragment/CampaignListGiftFragment$6;

    iget-object v0, v0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$6;->c:Lcom/samsung/privilege/fragment/CampaignListGiftFragment;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->b(Lcom/samsung/privilege/fragment/CampaignListGiftFragment;Z)Z

    goto/16 :goto_92

    .line 380
    :catch_145
    move-exception v0

    move-object v0, v1

    :goto_147
    move-object v1, v0

    goto :goto_e4

    .line 377
    :cond_149
    iget-object v0, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$6$1;->b:Lcom/samsung/privilege/fragment/CampaignListGiftFragment$6;

    iget-object v0, v0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$6;->c:Lcom/samsung/privilege/fragment/CampaignListGiftFragment;

    invoke-static {v0}, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->g(Lcom/samsung/privilege/fragment/CampaignListGiftFragment;)Lcom/samsung/privilege/fragment/CampaignListGiftFragment$CampaignListAdapter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$CampaignListAdapter;->a(Ljava/util/List;)V

    .line 378
    iget-object v0, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$6$1;->b:Lcom/samsung/privilege/fragment/CampaignListGiftFragment$6;

    iget-object v0, v0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$6;->c:Lcom/samsung/privilege/fragment/CampaignListGiftFragment;

    invoke-static {v0}, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->g(Lcom/samsung/privilege/fragment/CampaignListGiftFragment;)Lcom/samsung/privilege/fragment/CampaignListGiftFragment$CampaignListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$CampaignListAdapter;->notifyDataSetChanged()V
    :try_end_15f
    .catch Ljava/lang/Exception; {:try_start_13b .. :try_end_15f} :catch_145

    goto :goto_e4

    .line 389
    :catch_160
    move-exception v0

    goto :goto_132

    .line 380
    :catch_162
    move-exception v1

    goto :goto_147
.end method
