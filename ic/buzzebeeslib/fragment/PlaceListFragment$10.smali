.class Lic/buzzebeeslib/fragment/PlaceListFragment$10;
.super Ljava/lang/Object;
.source "PlaceListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/fragment/PlaceListFragment;->fetchPlaces(ZDD)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;

.field private final synthetic val$lat:D

.field private final synthetic val$lon:D

.field private final synthetic val$pLoadMore:Z


# direct methods
.method constructor <init>(Lic/buzzebeeslib/fragment/PlaceListFragment;DDZ)V
    .registers 7

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$10;->this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;

    iput-wide p2, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$10;->val$lat:D

    iput-wide p4, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$10;->val$lon:D

    iput-boolean p6, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$10;->val$pLoadMore:Z

    .line 752
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 755
    const-string v2, ""

    .line 756
    .local v2, "url":Ljava/lang/String;
    const/4 v1, 0x1

    .line 758
    .local v1, "isAll":Z
    iget-object v3, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$10;->this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;

    # getter for: Lic/buzzebeeslib/fragment/PlaceListFragment;->gParamPAGE_MODE:I
    invoke-static {v3}, Lic/buzzebeeslib/fragment/PlaceListFragment;->access$34(Lic/buzzebeeslib/fragment/PlaceListFragment;)I

    move-result v3

    const/16 v4, 0x50

    if-ne v3, v4, :cond_11e

    .line 759
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lic/buzzebeeslib/LibConst;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "api/place?campaignId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$10;->this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;

    # getter for: Lic/buzzebeeslib/fragment/PlaceListFragment;->gParamCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v4}, Lic/buzzebeeslib/fragment/PlaceListFragment;->access$35(Lic/buzzebeeslib/fragment/PlaceListFragment;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v4

    iget-object v4, v4, Lic/buzzebeeslib/bean/Campaign;->ID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&center="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$10;->val$lat:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$10;->val$lon:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&within_area=false&token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$10;->this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;

    invoke-virtual {v4}, Lic/buzzebeeslib/fragment/PlaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lic/buzzebeeslib/LibUserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&access_token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$10;->this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;

    invoke-virtual {v4}, Lic/buzzebeeslib/fragment/PlaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lic/buzzebeeslib/LibUserLogin;->GetTokenFacebook(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 774
    :cond_76
    :goto_76
    iget-object v3, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$10;->this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;

    # getter for: Lic/buzzebeeslib/fragment/PlaceListFragment;->gTextSearch:Ljava/lang/String;
    invoke-static {v3}, Lic/buzzebeeslib/fragment/PlaceListFragment;->access$37(Lic/buzzebeeslib/fragment/PlaceListFragment;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a6

    .line 775
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "&q="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$10;->this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;

    # getter for: Lic/buzzebeeslib/fragment/PlaceListFragment;->gTextSearch:Ljava/lang/String;
    invoke-static {v4}, Lic/buzzebeeslib/fragment/PlaceListFragment;->access$37(Lic/buzzebeeslib/fragment/PlaceListFragment;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 776
    const/4 v1, 0x0

    .line 779
    :cond_a6
    iget-boolean v3, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$10;->val$pLoadMore:Z

    if-eqz v3, :cond_1ed

    iget-object v3, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$10;->this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;

    # getter for: Lic/buzzebeeslib/fragment/PlaceListFragment;->gArrayPlace:Ljava/util/ArrayList;
    invoke-static {v3}, Lic/buzzebeeslib/fragment/PlaceListFragment;->access$21(Lic/buzzebeeslib/fragment/PlaceListFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_1ed

    .line 780
    iget-object v3, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$10;->this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;

    iget-boolean v4, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$10;->val$pLoadMore:Z

    invoke-static {v3, v4}, Lic/buzzebeeslib/fragment/PlaceListFragment;->access$38(Lic/buzzebeeslib/fragment/PlaceListFragment;Z)V

    .line 781
    iget-object v4, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$10;->this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;

    iget-object v3, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$10;->this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;

    # getter for: Lic/buzzebeeslib/fragment/PlaceListFragment;->gArrayPlace:Ljava/util/ArrayList;
    invoke-static {v3}, Lic/buzzebeeslib/fragment/PlaceListFragment;->access$21(Lic/buzzebeeslib/fragment/PlaceListFragment;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v5, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$10;->this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;

    # getter for: Lic/buzzebeeslib/fragment/PlaceListFragment;->gArrayPlace:Ljava/util/ArrayList;
    invoke-static {v5}, Lic/buzzebeeslib/fragment/PlaceListFragment;->access$21(Lic/buzzebeeslib/fragment/PlaceListFragment;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lic/buzzebeeslib/bean/Place;

    iget v3, v3, Lic/buzzebeeslib/bean/Place;->rank:I

    int-to-long v6, v3

    invoke-static {v4, v6, v7}, Lic/buzzebeeslib/fragment/PlaceListFragment;->access$39(Lic/buzzebeeslib/fragment/PlaceListFragment;J)V

    .line 782
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "&lastRank="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$10;->this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;

    # getter for: Lic/buzzebeeslib/fragment/PlaceListFragment;->gLastRank:J
    invoke-static {v4}, Lic/buzzebeeslib/fragment/PlaceListFragment;->access$40(Lic/buzzebeeslib/fragment/PlaceListFragment;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 783
    const/4 v1, 0x0

    .line 789
    :goto_fb
    const/4 v0, 0x0

    .line 790
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

    .line 791
    new-instance v3, Lic/buzzebeeslib/fragment/PlaceListFragment$placesRequestListener;

    iget-object v4, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$10;->this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;

    iget-boolean v5, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$10;->val$pLoadMore:Z

    invoke-direct {v3, v4, v5, v1, v0}, Lic/buzzebeeslib/fragment/PlaceListFragment$placesRequestListener;-><init>(Lic/buzzebeeslib/fragment/PlaceListFragment;ZZLjava/lang/String;)V

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lic/buzzebeeslib/util/http/HttpCall;->RQ_GET(Ljava/lang/String;Lic/buzzebeeslib/util/http/RQListener;Ljava/lang/Object;)V

    .line 792
    return-void

    .line 761
    .end local v0    # "cache_name":Ljava/lang/String;
    :cond_11e
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lic/buzzebeeslib/LibConst;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "api/place?center="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$10;->val$lat:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$10;->val$lon:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$10;->this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;

    invoke-virtual {v4}, Lic/buzzebeeslib/fragment/PlaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lic/buzzebeeslib/LibUserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&access_token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$10;->this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;

    invoke-virtual {v4}, Lic/buzzebeeslib/fragment/PlaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lic/buzzebeeslib/LibUserLogin;->GetTokenFacebook(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 763
    iget-object v3, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$10;->this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;

    # getter for: Lic/buzzebeeslib/fragment/PlaceListFragment;->gTabState:I
    invoke-static {v3}, Lic/buzzebeeslib/fragment/PlaceListFragment;->access$36(Lic/buzzebeeslib/fragment/PlaceListFragment;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_193

    .line 764
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "&mode=nearby"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 765
    goto/16 :goto_76

    :cond_193
    iget-object v3, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$10;->this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;

    # getter for: Lic/buzzebeeslib/fragment/PlaceListFragment;->gTabState:I
    invoke-static {v3}, Lic/buzzebeeslib/fragment/PlaceListFragment;->access$36(Lic/buzzebeeslib/fragment/PlaceListFragment;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1b1

    .line 766
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "&mode=place"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 767
    goto/16 :goto_76

    :cond_1b1
    iget-object v3, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$10;->this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;

    # getter for: Lic/buzzebeeslib/fragment/PlaceListFragment;->gTabState:I
    invoke-static {v3}, Lic/buzzebeeslib/fragment/PlaceListFragment;->access$36(Lic/buzzebeeslib/fragment/PlaceListFragment;)I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1cf

    .line 768
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "&mode=deal"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 769
    goto/16 :goto_76

    :cond_1cf
    iget-object v3, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$10;->this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;

    # getter for: Lic/buzzebeeslib/fragment/PlaceListFragment;->gTabState:I
    invoke-static {v3}, Lic/buzzebeeslib/fragment/PlaceListFragment;->access$36(Lic/buzzebeeslib/fragment/PlaceListFragment;)I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_76

    .line 770
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "&mode=review"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_76

    .line 785
    :cond_1ed
    iget-object v3, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$10;->this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;

    iget-boolean v4, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$10;->val$pLoadMore:Z

    invoke-static {v3, v4}, Lic/buzzebeeslib/fragment/PlaceListFragment;->access$38(Lic/buzzebeeslib/fragment/PlaceListFragment;Z)V

    .line 786
    iget-object v3, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$10;->this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v3, v4}, Lic/buzzebeeslib/fragment/PlaceListFragment;->access$41(Lic/buzzebeeslib/fragment/PlaceListFragment;Ljava/util/ArrayList;)V

    goto/16 :goto_fb
.end method
