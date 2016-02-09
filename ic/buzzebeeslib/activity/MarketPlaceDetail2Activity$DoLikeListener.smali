.class public Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$DoLikeListener;
.super Lic/buzzebeeslib/util/http/HttpRQListener;
.source "MarketPlaceDetail2Activity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DoLikeListener"
.end annotation


# instance fields
.field private gIsLike:Z

.field final synthetic this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;


# direct methods
.method public constructor <init>(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;Z)V
    .registers 4
    .param p2, "pIsLike"    # Z

    .prologue
    .line 2703
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$DoLikeListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    invoke-direct {p0}, Lic/buzzebeeslib/util/http/HttpRQListener;-><init>()V

    .line 2701
    const/4 v0, 0x0

    iput-boolean v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$DoLikeListener;->gIsLike:Z

    .line 2704
    iput-boolean p2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$DoLikeListener;->gIsLike:Z

    .line 2705
    return-void
.end method


# virtual methods
.method public onComplete(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 14
    .param p1, "response_code"    # I
    .param p2, "response_text"    # Ljava/lang/String;
    .param p3, "state"    # Ljava/lang/Object;

    .prologue
    .line 2712
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$DoLikeListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->TAG:Ljava/lang/String;
    invoke-static {v7}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$1(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "(gIsLike="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v9, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$DoLikeListener;->gIsLike:Z

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

    .line 2714
    const-string v8, "onComplete"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v7, " !isFinishing() "

    invoke-direct {v9, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$DoLikeListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    invoke-virtual {v7}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->isFinishing()Z

    move-result v7

    if-eqz v7, :cond_9e

    const/4 v7, 0x0

    :goto_40
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 2715
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$DoLikeListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    invoke-virtual {v7}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->isFinishing()Z

    move-result v7

    if-nez v7, :cond_9d

    .line 2733
    const/16 v7, 0xc8

    if-ne p1, v7, :cond_bf

    .line 2735
    :try_start_57
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2736
    .local v2, "jsonRoot":Lorg/json/JSONObject;
    const-string v7, "Like"

    invoke-static {v2, v7}, Lic/buzzebeeslib/util/JsonUtil;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_61} :catch_b1

    .line 2737
    const/4 v5, 0x0

    .line 2742
    .local v5, "points":I
    :try_start_62
    const-string v7, "buzzebees"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_67} :catch_cc

    move-result-object v4

    .line 2745
    .local v4, "json_buzzebees":Lorg/json/JSONObject;
    :try_start_68
    const-string v7, "points"

    invoke-static {v4, v7}, Lic/buzzebeeslib/util/JsonUtil;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v5

    .line 2746
    if-lez v5, :cond_86

    .line 2747
    sget-object v7, Lic/buzzebeeslib/LibData;->QUEUE_POINTS:Ljava/util/Queue;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2749
    const-string v6, "Like"

    .line 2750
    .local v6, "strFrom":Ljava/lang/String;
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$DoLikeListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$14(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Landroid/os/Handler;

    move-result-object v7

    iget-object v8, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$DoLikeListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    invoke-static {v5, v6, v7, v8}, Lic/buzzebeeslib/util/AnimationPoint;->showToastPointsGift(ILjava/lang/String;Landroid/os/Handler;Landroid/app/Activity;)V
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_86} :catch_d0

    .line 2758
    .end local v6    # "strFrom":Ljava/lang/String;
    :cond_86
    :goto_86
    :try_start_86
    const-string v7, "badges"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 2759
    .local v3, "json_badges":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8d
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_90} :catch_ce

    move-result v7

    if-lt v1, v7, :cond_a0

    .line 2782
    .end local v1    # "i":I
    .end local v3    # "json_badges":Lorg/json/JSONArray;
    :goto_93
    :try_start_93
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$DoLikeListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    # invokes: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->playPointsAndBadge()V
    invoke-static {v7}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$17(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)V
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_93 .. :try_end_98} :catch_cc

    .line 2789
    .end local v4    # "json_buzzebees":Lorg/json/JSONObject;
    :goto_98
    :try_start_98
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$DoLikeListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    # invokes: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->processLikeAction()V
    invoke-static {v7}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$18(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)V
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_9d} :catch_b1

    .line 2802
    .end local v2    # "jsonRoot":Lorg/json/JSONObject;
    .end local v5    # "points":I
    :cond_9d
    :goto_9d
    return-void

    .line 2714
    :cond_9e
    const/4 v7, 0x1

    goto :goto_40

    .line 2760
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

    .line 2759
    add-int/lit8 v1, v1, 0x1

    goto :goto_8d

    .line 2791
    .end local v1    # "i":I
    .end local v2    # "jsonRoot":Lorg/json/JSONObject;
    .end local v3    # "json_badges":Lorg/json/JSONArray;
    .end local v4    # "json_buzzebees":Lorg/json/JSONObject;
    .end local v5    # "points":I
    :catch_b1
    move-exception v0

    .line 2792
    .local v0, "e":Ljava/lang/Exception;
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$DoLikeListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    const-string v8, "Like campaign error!"

    # invokes: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->showToast(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$8(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;Ljava/lang/String;)V

    .line 2793
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$DoLikeListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    # invokes: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->processLikeAction()V
    invoke-static {v7}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$18(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)V

    goto :goto_9d

    .line 2796
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_bf
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$DoLikeListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    const-string v8, "Like campaign error!"

    # invokes: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->showToast(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$8(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;Ljava/lang/String;)V

    .line 2797
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$DoLikeListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    # invokes: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->processLikeAction()V
    invoke-static {v7}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$18(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)V

    goto :goto_9d

    .line 2783
    .restart local v2    # "jsonRoot":Lorg/json/JSONObject;
    .restart local v5    # "points":I
    :catch_cc
    move-exception v7

    goto :goto_98

    .line 2764
    .restart local v4    # "json_buzzebees":Lorg/json/JSONObject;
    :catch_ce
    move-exception v7

    goto :goto_93

    .line 2752
    :catch_d0
    move-exception v7

    goto :goto_86
.end method
