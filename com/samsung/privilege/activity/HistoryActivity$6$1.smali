.class Lcom/samsung/privilege/activity/HistoryActivity$6$1;
.super Ljava/lang/Object;
.source "HistoryActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/HistoryActivity$6;->successfully(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/samsung/privilege/activity/HistoryActivity$6;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/HistoryActivity$6;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 811
    iput-object p1, p0, Lcom/samsung/privilege/activity/HistoryActivity$6$1;->b:Lcom/samsung/privilege/activity/HistoryActivity$6;

    iput-object p2, p0, Lcom/samsung/privilege/activity/HistoryActivity$6$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 814
    iget-object v0, p0, Lcom/samsung/privilege/activity/HistoryActivity$6$1;->b:Lcom/samsung/privilege/activity/HistoryActivity$6;

    iget-object v0, v0, Lcom/samsung/privilege/activity/HistoryActivity$6;->b:Lcom/samsung/privilege/activity/HistoryActivity;

    const v1, 0x7f100113

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/HistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 815
    invoke-virtual {v0, v4}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 818
    :try_start_11
    new-instance v0, Lorg/json/JSONArray;

    iget-object v1, p0, Lcom/samsung/privilege/activity/HistoryActivity$6$1;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bzbs/bean/Purchasing;->GetArrayList(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v0

    .line 820
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0x19

    if-ge v1, v2, :cond_5d

    .line 821
    iget-object v1, p0, Lcom/samsung/privilege/activity/HistoryActivity$6$1;->b:Lcom/samsung/privilege/activity/HistoryActivity$6;

    iget-object v1, v1, Lcom/samsung/privilege/activity/HistoryActivity$6;->b:Lcom/samsung/privilege/activity/HistoryActivity;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/samsung/privilege/activity/HistoryActivity;->a(Lcom/samsung/privilege/activity/HistoryActivity;Z)Z

    .line 826
    :goto_2c
    iget-object v1, p0, Lcom/samsung/privilege/activity/HistoryActivity$6$1;->b:Lcom/samsung/privilege/activity/HistoryActivity$6;

    iget v1, v1, Lcom/samsung/privilege/activity/HistoryActivity$6;->a:I

    if-nez v1, :cond_72

    .line 827
    iget-object v1, p0, Lcom/samsung/privilege/activity/HistoryActivity$6$1;->b:Lcom/samsung/privilege/activity/HistoryActivity$6;

    iget-object v1, v1, Lcom/samsung/privilege/activity/HistoryActivity$6;->b:Lcom/samsung/privilege/activity/HistoryActivity;

    new-instance v2, Lcom/samsung/privilege/activity/HistoryActivity$HistoryAdapter;

    iget-object v3, p0, Lcom/samsung/privilege/activity/HistoryActivity$6$1;->b:Lcom/samsung/privilege/activity/HistoryActivity$6;

    iget-object v3, v3, Lcom/samsung/privilege/activity/HistoryActivity$6;->b:Lcom/samsung/privilege/activity/HistoryActivity;

    invoke-direct {v2, v3, v0}, Lcom/samsung/privilege/activity/HistoryActivity$HistoryAdapter;-><init>(Lcom/samsung/privilege/activity/HistoryActivity;Ljava/util/List;)V

    invoke-static {v1, v2}, Lcom/samsung/privilege/activity/HistoryActivity;->a(Lcom/samsung/privilege/activity/HistoryActivity;Lcom/samsung/privilege/activity/HistoryActivity$HistoryAdapter;)Lcom/samsung/privilege/activity/HistoryActivity$HistoryAdapter;

    .line 828
    iget-object v0, p0, Lcom/samsung/privilege/activity/HistoryActivity$6$1;->b:Lcom/samsung/privilege/activity/HistoryActivity$6;

    iget-object v0, v0, Lcom/samsung/privilege/activity/HistoryActivity$6;->b:Lcom/samsung/privilege/activity/HistoryActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/HistoryActivity;->l(Lcom/samsung/privilege/activity/HistoryActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/HistoryActivity$6$1;->b:Lcom/samsung/privilege/activity/HistoryActivity$6;

    iget-object v1, v1, Lcom/samsung/privilege/activity/HistoryActivity$6;->b:Lcom/samsung/privilege/activity/HistoryActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/HistoryActivity;->h(Lcom/samsung/privilege/activity/HistoryActivity;)Lcom/samsung/privilege/activity/HistoryActivity$HistoryAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_55} :catch_66

    .line 837
    :goto_55
    iget-object v0, p0, Lcom/samsung/privilege/activity/HistoryActivity$6$1;->b:Lcom/samsung/privilege/activity/HistoryActivity$6;

    iget-object v0, v0, Lcom/samsung/privilege/activity/HistoryActivity$6;->b:Lcom/samsung/privilege/activity/HistoryActivity;

    invoke-static {v0, v4}, Lcom/samsung/privilege/activity/HistoryActivity;->b(Lcom/samsung/privilege/activity/HistoryActivity;Z)Z

    .line 838
    return-void

    .line 823
    :cond_5d
    :try_start_5d
    iget-object v1, p0, Lcom/samsung/privilege/activity/HistoryActivity$6$1;->b:Lcom/samsung/privilege/activity/HistoryActivity$6;

    iget-object v1, v1, Lcom/samsung/privilege/activity/HistoryActivity$6;->b:Lcom/samsung/privilege/activity/HistoryActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/samsung/privilege/activity/HistoryActivity;->a(Lcom/samsung/privilege/activity/HistoryActivity;Z)Z
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_65} :catch_66

    goto :goto_2c

    .line 833
    :catch_66
    move-exception v0

    .line 834
    iget-object v0, p0, Lcom/samsung/privilege/activity/HistoryActivity$6$1;->b:Lcom/samsung/privilege/activity/HistoryActivity$6;

    iget-object v0, v0, Lcom/samsung/privilege/activity/HistoryActivity$6;->b:Lcom/samsung/privilege/activity/HistoryActivity;

    const-string/jumbo v1, "Invalid data format!!!"

    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/HistoryActivity;->b(Lcom/samsung/privilege/activity/HistoryActivity;Ljava/lang/String;)V

    goto :goto_55

    .line 830
    :cond_72
    :try_start_72
    iget-object v1, p0, Lcom/samsung/privilege/activity/HistoryActivity$6$1;->b:Lcom/samsung/privilege/activity/HistoryActivity$6;

    iget-object v1, v1, Lcom/samsung/privilege/activity/HistoryActivity$6;->b:Lcom/samsung/privilege/activity/HistoryActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/HistoryActivity;->h(Lcom/samsung/privilege/activity/HistoryActivity;)Lcom/samsung/privilege/activity/HistoryActivity$HistoryAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/privilege/activity/HistoryActivity$HistoryAdapter;->a(Ljava/util/List;)V

    .line 831
    iget-object v0, p0, Lcom/samsung/privilege/activity/HistoryActivity$6$1;->b:Lcom/samsung/privilege/activity/HistoryActivity$6;

    iget-object v0, v0, Lcom/samsung/privilege/activity/HistoryActivity$6;->b:Lcom/samsung/privilege/activity/HistoryActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/HistoryActivity;->h(Lcom/samsung/privilege/activity/HistoryActivity;)Lcom/samsung/privilege/activity/HistoryActivity$HistoryAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/HistoryActivity$HistoryAdapter;->notifyDataSetChanged()V
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_88} :catch_66

    goto :goto_55
.end method
