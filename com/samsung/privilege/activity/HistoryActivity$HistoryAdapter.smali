.class public Lcom/samsung/privilege/activity/HistoryActivity$HistoryAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "HistoryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/activity/HistoryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HistoryAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/privilege/activity/HistoryActivity$HistoryAdapter$HistoryViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/samsung/privilege/activity/HistoryActivity$HistoryAdapter$HistoryViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field histories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bzbs/bean/Purchasing;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/samsung/privilege/activity/HistoryActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/HistoryActivity;Ljava/util/List;)V
    .registers 3
    .param p1, "this$0"    # Lcom/samsung/privilege/activity/HistoryActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bzbs/bean/Purchasing;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 822
    .local p2, "persons":Ljava/util/List;, "Ljava/util/List<Lcom/bzbs/bean/Purchasing;>;"
    iput-object p1, p0, Lcom/samsung/privilege/activity/HistoryActivity$HistoryAdapter;->this$0:Lcom/samsung/privilege/activity/HistoryActivity;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 823
    iput-object p2, p0, Lcom/samsung/privilege/activity/HistoryActivity$HistoryAdapter;->histories:Ljava/util/List;

    .line 824
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
            "Lcom/bzbs/bean/Purchasing;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 835
    .local p1, "new_items":Ljava/util/List;, "Ljava/util/List<Lcom/bzbs/bean/Purchasing;>;"
    iget-object v0, p0, Lcom/samsung/privilege/activity/HistoryActivity$HistoryAdapter;->histories:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 836
    return-void
.end method

