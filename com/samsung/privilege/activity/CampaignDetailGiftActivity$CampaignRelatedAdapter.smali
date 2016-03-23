.class public Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignRelatedAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "CampaignDetailGiftActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CampaignRelatedAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignRelatedAdapter$CampaignViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignRelatedAdapter$CampaignViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field campaigns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bzbs/bean/Campaign;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;Ljava/util/List;)V
    .registers 3
    .param p1, "this$0"    # Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bzbs/bean/Campaign;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1900
    .local p2, "campaigns":Ljava/util/List;, "Ljava/util/List<Lcom/bzbs/bean/Campaign;>;"
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignRelatedAdapter;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 1901
    iput-object p2, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignRelatedAdapter;->campaigns:Ljava/util/List;

    .line 1902
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
            "Lcom/bzbs/bean/Campaign;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1913
    .local p1, "new_items":Ljava/util/List;, "Ljava/util/List<Lcom/bzbs/bean/Campaign;>;"
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignRelatedAdapter;->campaigns:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1914
    return-void
.end method

.method public getItem(I)Lcom/bzbs/bean/Campaign;
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 1906
    :try_start_0
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignRelatedAdapter;->campaigns:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bzbs/bean/Campaign;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    .line 1908
    :goto_8
    return-object v1

    .line 1907
    :catch_9
    move-exception v0

    .line 1908
    .local v0, "ex":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public getItemCount()I
    .registers 2

    .prologue
    .line 1977
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignRelatedAdapter;->campaigns:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .registers 2
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 1982
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 1983
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .prologue
    .line 1896
    check-cast p1, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignRelatedAdapter$CampaignViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignRelatedAdapter;->onBindViewHolder(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignRelatedAdapter$CampaignViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignRelatedAdapter$CampaignViewHolder;I)V
    .registers 15
    .param p1, "holder"    # Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignRelatedAdapter$CampaignViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 1926
    iget-object v7, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignRelatedAdapter;->campaigns:Ljava/util/List;

    invoke-interface {v7, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bzbs/bean/Campaign;

    .line 1938
    .local v4, "campaign":Lcom/bzbs/bean/Campaign;
    iget-object v7, p1, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignRelatedAdapter$CampaignViewHolder;->textTitle:Landroid/widget/TextView;

    iget-object v8, v4, Lcom/bzbs/bean/Campaign;->AgencyName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1939
    iget-object v7, p1, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignRelatedAdapter$CampaignViewHolder;->textDetail:Landroid/widget/TextView;

    iget-object v8, v4, Lcom/bzbs/bean/Campaign;->Name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1941
    iget v7, v4, Lcom/bzbs/bean/Campaign;->DayProceed:I

    const/4 v8, 0x2

    if-gt v7, v8, :cond_c3

    .line 1942
    iget-object v7, p1, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignRelatedAdapter$CampaignViewHolder;->textStatus:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignRelatedAdapter;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    const v9, 0x7f0900be

    invoke-virtual {v8, v9}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1943
    iget-object v7, p1, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignRelatedAdapter$CampaignViewHolder;->textStatus:Landroid/widget/TextView;

    sget v8, Lcom/bzbs/data/AppSetting;->COLOR_RED:I

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1954
    :goto_30
    iget-object v7, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignRelatedAdapter;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-virtual {v7}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/bzbs/data/UserLogin;->IS_ADMIN(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_130

    .line 1955
    new-instance v5, Ljava/text/DecimalFormat;

    const-string/jumbo v7, "#,###,###"

    invoke-direct {v5, v7}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 1957
    .local v5, "formatter":Ljava/text/DecimalFormat;
    const-string/jumbo v6, ""

    .line 1959
    .local v6, "strCampaign_remain":Ljava/lang/String;
    :try_start_47
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignRelatedAdapter;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    const v9, 0x7f0900e1

    invoke-virtual {v8, v9}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, v4, Lcom/bzbs/bean/Campaign;->Qty:J

    invoke-virtual {v5, v8, v9}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_6d} :catch_139

    move-result-object v6

    .line 1964
    :goto_6e
    iget-object v7, p1, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignRelatedAdapter$CampaignViewHolder;->textRemaining:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1965
    iget-object v7, p1, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignRelatedAdapter$CampaignViewHolder;->textRemaining:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1970
    .end local v5    # "formatter":Ljava/text/DecimalFormat;
    .end local v6    # "strCampaign_remain":Ljava/lang/String;
    :goto_79
    iget-object v7, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignRelatedAdapter;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-virtual {v7}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v7

    invoke-virtual {v4}, Lcom/bzbs/bean/Campaign;->FullImageUrlLarge()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v7

    const v8, 0x7f0202c9

    invoke-virtual {v7, v8}, Lcom/bumptech/glide/DrawableTypeRequest;->placeholder(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v7

    sget-object v8, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v7, v8}, Lcom/bumptech/glide/DrawableRequestBuilder;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignRelatedAdapter$CampaignViewHolder;->imageNoti:Landroid/widget/ImageView;

    invoke-virtual {v7, v8}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 1972
    const-string/jumbo v7, "Gift Campaign Details"

    const-string/jumbo v8, "View Relate Deal"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v4, Lcom/bzbs/bean/Campaign;->ID:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "|"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Lcom/bzbs/bean/Campaign;->Name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/samsung/privilege/GalaxyGift;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1973
    return-void

    .line 1945
    :cond_c3
    iget-object v7, v4, Lcom/bzbs/bean/Campaign;->ExpireDate:Ljava/lang/String;

    invoke-static {v7}, Lcom/bzbs/util/BBUtil;->CTypeLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iget-object v7, v4, Lcom/bzbs/bean/Campaign;->CurrentDate:Ljava/lang/String;

    invoke-static {v7}, Lcom/bzbs/util/BBUtil;->CTypeLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    sub-long v0, v8, v10

    .line 1946
    .local v0, "RemainingDate":J
    const-wide/16 v8, 0x0

    cmp-long v7, v0, v8

    if-lez v7, :cond_120

    .line 1947
    const-wide/32 v8, 0x15180

    div-long v2, v0, v8

    .line 1948
    .local v2, "RemainingDay":J
    iget-object v7, p1, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignRelatedAdapter$CampaignViewHolder;->textStatus:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignRelatedAdapter;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    const v10, 0x7f0900e2

    invoke-virtual {v9, v10}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignRelatedAdapter;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    const v10, 0x7f0900e3

    invoke-virtual {v9, v10}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_30

    .line 1950
    .end local v2    # "RemainingDay":J
    :cond_120
    iget-object v7, p1, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignRelatedAdapter$CampaignViewHolder;->textStatus:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignRelatedAdapter;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    const v9, 0x7f0900e4

    invoke-virtual {v8, v9}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_30

    .line 1967
    .end local v0    # "RemainingDate":J
    :cond_130
    iget-object v7, p1, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignRelatedAdapter$CampaignViewHolder;->textRemaining:Landroid/widget/TextView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_79

    .line 1960
    .restart local v5    # "formatter":Ljava/text/DecimalFormat;
    .restart local v6    # "strCampaign_remain":Ljava/lang/String;
    :catch_139
    move-exception v7

    goto/16 :goto_6e
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .registers 4

    .prologue
    .line 1896
    invoke-virtual {p0, p1, p2}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignRelatedAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignRelatedAdapter$CampaignViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignRelatedAdapter$CampaignViewHolder;
    .registers 8
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 1918
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040022

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 1919
    .local v1, "v":Landroid/view/View;
    new-instance v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignRelatedAdapter$CampaignViewHolder;

    invoke-direct {v0, p0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignRelatedAdapter$CampaignViewHolder;-><init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignRelatedAdapter;Landroid/view/View;)V

    .line 1920
    .local v0, "pvh":Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignRelatedAdapter$CampaignViewHolder;
    return-object v0
.end method
