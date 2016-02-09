.class Lic/buzzebeeslib/activity/Place2Activity$12;
.super Ljava/lang/Object;
.source "Place2Activity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/Place2Activity;->fetchPlaces(ZDD)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/activity/Place2Activity;

.field private final synthetic val$lat:D

.field private final synthetic val$lon:D

.field private final synthetic val$pLoadMore:Z


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/Place2Activity;DDZ)V
    .registers 7

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/Place2Activity$12;->this$0:Lic/buzzebeeslib/activity/Place2Activity;

    iput-wide p2, p0, Lic/buzzebeeslib/activity/Place2Activity$12;->val$lat:D

    iput-wide p4, p0, Lic/buzzebeeslib/activity/Place2Activity$12;->val$lon:D

    iput-boolean p6, p0, Lic/buzzebeeslib/activity/Place2Activity$12;->val$pLoadMore:Z

    .line 753
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 756
    const-string v2, ""

    .line 757
    .local v2, "url":Ljava/lang/String;
    const/4 v1, 0x1

    .line 759
    .local v1, "isAll":Z
    iget-object v3, p0, Lic/buzzebeeslib/activity/Place2Activity$12;->this$0:Lic/buzzebeeslib/activity/Place2Activity;

    # getter for: Lic/buzzebeeslib/activity/Place2Activity;->gParamPAGE_MODE:I
    invoke-static {v3}, Lic/buzzebeeslib/activity/Place2Activity;->access$35(Lic/buzzebeeslib/activity/Place2Activity;)I

    move-result v3

    const/16 v4, 0x50

    if-ne v3, v4, :cond_116

    .line 760
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lic/buzzebeeslib/LibConst;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "api/place?campaignId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lic/buzzebeeslib/activity/Place2Activity$12;->this$0:Lic/buzzebeeslib/activity/Place2Activity;

    # getter for: Lic/buzzebeeslib/activity/Place2Activity;->gParamCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v4}, Lic/buzzebeeslib/activity/Place2Activity;->access$36(Lic/buzzebeeslib/activity/Place2Activity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v4

    iget-object v4, v4, Lic/buzzebeeslib/bean/Campaign;->ID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&center="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lic/buzzebeeslib/activity/Place2Activity$12;->val$lat:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lic/buzzebeeslib/activity/Place2Activity$12;->val$lon:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&within_area=false&token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lic/buzzebeeslib/activity/Place2Activity$12;->this$0:Lic/buzzebeeslib/activity/Place2Activity;

    invoke-virtual {v4}, Lic/buzzebeeslib/activity/Place2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lic/buzzebeeslib/LibUserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&access_token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lic/buzzebeeslib/activity/Place2Activity$12;->this$0:Lic/buzzebeeslib/activity/Place2Activity;

    invoke-virtual {v4}, Lic/buzzebeeslib/activity/Place2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lic/buzzebeeslib/LibUserLogin;->GetTokenFacebook(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 775
    :cond_6e
    :goto_6e
    iget-object v3, p0, Lic/buzzebeeslib/activity/Place2Activity$12;->this$0:Lic/buzzebeeslib/activity/Place2Activity;

    # getter for: Lic/buzzebeeslib/activity/Place2Activity;->gTextSearch:Ljava/lang/String;
    invoke-static {v3}, Lic/buzzebeeslib/activity/Place2Activity;->access$38(Lic/buzzebeeslib/activity/Place2Activity;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9e

    .line 776
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "&q="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lic/buzzebeeslib/activity/Place2Activity$12;->this$0:Lic/buzzebeeslib/activity/Place2Activity;

    # getter for: Lic/buzzebeeslib/activity/Place2Activity;->gTextSearch:Ljava/lang/String;
    invoke-static {v4}, Lic/buzzebeeslib/activity/Place2Activity;->access$38(Lic/buzzebeeslib/activity/Place2Activity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 777
    const/4 v1, 0x0

    .line 780
    :cond_9e
    iget-boolean v3, p0, Lic/buzzebeeslib/activity/Place2Activity$12;->val$pLoadMore:Z

    if-eqz v3, :cond_1dd

    iget-object v3, p0, Lic/buzzebeeslib/activity/Place2Activity$12;->this$0:Lic/buzzebeeslib/activity/Place2Activity;

    # getter for: Lic/buzzebeeslib/activity/Place2Activity;->gArrayPlace:Ljava/util/ArrayList;
    invoke-static {v3}, Lic/buzzebeeslib/activity/Place2Activity;->access$21(Lic/buzzebeeslib/activity/Place2Activity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_1dd

    .line 781
    iget-object v3, p0, Lic/buzzebeeslib/activity/Place2Activity$12;->this$0:Lic/buzzebeeslib/activity/Place2Activity;

    iget-boolean v4, p0, Lic/buzzebeeslib/activity/Place2Activity$12;->val$pLoadMore:Z

    invoke-static {v3, v4}, Lic/buzzebeeslib/activity/Place2Activity;->access$39(Lic/buzzebeeslib/activity/Place2Activity;Z)V

    .line 782
    iget-object v4, p0, Lic/buzzebeeslib/activity/Place2Activity$12;->this$0:Lic/buzzebeeslib/activity/Place2Activity;

    iget-object v3, p0, Lic/buzzebeeslib/activity/Place2Activity$12;->this$0:Lic/buzzebeeslib/activity/Place2Activity;

    # getter for: Lic/buzzebeeslib/activity/Place2Activity;->gArrayPlace:Ljava/util/ArrayList;
    invoke-static {v3}, Lic/buzzebeeslib/activity/Place2Activity;->access$21(Lic/buzzebeeslib/activity/Place2Activity;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v5, p0, Lic/buzzebeeslib/activity/Place2Activity$12;->this$0:Lic/buzzebeeslib/activity/Place2Activity;

    # getter for: Lic/buzzebeeslib/activity/Place2Activity;->gArrayPlace:Ljava/util/ArrayList;
    invoke-static {v5}, Lic/buzzebeeslib/activity/Place2Activity;->access$21(Lic/buzzebeeslib/activity/Place2Activity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lic/buzzebeeslib/bean/Place;

    iget v3, v3, Lic/buzzebeeslib/bean/Place;->rank:I

    int-to-long v5, v3

    invoke-static {v4, v5, v6}, Lic/buzzebeeslib/activity/Place2Activity;->access$40(Lic/buzzebeeslib/activity/Place2Activity;J)V

    .line 783
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "&lastRank="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lic/buzzebeeslib/activity/Place2Activity$12;->this$0:Lic/buzzebeeslib/activity/Place2Activity;

    # getter for: Lic/buzzebeeslib/activity/Place2Activity;->gLastRank:J
    invoke-static {v4}, Lic/buzzebeeslib/activity/Place2Activity;->access$41(Lic/buzzebeeslib/activity/Place2Activity;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 784
    const/4 v1, 0x0

    .line 790
    :goto_f3
    const/4 v0, 0x0

    .line 791
    .local v0, "cache_name":Ljava/lang/String;
    const-string v3, "buzzebees.placeslist.fragment"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "url="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    new-instance v3, Lic/buzzebeeslib/activity/Place2Activity$placesRequestListener;

    iget-object v4, p0, Lic/buzzebeeslib/activity/Place2Activity$12;->this$0:Lic/buzzebeeslib/activity/Place2Activity;

    iget-boolean v5, p0, Lic/buzzebeeslib/activity/Place2Activity$12;->val$pLoadMore:Z

    invoke-direct {v3, v4, v5, v1, v0}, Lic/buzzebeeslib/activity/Place2Activity$placesRequestListener;-><init>(Lic/buzzebeeslib/activity/Place2Activity;ZZLjava/lang/String;)V

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lic/buzzebeeslib/util/http/HttpCall;->RQ_GET(Ljava/lang/String;Lic/buzzebeeslib/util/http/RQListener;Ljava/lang/Object;)V

    .line 793
    return-void

    .line 762
    .end local v0    # "cache_name":Ljava/lang/String;
    :cond_116
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lic/buzzebeeslib/LibConst;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "api/place?center="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lic/buzzebeeslib/activity/Place2Activity$12;->val$lat:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lic/buzzebeeslib/activity/Place2Activity$12;->val$lon:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lic/buzzebeeslib/activity/Place2Activity$12;->this$0:Lic/buzzebeeslib/activity/Place2Activity;

    invoke-virtual {v4}, Lic/buzzebeeslib/activity/Place2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lic/buzzebeeslib/LibUserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&access_token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lic/buzzebeeslib/activity/Place2Activity$12;->this$0:Lic/buzzebeeslib/activity/Place2Activity;

    invoke-virtual {v4}, Lic/buzzebeeslib/activity/Place2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lic/buzzebeeslib/LibUserLogin;->GetTokenFacebook(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 764
    iget-object v3, p0, Lic/buzzebeeslib/activity/Place2Activity$12;->this$0:Lic/buzzebeeslib/activity/Place2Activity;

    # getter for: Lic/buzzebeeslib/activity/Place2Activity;->gTabState:I
    invoke-static {v3}, Lic/buzzebeeslib/activity/Place2Activity;->access$37(Lic/buzzebeeslib/activity/Place2Activity;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_183

    .line 765
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "&mode=nearby"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 766
    goto/16 :goto_6e

    :cond_183
    iget-object v3, p0, Lic/buzzebeeslib/activity/Place2Activity$12;->this$0:Lic/buzzebeeslib/activity/Place2Activity;

    # getter for: Lic/buzzebeeslib/activity/Place2Activity;->gTabState:I
    invoke-static {v3}, Lic/buzzebeeslib/activity/Place2Activity;->access$37(Lic/buzzebeeslib/activity/Place2Activity;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1a1

    .line 767
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "&mode=place"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 768
    goto/16 :goto_6e

    :cond_1a1
    iget-object v3, p0, Lic/buzzebeeslib/activity/Place2Activity$12;->this$0:Lic/buzzebeeslib/activity/Place2Activity;

    # getter for: Lic/buzzebeeslib/activity/Place2Activity;->gTabState:I
    invoke-static {v3}, Lic/buzzebeeslib/activity/Place2Activity;->access$37(Lic/buzzebeeslib/activity/Place2Activity;)I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1bf

    .line 769
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "&mode=deal"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 770
    goto/16 :goto_6e

    :cond_1bf
    iget-object v3, p0, Lic/buzzebeeslib/activity/Place2Activity$12;->this$0:Lic/buzzebeeslib/activity/Place2Activity;

    # getter for: Lic/buzzebeeslib/activity/Place2Activity;->gTabState:I
    invoke-static {v3}, Lic/buzzebeeslib/activity/Place2Activity;->access$37(Lic/buzzebeeslib/activity/Place2Activity;)I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_6e

    .line 771
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "&mode=review"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_6e

    .line 786
    :cond_1dd
    iget-object v3, p0, Lic/buzzebeeslib/activity/Place2Activity$12;->this$0:Lic/buzzebeeslib/activity/Place2Activity;

    iget-boolean v4, p0, Lic/buzzebeeslib/activity/Place2Activity$12;->val$pLoadMore:Z

    invoke-static {v3, v4}, Lic/buzzebeeslib/activity/Place2Activity;->access$39(Lic/buzzebeeslib/activity/Place2Activity;Z)V

    .line 787
    iget-object v3, p0, Lic/buzzebeeslib/activity/Place2Activity$12;->this$0:Lic/buzzebeeslib/activity/Place2Activity;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v3, v4}, Lic/buzzebeeslib/activity/Place2Activity;->access$42(Lic/buzzebeeslib/activity/Place2Activity;Ljava/util/ArrayList;)V

    goto/16 :goto_f3
.end method
