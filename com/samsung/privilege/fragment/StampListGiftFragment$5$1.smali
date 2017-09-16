.class Lcom/samsung/privilege/fragment/StampListGiftFragment$5$1;
.super Ljava/lang/Object;
.source "StampListGiftFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/fragment/StampListGiftFragment$5;->successfully(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/samsung/privilege/fragment/StampListGiftFragment$5;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/fragment/StampListGiftFragment$5;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 305
    iput-object p1, p0, Lcom/samsung/privilege/fragment/StampListGiftFragment$5$1;->b:Lcom/samsung/privilege/fragment/StampListGiftFragment$5;

    iput-object p2, p0, Lcom/samsung/privilege/fragment/StampListGiftFragment$5$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 308
    iget-object v0, p0, Lcom/samsung/privilege/fragment/StampListGiftFragment$5$1;->b:Lcom/samsung/privilege/fragment/StampListGiftFragment$5;

    iget-object v0, v0, Lcom/samsung/privilege/fragment/StampListGiftFragment$5;->c:Lcom/samsung/privilege/fragment/StampListGiftFragment;

    invoke-virtual {v0}, Lcom/samsung/privilege/fragment/StampListGiftFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_c

    .line 364
    :goto_b
    return-void

    .line 312
    :cond_c
    iget-object v0, p0, Lcom/samsung/privilege/fragment/StampListGiftFragment$5$1;->b:Lcom/samsung/privilege/fragment/StampListGiftFragment$5;

    iget-object v0, v0, Lcom/samsung/privilege/fragment/StampListGiftFragment$5;->c:Lcom/samsung/privilege/fragment/StampListGiftFragment;

    invoke-static {v0}, Lcom/samsung/privilege/fragment/StampListGiftFragment;->g(Lcom/samsung/privilege/fragment/StampListGiftFragment;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f10011d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 313
    invoke-virtual {v0, v4}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 316
    :try_start_20
    invoke-static {}, Lcom/samsung/privilege/fragment/StampListGiftFragment;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/fragment/StampListGiftFragment$5$1;->b:Lcom/samsung/privilege/fragment/StampListGiftFragment$5;

    iget-object v1, v1, Lcom/samsung/privilege/fragment/StampListGiftFragment$5;->c:Lcom/samsung/privilege/fragment/StampListGiftFragment;

    invoke-virtual {v1}, Lcom/samsung/privilege/fragment/StampListGiftFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/LocalFileHelper;->b(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 317
    if-eqz v0, :cond_55

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_55

    .line 318
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/fragment/StampListGiftFragment$5$1;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 319
    iget-object v0, p0, Lcom/samsung/privilege/fragment/StampListGiftFragment$5$1;->b:Lcom/samsung/privilege/fragment/StampListGiftFragment$5;

    iget-object v0, v0, Lcom/samsung/privilege/fragment/StampListGiftFragment$5;->c:Lcom/samsung/privilege/fragment/StampListGiftFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/privilege/fragment/StampListGiftFragment;->a(Lcom/samsung/privilege/fragment/StampListGiftFragment;Z)Z
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_53} :catch_54

    goto :goto_b

    .line 323
    :catch_54
    move-exception v0

    .line 327
    :cond_55
    const/4 v0, 0x0

    .line 329
    :try_start_56
    new-instance v1, Lorg/json/JSONArray;

    iget-object v2, p0, Lcom/samsung/privilege/fragment/StampListGiftFragment$5$1;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/bzbs/bean/StampAgency;->GetArrayList(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_60} :catch_127

    move-result-object v1

    .line 331
    :try_start_61
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v2, p0, Lcom/samsung/privilege/fragment/StampListGiftFragment$5$1;->b:Lcom/samsung/privilege/fragment/StampListGiftFragment$5;

    iget-object v2, v2, Lcom/samsung/privilege/fragment/StampListGiftFragment$5;->c:Lcom/samsung/privilege/fragment/StampListGiftFragment;

    invoke-static {v2}, Lcom/samsung/privilege/fragment/StampListGiftFragment;->i(Lcom/samsung/privilege/fragment/StampListGiftFragment;)I

    move-result v2

    if-ge v0, v2, :cond_100

    .line 332
    iget-object v0, p0, Lcom/samsung/privilege/fragment/StampListGiftFragment$5$1;->b:Lcom/samsung/privilege/fragment/StampListGiftFragment$5;

    iget-object v0, v0, Lcom/samsung/privilege/fragment/StampListGiftFragment$5;->c:Lcom/samsung/privilege/fragment/StampListGiftFragment;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/samsung/privilege/fragment/StampListGiftFragment;->b(Lcom/samsung/privilege/fragment/StampListGiftFragment;Z)Z

    .line 337
    :goto_77
    iget-object v0, p0, Lcom/samsung/privilege/fragment/StampListGiftFragment$5$1;->b:Lcom/samsung/privilege/fragment/StampListGiftFragment$5;

    iget v0, v0, Lcom/samsung/privilege/fragment/StampListGiftFragment$5;->b:I

    if-nez v0, :cond_10e

    .line 338
    iget-object v0, p0, Lcom/samsung/privilege/fragment/StampListGiftFragment$5$1;->b:Lcom/samsung/privilege/fragment/StampListGiftFragment$5;

    iget-object v0, v0, Lcom/samsung/privilege/fragment/StampListGiftFragment$5;->c:Lcom/samsung/privilege/fragment/StampListGiftFragment;

    new-instance v2, Lcom/samsung/privilege/fragment/StampListGiftFragment$StampListAdapter;

    iget-object v3, p0, Lcom/samsung/privilege/fragment/StampListGiftFragment$5$1;->b:Lcom/samsung/privilege/fragment/StampListGiftFragment$5;

    iget-object v3, v3, Lcom/samsung/privilege/fragment/StampListGiftFragment$5;->c:Lcom/samsung/privilege/fragment/StampListGiftFragment;

    invoke-direct {v2, v3, v1}, Lcom/samsung/privilege/fragment/StampListGiftFragment$StampListAdapter;-><init>(Lcom/samsung/privilege/fragment/StampListGiftFragment;Ljava/util/List;)V

    invoke-static {v0, v2}, Lcom/samsung/privilege/fragment/StampListGiftFragment;->a(Lcom/samsung/privilege/fragment/StampListGiftFragment;Lcom/samsung/privilege/fragment/StampListGiftFragment$StampListAdapter;)Lcom/samsung/privilege/fragment/StampListGiftFragment$StampListAdapter;

    .line 339
    iget-object v0, p0, Lcom/samsung/privilege/fragment/StampListGiftFragment$5$1;->b:Lcom/samsung/privilege/fragment/StampListGiftFragment$5;

    iget-object v0, v0, Lcom/samsung/privilege/fragment/StampListGiftFragment$5;->c:Lcom/samsung/privilege/fragment/StampListGiftFragment;

    invoke-static {v0}, Lcom/samsung/privilege/fragment/StampListGiftFragment;->k(Lcom/samsung/privilege/fragment/StampListGiftFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/privilege/fragment/StampListGiftFragment$5$1;->b:Lcom/samsung/privilege/fragment/StampListGiftFragment$5;

    iget-object v2, v2, Lcom/samsung/privilege/fragment/StampListGiftFragment$5;->c:Lcom/samsung/privilege/fragment/StampListGiftFragment;

    invoke-static {v2}, Lcom/samsung/privilege/fragment/StampListGiftFragment;->j(Lcom/samsung/privilege/fragment/StampListGiftFragment;)Lcom/samsung/privilege/fragment/StampListGiftFragment$StampListAdapter;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 341
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_c9

    .line 342
    iget-object v0, p0, Lcom/samsung/privilege/fragment/StampListGiftFragment$5$1;->b:Lcom/samsung/privilege/fragment/StampListGiftFragment$5;

    iget-object v0, v0, Lcom/samsung/privilege/fragment/StampListGiftFragment$5;->c:Lcom/samsung/privilege/fragment/StampListGiftFragment;

    invoke-static {v0}, Lcom/samsung/privilege/fragment/StampListGiftFragment;->g(Lcom/samsung/privilege/fragment/StampListGiftFragment;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f10050a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 343
    iget-object v2, p0, Lcom/samsung/privilege/fragment/StampListGiftFragment$5$1;->b:Lcom/samsung/privilege/fragment/StampListGiftFragment$5;

    iget-object v2, v2, Lcom/samsung/privilege/fragment/StampListGiftFragment$5;->c:Lcom/samsung/privilege/fragment/StampListGiftFragment;

    const v3, 0x7f09019e

    invoke-virtual {v2, v3}, Lcom/samsung/privilege/fragment/StampListGiftFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 344
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_c9
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_c9} :catch_10a

    .line 355
    :cond_c9
    :goto_c9
    if-eqz v1, :cond_f7

    :try_start_cb
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_f7

    iget-object v0, p0, Lcom/samsung/privilege/fragment/StampListGiftFragment$5$1;->b:Lcom/samsung/privilege/fragment/StampListGiftFragment$5;

    iget v0, v0, Lcom/samsung/privilege/fragment/StampListGiftFragment$5;->b:I

    if-nez v0, :cond_f7

    .line 356
    invoke-static {}, Lcom/samsung/privilege/fragment/StampListGiftFragment;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/fragment/StampListGiftFragment$5$1;->b:Lcom/samsung/privilege/fragment/StampListGiftFragment$5;

    iget-object v1, v1, Lcom/samsung/privilege/fragment/StampListGiftFragment$5;->c:Lcom/samsung/privilege/fragment/StampListGiftFragment;

    invoke-virtual {v1}, Lcom/samsung/privilege/fragment/StampListGiftFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/LocalFileHelper;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 357
    invoke-static {}, Lcom/samsung/privilege/fragment/StampListGiftFragment;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/fragment/StampListGiftFragment$5$1;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/privilege/fragment/StampListGiftFragment$5$1;->b:Lcom/samsung/privilege/fragment/StampListGiftFragment$5;

    iget-object v2, v2, Lcom/samsung/privilege/fragment/StampListGiftFragment$5;->c:Lcom/samsung/privilege/fragment/StampListGiftFragment;

    invoke-virtual {v2}, Lcom/samsung/privilege/fragment/StampListGiftFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/bzbs/util/LocalFileHelper;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    :try_end_f7
    .catch Ljava/lang/Exception; {:try_start_cb .. :try_end_f7} :catch_125

    .line 363
    :cond_f7
    :goto_f7
    iget-object v0, p0, Lcom/samsung/privilege/fragment/StampListGiftFragment$5$1;->b:Lcom/samsung/privilege/fragment/StampListGiftFragment$5;

    iget-object v0, v0, Lcom/samsung/privilege/fragment/StampListGiftFragment$5;->c:Lcom/samsung/privilege/fragment/StampListGiftFragment;

    invoke-static {v0, v4}, Lcom/samsung/privilege/fragment/StampListGiftFragment;->a(Lcom/samsung/privilege/fragment/StampListGiftFragment;Z)Z

    goto/16 :goto_b

    .line 334
    :cond_100
    :try_start_100
    iget-object v0, p0, Lcom/samsung/privilege/fragment/StampListGiftFragment$5$1;->b:Lcom/samsung/privilege/fragment/StampListGiftFragment$5;

    iget-object v0, v0, Lcom/samsung/privilege/fragment/StampListGiftFragment$5;->c:Lcom/samsung/privilege/fragment/StampListGiftFragment;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/samsung/privilege/fragment/StampListGiftFragment;->b(Lcom/samsung/privilege/fragment/StampListGiftFragment;Z)Z

    goto/16 :goto_77

    .line 350
    :catch_10a
    move-exception v0

    move-object v0, v1

    :goto_10c
    move-object v1, v0

    goto :goto_c9

    .line 347
    :cond_10e
    iget-object v0, p0, Lcom/samsung/privilege/fragment/StampListGiftFragment$5$1;->b:Lcom/samsung/privilege/fragment/StampListGiftFragment$5;

    iget-object v0, v0, Lcom/samsung/privilege/fragment/StampListGiftFragment$5;->c:Lcom/samsung/privilege/fragment/StampListGiftFragment;

    invoke-static {v0}, Lcom/samsung/privilege/fragment/StampListGiftFragment;->j(Lcom/samsung/privilege/fragment/StampListGiftFragment;)Lcom/samsung/privilege/fragment/StampListGiftFragment$StampListAdapter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/fragment/StampListGiftFragment$StampListAdapter;->a(Ljava/util/List;)V

    .line 348
    iget-object v0, p0, Lcom/samsung/privilege/fragment/StampListGiftFragment$5$1;->b:Lcom/samsung/privilege/fragment/StampListGiftFragment$5;

    iget-object v0, v0, Lcom/samsung/privilege/fragment/StampListGiftFragment$5;->c:Lcom/samsung/privilege/fragment/StampListGiftFragment;

    invoke-static {v0}, Lcom/samsung/privilege/fragment/StampListGiftFragment;->j(Lcom/samsung/privilege/fragment/StampListGiftFragment;)Lcom/samsung/privilege/fragment/StampListGiftFragment$StampListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/privilege/fragment/StampListGiftFragment$StampListAdapter;->notifyDataSetChanged()V
    :try_end_124
    .catch Ljava/lang/Exception; {:try_start_100 .. :try_end_124} :catch_10a

    goto :goto_c9

    .line 359
    :catch_125
    move-exception v0

    goto :goto_f7

    .line 350
    :catch_127
    move-exception v1

    goto :goto_10c
.end method