.method public getItem(I)Lcom/bzbs/bean/Purchasing;
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 828
    :try_start_0
    iget-object v1, p0, Lcom/samsung/privilege/activity/HistoryActivity$HistoryAdapter;->histories:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bzbs/bean/Purchasing;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    .line 830
    :goto_8
    return-object v1

    .line 829
    :catch_9
    move-exception v0

    .line 830
    .local v0, "ex":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public getItemCount()I
    .registers 2

    .prologue
    .line 880
    iget-object v0, p0, Lcom/samsung/privilege/activity/HistoryActivity$HistoryAdapter;->histories:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .registers 2
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 885
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 886
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .prologue
    .line 818
    check-cast p1, Lcom/samsung/privilege/activity/HistoryActivity$HistoryAdapter$HistoryViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/privilege/activity/HistoryActivity$HistoryAdapter;->onBindViewHolder(Lcom/samsung/privilege/activity/HistoryActivity$HistoryAdapter$HistoryViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/samsung/privilege/activity/HistoryActivity$HistoryAdapter$HistoryViewHolder;I)V
    .registers 13
    .param p1, "holder"    # Lcom/samsung/privilege/activity/HistoryActivity$HistoryAdapter$HistoryViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 847
    iget-object v4, p0, Lcom/samsung/privilege/activity/HistoryActivity$HistoryAdapter;->this$0:Lcom/samsung/privilege/activity/HistoryActivity;

    # setter for: Lcom/samsung/privilege/activity/HistoryActivity;->pastVisiblesItems:I
    invoke-static {v4, p2}, Lcom/samsung/privilege/activity/HistoryActivity;->access$602(Lcom/samsung/privilege/activity/HistoryActivity;I)I

    .line 848
    iget-object v4, p0, Lcom/samsung/privilege/activity/HistoryActivity$HistoryAdapter;->histories:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bzbs/bean/Purchasing;

    .line 850
    .local v1, "history":Lcom/bzbs/bean/Purchasing;
    iget-object v4, p1, Lcom/samsung/privilege/activity/HistoryActivity$HistoryAdapter$HistoryViewHolder;->textAgency:Landroid/widget/TextView;

    iget-object v5, v1, Lcom/bzbs/bean/Purchasing;->AgencyName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 851
    iget-object v4, p1, Lcom/samsung/privilege/activity/HistoryActivity$HistoryAdapter$HistoryViewHolder;->textName:Landroid/widget/TextView;

    iget-object v5, v1, Lcom/bzbs/bean/Purchasing;->Name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 852
    iget-wide v4, v1, Lcom/bzbs/bean/Purchasing;->PointPerUnit:J

    const-wide/16 v6, 0x2

    cmp-long v4, v4, v6

    if-ltz v4, :cond_de

    .line 853
    iget-object v4, p1, Lcom/samsung/privilege/activity/HistoryActivity$HistoryAdapter$HistoryViewHolder;->textPoint:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v6, v1, Lcom/bzbs/bean/Purchasing;->PointPerUnit:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/privilege/activity/HistoryActivity$HistoryAdapter;->this$0:Lcom/samsung/privilege/activity/HistoryActivity;

    const v7, 0x7f09032f

    invoke-virtual {v6, v7}, Lcom/samsung/privilege/activity/HistoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 858
    :goto_4b
    iget-object v4, v1, Lcom/bzbs/bean/Purchasing;->Type:Ljava/lang/String;

    const-string/jumbo v5, "3"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_112

    .line 859
    iget-boolean v4, v1, Lcom/bzbs/bean/Purchasing;->IsUsed:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_108

    .line 860
    iget-object v4, p1, Lcom/samsung/privilege/activity/HistoryActivity$HistoryAdapter$HistoryViewHolder;->ivUseStatus:Landroid/widget/ImageView;

    const v5, 0x7f020367

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 864
    :goto_63
    iget-object v4, p1, Lcom/samsung/privilege/activity/HistoryActivity$HistoryAdapter$HistoryViewHolder;->ivUseStatus:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 869
    :goto_69
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 870
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v3

    .line 872
    .local v3, "tz":Ljava/util/TimeZone;
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string/jumbo v5, "dd/MM/yy"

    iget-object v6, p0, Lcom/samsung/privilege/activity/HistoryActivity$HistoryAdapter;->this$0:Lcom/samsung/privilege/activity/HistoryActivity;

    invoke-virtual {v6}, Lcom/samsung/privilege/activity/HistoryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/bzbs/util/LanguageSetting;->GetLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v5, Ljava/util/Date;

    iget-wide v6, v1, Lcom/bzbs/bean/Purchasing;->RedeemDate:J

    invoke-virtual {v3}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v8

    div-int/lit16 v8, v8, 0x3e8

    int-to-long v8, v8

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 873
    .local v2, "strRedeemDate":Ljava/lang/String;
    iget-object v4, p1, Lcom/samsung/privilege/activity/HistoryActivity$HistoryAdapter$HistoryViewHolder;->textRedeemDate:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/samsung/privilege/activity/HistoryActivity$HistoryAdapter;->this$0:Lcom/samsung/privilege/activity/HistoryActivity;

    const v7, 0x7f0901a4

    invoke-virtual {v6, v7}, Lcom/samsung/privilege/activity/HistoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 875
    iget-object v4, p0, Lcom/samsung/privilege/activity/HistoryActivity$HistoryAdapter;->this$0:Lcom/samsung/privilege/activity/HistoryActivity;

    invoke-static {v4}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v4

    iget-object v5, v1, Lcom/bzbs/bean/Purchasing;->FullImageUrl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v4

    const v5, 0x7f0202cd

    invoke-virtual {v4, v5}, Lcom/bumptech/glide/DrawableTypeRequest;->placeholder(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v4

    sget-object v5, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v4, v5}, Lcom/bumptech/glide/DrawableRequestBuilder;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/samsung/privilege/activity/HistoryActivity$HistoryAdapter$HistoryViewHolder;->imageCampaign:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 876
    return-void

    .line 855
    .end local v0    # "cal":Ljava/util/Calendar;
    .end local v2    # "strRedeemDate":Ljava/lang/String;
    .end local v3    # "tz":Ljava/util/TimeZone;
    :cond_de
    iget-object v4, p1, Lcom/samsung/privilege/activity/HistoryActivity$HistoryAdapter$HistoryViewHolder;->textPoint:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v6, v1, Lcom/bzbs/bean/Purchasing;->PointPerUnit:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/privilege/activity/HistoryActivity$HistoryAdapter;->this$0:Lcom/samsung/privilege/activity/HistoryActivity;

    const v7, 0x7f09032a

    invoke-virtual {v6, v7}, Lcom/samsung/privilege/activity/HistoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4b

    .line 862
    :cond_108
    iget-object v4, p1, Lcom/samsung/privilege/activity/HistoryActivity$HistoryAdapter$HistoryViewHolder;->ivUseStatus:Landroid/widget/ImageView;

    const v5, 0x7f020309

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_63

    .line 866
    :cond_112
    iget-object v4, p1, Lcom/samsung/privilege/activity/HistoryActivity$HistoryAdapter$HistoryViewHolder;->ivUseStatus:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_69
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .registers 4

    .prologue
    .line 818
    invoke-virtual {p0, p1, p2}, Lcom/samsung/privilege/activity/HistoryActivity$HistoryAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/privilege/activity/HistoryActivity$HistoryAdapter$HistoryViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/privilege/activity/HistoryActivity$HistoryAdapter$HistoryViewHolder;
    .registers 8
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 840
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040031

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 841
    .local v1, "v":Landroid/view/View;
    new-instance v0, Lcom/samsung/privilege/activity/HistoryActivity$HistoryAdapter$HistoryViewHolder;

    invoke-direct {v0, p0, v1}, Lcom/samsung/privilege/activity/HistoryActivity$HistoryAdapter$HistoryViewHolder;-><init>(Lcom/samsung/privilege/activity/HistoryActivity$HistoryAdapter;Landroid/view/View;)V

    .line 842
    .local v0, "pvh":Lcom/samsung/privilege/activity/HistoryActivity$HistoryAdapter$HistoryViewHolder;
    return-object v0
.end method
