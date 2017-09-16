.class Lcom/samsung/privilege/activity/StampBranchActivity$5$1;
.super Ljava/lang/Object;
.source "StampBranchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/StampBranchActivity$5;->successfully(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/samsung/privilege/activity/StampBranchActivity$5;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/StampBranchActivity$5;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 290
    iput-object p1, p0, Lcom/samsung/privilege/activity/StampBranchActivity$5$1;->b:Lcom/samsung/privilege/activity/StampBranchActivity$5;

    iput-object p2, p0, Lcom/samsung/privilege/activity/StampBranchActivity$5$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 293
    iget-object v0, p0, Lcom/samsung/privilege/activity/StampBranchActivity$5$1;->b:Lcom/samsung/privilege/activity/StampBranchActivity$5;

    iget-object v0, v0, Lcom/samsung/privilege/activity/StampBranchActivity$5;->b:Lcom/samsung/privilege/activity/StampBranchActivity;

    const v1, 0x7f10011d

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/StampBranchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 294
    invoke-virtual {v0, v5}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 297
    :try_start_11
    new-instance v0, Lorg/json/JSONArray;

    iget-object v1, p0, Lcom/samsung/privilege/activity/StampBranchActivity$5$1;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bzbs/bean/Place;->GetArrayList(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v1

    .line 299
    iget-object v0, p0, Lcom/samsung/privilege/activity/StampBranchActivity$5$1;->b:Lcom/samsung/privilege/activity/StampBranchActivity$5;

    iget-object v0, v0, Lcom/samsung/privilege/activity/StampBranchActivity$5;->b:Lcom/samsung/privilege/activity/StampBranchActivity;

    const v2, 0x7f1001f0

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/StampBranchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/privilege/activity/StampBranchActivity$5$1;->b:Lcom/samsung/privilege/activity/StampBranchActivity$5;

    iget-object v3, v3, Lcom/samsung/privilege/activity/StampBranchActivity$5;->b:Lcom/samsung/privilege/activity/StampBranchActivity;

    const v4, 0x7f090171

    invoke-virtual {v3, v4}, Lcom/samsung/privilege/activity/StampBranchActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 301
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v2, 0x19

    if-ge v0, v2, :cond_94

    .line 302
    iget-object v0, p0, Lcom/samsung/privilege/activity/StampBranchActivity$5$1;->b:Lcom/samsung/privilege/activity/StampBranchActivity$5;

    iget-object v0, v0, Lcom/samsung/privilege/activity/StampBranchActivity$5;->b:Lcom/samsung/privilege/activity/StampBranchActivity;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/samsung/privilege/activity/StampBranchActivity;->a(Lcom/samsung/privilege/activity/StampBranchActivity;Z)Z

    .line 307
    :goto_63
    iget-object v0, p0, Lcom/samsung/privilege/activity/StampBranchActivity$5$1;->b:Lcom/samsung/privilege/activity/StampBranchActivity$5;

    iget v0, v0, Lcom/samsung/privilege/activity/StampBranchActivity$5;->a:I

    if-nez v0, :cond_a9

    .line 308
    iget-object v0, p0, Lcom/samsung/privilege/activity/StampBranchActivity$5$1;->b:Lcom/samsung/privilege/activity/StampBranchActivity$5;

    iget-object v0, v0, Lcom/samsung/privilege/activity/StampBranchActivity$5;->b:Lcom/samsung/privilege/activity/StampBranchActivity;

    new-instance v2, Lcom/samsung/privilege/activity/StampBranchActivity$PlaceAdapter;

    iget-object v3, p0, Lcom/samsung/privilege/activity/StampBranchActivity$5$1;->b:Lcom/samsung/privilege/activity/StampBranchActivity$5;

    iget-object v3, v3, Lcom/samsung/privilege/activity/StampBranchActivity$5;->b:Lcom/samsung/privilege/activity/StampBranchActivity;

    invoke-direct {v2, v3, v1}, Lcom/samsung/privilege/activity/StampBranchActivity$PlaceAdapter;-><init>(Lcom/samsung/privilege/activity/StampBranchActivity;Ljava/util/List;)V

    invoke-static {v0, v2}, Lcom/samsung/privilege/activity/StampBranchActivity;->a(Lcom/samsung/privilege/activity/StampBranchActivity;Lcom/samsung/privilege/activity/StampBranchActivity$PlaceAdapter;)Lcom/samsung/privilege/activity/StampBranchActivity$PlaceAdapter;

    .line 309
    iget-object v0, p0, Lcom/samsung/privilege/activity/StampBranchActivity$5$1;->b:Lcom/samsung/privilege/activity/StampBranchActivity$5;

    iget-object v0, v0, Lcom/samsung/privilege/activity/StampBranchActivity$5;->b:Lcom/samsung/privilege/activity/StampBranchActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/StampBranchActivity;->l(Lcom/samsung/privilege/activity/StampBranchActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/StampBranchActivity$5$1;->b:Lcom/samsung/privilege/activity/StampBranchActivity$5;

    iget-object v1, v1, Lcom/samsung/privilege/activity/StampBranchActivity$5;->b:Lcom/samsung/privilege/activity/StampBranchActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/StampBranchActivity;->k(Lcom/samsung/privilege/activity/StampBranchActivity;)Lcom/samsung/privilege/activity/StampBranchActivity$PlaceAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_8c} :catch_9d

    .line 318
    :goto_8c
    iget-object v0, p0, Lcom/samsung/privilege/activity/StampBranchActivity$5$1;->b:Lcom/samsung/privilege/activity/StampBranchActivity$5;

    iget-object v0, v0, Lcom/samsung/privilege/activity/StampBranchActivity$5;->b:Lcom/samsung/privilege/activity/StampBranchActivity;

    invoke-static {v0, v5}, Lcom/samsung/privilege/activity/StampBranchActivity;->b(Lcom/samsung/privilege/activity/StampBranchActivity;Z)Z

    .line 319
    return-void

    .line 304
    :cond_94
    :try_start_94
    iget-object v0, p0, Lcom/samsung/privilege/activity/StampBranchActivity$5$1;->b:Lcom/samsung/privilege/activity/StampBranchActivity$5;

    iget-object v0, v0, Lcom/samsung/privilege/activity/StampBranchActivity$5;->b:Lcom/samsung/privilege/activity/StampBranchActivity;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/samsung/privilege/activity/StampBranchActivity;->a(Lcom/samsung/privilege/activity/StampBranchActivity;Z)Z
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_9c} :catch_9d

    goto :goto_63

    .line 314
    :catch_9d
    move-exception v0

    .line 315
    iget-object v0, p0, Lcom/samsung/privilege/activity/StampBranchActivity$5$1;->b:Lcom/samsung/privilege/activity/StampBranchActivity$5;

    iget-object v0, v0, Lcom/samsung/privilege/activity/StampBranchActivity$5;->b:Lcom/samsung/privilege/activity/StampBranchActivity;

    const-string/jumbo v1, "Invalid data format!!!"

    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/StampBranchActivity;->b(Lcom/samsung/privilege/activity/StampBranchActivity;Ljava/lang/String;)V

    goto :goto_8c

    .line 311
    :cond_a9
    :try_start_a9
    iget-object v0, p0, Lcom/samsung/privilege/activity/StampBranchActivity$5$1;->b:Lcom/samsung/privilege/activity/StampBranchActivity$5;

    iget-object v0, v0, Lcom/samsung/privilege/activity/StampBranchActivity$5;->b:Lcom/samsung/privilege/activity/StampBranchActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/StampBranchActivity;->k(Lcom/samsung/privilege/activity/StampBranchActivity;)Lcom/samsung/privilege/activity/StampBranchActivity$PlaceAdapter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/StampBranchActivity$PlaceAdapter;->a(Ljava/util/List;)V

    .line 312
    iget-object v0, p0, Lcom/samsung/privilege/activity/StampBranchActivity$5$1;->b:Lcom/samsung/privilege/activity/StampBranchActivity$5;

    iget-object v0, v0, Lcom/samsung/privilege/activity/StampBranchActivity$5;->b:Lcom/samsung/privilege/activity/StampBranchActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/StampBranchActivity;->k(Lcom/samsung/privilege/activity/StampBranchActivity;)Lcom/samsung/privilege/activity/StampBranchActivity$PlaceAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/StampBranchActivity$PlaceAdapter;->notifyDataSetChanged()V
    :try_end_bf
    .catch Ljava/lang/Exception; {:try_start_a9 .. :try_end_bf} :catch_9d

    goto :goto_8c
.end method
