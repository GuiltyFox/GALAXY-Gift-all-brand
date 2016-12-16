.class Lcom/samsung/privilege/util/DialogSearch$5$1;
.super Ljava/lang/Object;
.source "DialogSearch.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/DialogSearch$5;->successfully(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/samsung/privilege/util/DialogSearch$5;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/util/DialogSearch$5;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 244
    iput-object p1, p0, Lcom/samsung/privilege/util/DialogSearch$5$1;->b:Lcom/samsung/privilege/util/DialogSearch$5;

    iput-object p2, p0, Lcom/samsung/privilege/util/DialogSearch$5$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 247
    .line 249
    :try_start_1
    new-instance v0, Lorg/json/JSONArray;

    iget-object v1, p0, Lcom/samsung/privilege/util/DialogSearch$5$1;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bzbs/bean/Campaign;->GetArrayList(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v3

    .line 251
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {}, Lcom/samsung/privilege/util/DialogSearch;->k()I

    move-result v1

    if-ge v0, v1, :cond_8d

    .line 252
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/samsung/privilege/util/DialogSearch;->a(Z)Z

    .line 257
    :goto_1a
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogSearch$5$1;->b:Lcom/samsung/privilege/util/DialogSearch$5;

    iget v0, v0, Lcom/samsung/privilege/util/DialogSearch$5;->b:I

    if-nez v0, :cond_97

    .line 258
    new-instance v0, Lcom/samsung/privilege/util/DialogSearch$CampaignListAdapter;

    invoke-direct {v0, v3}, Lcom/samsung/privilege/util/DialogSearch$CampaignListAdapter;-><init>(Ljava/util/List;)V

    invoke-static {v0}, Lcom/samsung/privilege/util/DialogSearch;->a(Lcom/samsung/privilege/util/DialogSearch$CampaignListAdapter;)Lcom/samsung/privilege/util/DialogSearch$CampaignListAdapter;

    .line 259
    invoke-static {}, Lcom/samsung/privilege/util/DialogSearch;->l()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-static {}, Lcom/samsung/privilege/util/DialogSearch;->g()Lcom/samsung/privilege/util/DialogSearch$CampaignListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 265
    :goto_33
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogSearch$5$1;->b:Lcom/samsung/privilege/util/DialogSearch$5;

    iget v0, v0, Lcom/samsung/privilege/util/DialogSearch$5;->b:I

    if-nez v0, :cond_51

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_51

    .line 266
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogSearch$5$1;->b:Lcom/samsung/privilege/util/DialogSearch$5;

    iget-object v0, v0, Lcom/samsung/privilege/util/DialogSearch$5;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/privilege/util/DialogSearch$5$1;->b:Lcom/samsung/privilege/util/DialogSearch$5;

    iget-object v1, v1, Lcom/samsung/privilege/util/DialogSearch$5;->c:Landroid/content/Context;

    const v4, 0x7f090358

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/DialogUtil;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_51
    move v1, v2

    .line 269
    :goto_52
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_93

    .line 270
    const-string/jumbo v4, "Search"

    const-string/jumbo v5, "View Output Search"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/Campaign;

    iget-object v0, v0, Lcom/bzbs/bean/Campaign;->ID:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v6, "|"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/Campaign;

    iget-object v0, v0, Lcom/bzbs/bean/Campaign;->Name:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v5, v0}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_52

    .line 254
    :cond_8d
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/privilege/util/DialogSearch;->a(Z)Z
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_91} :catch_92

    goto :goto_1a

    .line 272
    :catch_92
    move-exception v0

    .line 276
    :cond_93
    invoke-static {v2}, Lcom/samsung/privilege/util/DialogSearch;->b(Z)Z

    .line 277
    return-void

    .line 261
    :cond_97
    :try_start_97
    invoke-static {}, Lcom/samsung/privilege/util/DialogSearch;->g()Lcom/samsung/privilege/util/DialogSearch$CampaignListAdapter;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/util/DialogSearch$CampaignListAdapter;->a(Ljava/util/List;)V

    .line 262
    invoke-static {}, Lcom/samsung/privilege/util/DialogSearch;->g()Lcom/samsung/privilege/util/DialogSearch$CampaignListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/privilege/util/DialogSearch$CampaignListAdapter;->notifyDataSetChanged()V
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_a5} :catch_92

    goto :goto_33
.end method
