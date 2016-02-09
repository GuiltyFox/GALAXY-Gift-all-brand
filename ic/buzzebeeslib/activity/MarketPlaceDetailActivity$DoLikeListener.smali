.class public Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$DoLikeListener;
.super Lic/buzzebeeslib/util/http/HttpRQListener;
.source "MarketPlaceDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DoLikeListener"
.end annotation


# instance fields
.field private gIsLike:Z

.field final synthetic this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;


# direct methods
.method public constructor <init>(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;Z)V
    .registers 4
    .param p2, "pIsLike"    # Z

    .prologue
    .line 3832
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$DoLikeListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    invoke-direct {p0}, Lic/buzzebeeslib/util/http/HttpRQListener;-><init>()V

    .line 3830
    const/4 v0, 0x0

    iput-boolean v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$DoLikeListener;->gIsLike:Z

    .line 3833
    iput-boolean p2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$DoLikeListener;->gIsLike:Z

    .line 3834
    return-void
.end method


# virtual methods
.method public onComplete(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 14
    .param p1, "response_code"    # I
    .param p2, "response_text"    # Ljava/lang/String;
    .param p3, "state"    # Ljava/lang/Object;

    .prologue
    .line 3841
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$DoLikeListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->TAG:Ljava/lang/String;
    invoke-static {v7}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "(gIsLike="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v9, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$DoLikeListener;->gIsLike:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")response_code="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",response_text="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 3843
    const-string v8, "onComplete"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v7, " !isFinishing() "

    invoke-direct {v9, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$DoLikeListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    invoke-virtual {v7}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->isFinishing()Z

    move-result v7

    if-eqz v7, :cond_9e

    const/4 v7, 0x0

    :goto_40
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 3844
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$DoLikeListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    invoke-virtual {v7}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->isFinishing()Z

    move-result v7

    if-nez v7, :cond_9d

    .line 3862
    const/16 v7, 0xc8

    if-ne p1, v7, :cond_bf

    .line 3864
    :try_start_57
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3865
    .local v2, "jsonRoot":Lorg/json/JSONObject;
    const-string v7, "Like"

    invoke-static {v2, v7}, Lic/buzzebeeslib/util/JsonUtil;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_61} :catch_b1

    .line 3866
    const/4 v5, 0x0

    .line 3871
    .local v5, "points":I
    :try_start_62
    const-string v7, "buzzebees"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_67} :catch_cc

    move-result-object v4

    .line 3874
    .local v4, "json_buzzebees":Lorg/json/JSONObject;
    :try_start_68
    const-string v7, "points"

    invoke-static {v4, v7}, Lic/buzzebeeslib/util/JsonUtil;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v5

    .line 3875
    if-lez v5, :cond_86

    .line 3876
    sget-object v7, Lic/buzzebeeslib/LibData;->QUEUE_POINTS:Ljava/util/Queue;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 3878
    const-string v6, "Like"

    .line 3879
    .local v6, "strFrom":Ljava/lang/String;
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$DoLikeListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$14(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Landroid/os/Handler;

    move-result-object v7

    iget-object v8, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$DoLikeListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    invoke-static {v5, v6, v7, v8}, Lic/buzzebeeslib/util/AnimationPoint;->showToastPointsGift(ILjava/lang/String;Landroid/os/Handler;Landroid/app/Activity;)V
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_86} :catch_d0

    .line 3887
    .end local v6    # "strFrom":Ljava/lang/String;
    :cond_86
    :goto_86
    :try_start_86
    const-string v7, "badges"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 3888
    .local v3, "json_badges":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8d
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_90} :catch_ce

    move-result v7

    if-lt v1, v7, :cond_a0

    .line 3910
    .end local v1    # "i":I
    .end local v3    # "json_badges":Lorg/json/JSONArray;
    :goto_93
    :try_start_93
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$DoLikeListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    # invokes: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->playPointsAndBadge()V
    invoke-static {v7}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$23(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)V
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_93 .. :try_end_98} :catch_cc

    .line 3917
    .end local v4    # "json_buzzebees":Lorg/json/JSONObject;
    :goto_98
    :try_start_98
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$DoLikeListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    # invokes: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->processLikeAction()V
    invoke-static {v7}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$24(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)V
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_9d} :catch_b1

    .line 3930
    .end local v2    # "jsonRoot":Lorg/json/JSONObject;
    .end local v5    # "points":I
    :cond_9d
    :goto_9d
    return-void

    .line 3843
    :cond_9e
    const/4 v7, 0x1

    goto :goto_40

    .line 3889
    .restart local v1    # "i":I
    .restart local v2    # "jsonRoot":Lorg/json/JSONObject;
    .restart local v3    # "json_badges":Lorg/json/JSONArray;
    .restart local v4    # "json_buzzebees":Lorg/json/JSONObject;
    .restart local v5    # "points":I
    :cond_a0
    :try_start_a0
    sget-object v7, Lic/buzzebeeslib/LibData;->QUEUE_BADGEALERTS:Ljava/util/Queue;

    new-instance v8, Lic/buzzebeeslib/bean/BadgeAlert;

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    invoke-direct {v8, v9}, Lic/buzzebeeslib/bean/BadgeAlert;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v7, v8}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_ae
    .catch Ljava/lang/Exception; {:try_start_a0 .. :try_end_ae} :catch_ce

    .line 3888
    add-int/lit8 v1, v1, 0x1

    goto :goto_8d

    .line 3919
    .end local v1    # "i":I
    .end local v2    # "jsonRoot":Lorg/json/JSONObject;
    .end local v3    # "json_badges":Lorg/json/JSONArray;
    .end local v4    # "json_buzzebees":Lorg/json/JSONObject;
    .end local v5    # "points":I
    :catch_b1
    move-exception v0

    .line 3920
    .local v0, "e":Ljava/lang/Exception;
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$DoLikeListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    const-string v8, "Like campaign error!"

    # invokes: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->showToast(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$8(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;Ljava/lang/String;)V

    .line 3921
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$DoLikeListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    # invokes: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->processLikeAction()V
    invoke-static {v7}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$24(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)V

    goto :goto_9d

    .line 3924
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_bf
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$DoLikeListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    const-string v8, "Like campaign error!"

    # invokes: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->showToast(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$8(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;Ljava/lang/String;)V

    .line 3925
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$DoLikeListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    # invokes: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->processLikeAction()V
    invoke-static {v7}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$24(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)V

    goto :goto_9d

    .line 3911
    .restart local v2    # "jsonRoot":Lorg/json/JSONObject;
    .restart local v5    # "points":I
    :catch_cc
    move-exception v7

    goto :goto_98

    .line 3893
    .restart local v4    # "json_buzzebees":Lorg/json/JSONObject;
    :catch_ce
    move-exception v7

    goto :goto_93

    .line 3881
    :catch_d0
    move-exception v7

    goto :goto_86
.end method
