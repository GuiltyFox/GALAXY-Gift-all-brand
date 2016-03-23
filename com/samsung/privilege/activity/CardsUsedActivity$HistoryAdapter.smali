.class public Lcom/samsung/privilege/activity/CardsUsedActivity$HistoryAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "CardsUsedActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/activity/CardsUsedActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HistoryAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/privilege/activity/CardsUsedActivity$HistoryAdapter$HistoryViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/samsung/privilege/activity/CardsUsedActivity$HistoryAdapter$HistoryViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field histories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bzbs/bean/HistoryCardsList;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/samsung/privilege/activity/CardsUsedActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CardsUsedActivity;Ljava/util/List;)V
    .registers 3
    .param p1, "this$0"    # Lcom/samsung/privilege/activity/CardsUsedActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bzbs/bean/HistoryCardsList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 840
    .local p2, "persons":Ljava/util/List;, "Ljava/util/List<Lcom/bzbs/bean/HistoryCardsList;>;"
    iput-object p1, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$HistoryAdapter;->this$0:Lcom/samsung/privilege/activity/CardsUsedActivity;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 841
    iput-object p2, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$HistoryAdapter;->histories:Ljava/util/List;

    .line 842
    return-void
.end method


# virtual methods
.method public addAll(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bzbs/bean/HistoryCardsList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 853
    .local p1, "new_items":Ljava/util/List;, "Ljava/util/List<Lcom/bzbs/bean/HistoryCardsList;>;"
    iget-object v0, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$HistoryAdapter;->histories:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 854
    return-void
.end method

.method public getItem(I)Lcom/bzbs/bean/HistoryCardsList;
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 846
    :try_start_0
    iget-object v1, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$HistoryAdapter;->histories:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bzbs/bean/HistoryCardsList;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    .line 848
    :goto_8
    return-object v1

    .line 847
    :catch_9
    move-exception v0

    .line 848
    .local v0, "ex":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public getItemCount()I
    .registers 2

    .prologue
    .line 913
    iget-object v0, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$HistoryAdapter;->histories:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .registers 2
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 918
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 919
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .prologue
    .line 836
    check-cast p1, Lcom/samsung/privilege/activity/CardsUsedActivity$HistoryAdapter$HistoryViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/privilege/activity/CardsUsedActivity$HistoryAdapter;->onBindViewHolder(Lcom/samsung/privilege/activity/CardsUsedActivity$HistoryAdapter$HistoryViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/samsung/privilege/activity/CardsUsedActivity$HistoryAdapter$HistoryViewHolder;I)V
    .registers 15
    .param p1, "holder"    # Lcom/samsung/privilege/activity/CardsUsedActivity$HistoryAdapter$HistoryViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 865
    iget-object v6, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$HistoryAdapter;->histories:Ljava/util/List;

    invoke-interface {v6, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bzbs/bean/HistoryCardsList;

    .line 867
    .local v2, "history":Lcom/bzbs/bean/HistoryCardsList;
    iget-object v6, p1, Lcom/samsung/privilege/activity/CardsUsedActivity$HistoryAdapter$HistoryViewHolder;->tvAgency:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v2, Lcom/bzbs/bean/HistoryCardsList;->MerchantName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " / "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v2, Lcom/bzbs/bean/HistoryCardsList;->branchName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 868
    new-instance v1, Ljava/text/DecimalFormat;

    const-string/jumbo v6, "###,###,###.##"

    invoke-direct {v1, v6}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 869
    .local v1, "formatter":Ljava/text/NumberFormat;
    iget-object v6, p1, Lcom/samsung/privilege/activity/CardsUsedActivity$HistoryAdapter$HistoryViewHolder;->tvPrice:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v8, v2, Lcom/bzbs/bean/HistoryCardsList;->Amount:D

    invoke-virtual {v1, v8, v9}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$HistoryAdapter;->this$0:Lcom/samsung/privilege/activity/CardsUsedActivity;

    const v9, 0x7f090346

    invoke-virtual {v8, v9}, Lcom/samsung/privilege/activity/CardsUsedActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 871
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 872
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v5

    .line 874
    .local v5, "tz":Ljava/util/TimeZone;
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string/jumbo v7, "hh:mm"

    iget-object v8, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$HistoryAdapter;->this$0:Lcom/samsung/privilege/activity/CardsUsedActivity;

    invoke-virtual {v8}, Lcom/samsung/privilege/activity/CardsUsedActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/bzbs/util/LanguageSetting;->GetLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v7, Ljava/util/Date;

    iget-wide v8, v2, Lcom/bzbs/bean/HistoryCardsList;->Timestamp:J

    const-wide/16 v10, 0x6270

    sub-long/2addr v8, v10

    invoke-virtual {v5}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v10

    div-int/lit16 v10, v10, 0x3e8

    int-to-long v10, v10

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x3e8

    mul-long/2addr v8, v10

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 875
    .local v4, "strRedeemTime":Ljava/lang/String;
    iget-object v6, p1, Lcom/samsung/privilege/activity/CardsUsedActivity$HistoryAdapter$HistoryViewHolder;->tvTime:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$HistoryAdapter;->this$0:Lcom/samsung/privilege/activity/CardsUsedActivity;

    const v9, 0x7f09034c

    invoke-virtual {v8, v9}, Lcom/samsung/privilege/activity/CardsUsedActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 877
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string/jumbo v7, "dd/MM/yy"

    iget-object v8, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$HistoryAdapter;->this$0:Lcom/samsung/privilege/activity/CardsUsedActivity;

    invoke-virtual {v8}, Lcom/samsung/privilege/activity/CardsUsedActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/bzbs/util/LanguageSetting;->GetLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v7, Ljava/util/Date;

    iget-wide v8, v2, Lcom/bzbs/bean/HistoryCardsList;->Timestamp:J

    const-wide/16 v10, 0x6270

    sub-long/2addr v8, v10

    invoke-virtual {v5}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v10

    div-int/lit16 v10, v10, 0x3e8

    int-to-long v10, v10

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x3e8

    mul-long/2addr v8, v10

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 878
    .local v3, "strRedeemDate":Ljava/lang/String;
    iget-object v6, p1, Lcom/samsung/privilege/activity/CardsUsedActivity$HistoryAdapter$HistoryViewHolder;->tvDate:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$HistoryAdapter;->this$0:Lcom/samsung/privilege/activity/CardsUsedActivity;

    const v9, 0x7f09034a

    invoke-virtual {v8, v9}, Lcom/samsung/privilege/activity/CardsUsedActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 880
    iget-object v6, v2, Lcom/bzbs/bean/HistoryCardsList;->transactionId:Ljava/lang/String;

    if-eqz v6, :cond_16c

    iget-object v6, v2, Lcom/bzbs/bean/HistoryCardsList;->transactionId:Ljava/lang/String;

    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_16c

    .line 881
    iget v6, v2, Lcom/bzbs/bean/HistoryCardsList;->status:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_141

    .line 887
    iget-object v6, p1, Lcom/samsung/privilege/activity/CardsUsedActivity$HistoryAdapter$HistoryViewHolder;->imgRefund:Landroid/widget/ImageView;

    const v7, 0x7f020279

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 888
    iget-object v6, p1, Lcom/samsung/privilege/activity/CardsUsedActivity$HistoryAdapter$HistoryViewHolder;->imgRefund:Landroid/widget/ImageView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 908
    :goto_129
    iget-object v6, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$HistoryAdapter;->this$0:Lcom/samsung/privilege/activity/CardsUsedActivity;

    invoke-static {v6}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v6

    iget-object v7, v2, Lcom/bzbs/bean/HistoryCardsList;->ImageUrl:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v6

    sget-object v7, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v6, v7}, Lcom/bumptech/glide/DrawableTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/samsung/privilege/activity/CardsUsedActivity$HistoryAdapter$HistoryViewHolder;->imgAgency:Landroid/widget/ImageView;

    invoke-virtual {v6, v7}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 909
    return-void

    .line 889
    :cond_141
    iget v6, v2, Lcom/bzbs/bean/HistoryCardsList;->status:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_155

    .line 895
    iget-object v6, p1, Lcom/samsung/privilege/activity/CardsUsedActivity$HistoryAdapter$HistoryViewHolder;->imgRefund:Landroid/widget/ImageView;

    const v7, 0x7f02027a

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 896
    iget-object v6, p1, Lcom/samsung/privilege/activity/CardsUsedActivity$HistoryAdapter$HistoryViewHolder;->imgRefund:Landroid/widget/ImageView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_129

    .line 898
    :cond_155
    iget-object v6, p1, Lcom/samsung/privilege/activity/CardsUsedActivity$HistoryAdapter$HistoryViewHolder;->imgRefund:Landroid/widget/ImageView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 899
    iget-object v6, p1, Lcom/samsung/privilege/activity/CardsUsedActivity$HistoryAdapter$HistoryViewHolder;->tvType:Landroid/widget/TextView;

    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 900
    iget-object v6, p1, Lcom/samsung/privilege/activity/CardsUsedActivity$HistoryAdapter$HistoryViewHolder;->tvType:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_129

    .line 903
    :cond_16c
    iget-object v6, p1, Lcom/samsung/privilege/activity/CardsUsedActivity$HistoryAdapter$HistoryViewHolder;->imgRefund:Landroid/widget/ImageView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 904
    iget-object v6, p1, Lcom/samsung/privilege/activity/CardsUsedActivity$HistoryAdapter$HistoryViewHolder;->tvType:Landroid/widget/TextView;

    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 905
    iget-object v6, p1, Lcom/samsung/privilege/activity/CardsUsedActivity$HistoryAdapter$HistoryViewHolder;->tvType:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_129
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .registers 4

    .prologue
    .line 836
    invoke-virtual {p0, p1, p2}, Lcom/samsung/privilege/activity/CardsUsedActivity$HistoryAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/privilege/activity/CardsUsedActivity$HistoryAdapter$HistoryViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/privilege/activity/CardsUsedActivity$HistoryAdapter$HistoryViewHolder;
    .registers 8
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 858
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0400d2

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 859
    .local v1, "v":Landroid/view/View;
    new-instance v0, Lcom/samsung/privilege/activity/CardsUsedActivity$HistoryAdapter$HistoryViewHolder;

    invoke-direct {v0, p0, v1}, Lcom/samsung/privilege/activity/CardsUsedActivity$HistoryAdapter$HistoryViewHolder;-><init>(Lcom/samsung/privilege/activity/CardsUsedActivity$HistoryAdapter;Landroid/view/View;)V

    .line 860
    .local v0, "pvh":Lcom/samsung/privilege/activity/CardsUsedActivity$HistoryAdapter$HistoryViewHolder;
    return-object v0
.end method
