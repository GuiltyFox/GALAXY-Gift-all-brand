.class public Lcom/samsung/privilege/activity/RequestHelpActivity$ProcessActionLikeListener;
.super Lcom/samsung/privilege/util/http/HttpRQListener;
.source "RequestHelpActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/activity/RequestHelpActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ProcessActionLikeListener"
.end annotation


# instance fields
.field private gIsLike:Z

.field private gTagLike:Lcom/samsung/privilege/bean/TagLikeMarketReview;

.field final synthetic this$0:Lcom/samsung/privilege/activity/RequestHelpActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/privilege/activity/RequestHelpActivity;ZLcom/samsung/privilege/bean/TagLikeMarketReview;)V
    .registers 4
    .param p2, "isLike"    # Z
    .param p3, "tagLike"    # Lcom/samsung/privilege/bean/TagLikeMarketReview;

    .prologue
    .line 1178
    iput-object p1, p0, Lcom/samsung/privilege/activity/RequestHelpActivity$ProcessActionLikeListener;->this$0:Lcom/samsung/privilege/activity/RequestHelpActivity;

    invoke-direct {p0}, Lcom/samsung/privilege/util/http/HttpRQListener;-><init>()V

    .line 1179
    iput-boolean p2, p0, Lcom/samsung/privilege/activity/RequestHelpActivity$ProcessActionLikeListener;->gIsLike:Z

    .line 1180
    iput-object p3, p0, Lcom/samsung/privilege/activity/RequestHelpActivity$ProcessActionLikeListener;->gTagLike:Lcom/samsung/privilege/bean/TagLikeMarketReview;

    .line 1181
    return-void
.end method


# virtual methods
.method public onComplete(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 16
    .param p1, "response_code"    # I
    .param p2, "response_text"    # Ljava/lang/String;
    .param p3, "state"    # Ljava/lang/Object;

    .prologue
    const/16 v11, 0xc8

    .line 1185
    const-string v8, "RequestHelpActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "(ProcessActionLikeListener|onComplete)response={"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "}:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1186
    iget-object v8, p0, Lcom/samsung/privilege/activity/RequestHelpActivity$ProcessActionLikeListener;->this$0:Lcom/samsung/privilege/activity/RequestHelpActivity;

    invoke-virtual {v8}, Lcom/samsung/privilege/activity/RequestHelpActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/privilege/UserLogin;->IS_ADMIN(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_78

    .line 1187
    const-string v7, "<font color=green>"

    .line 1188
    .local v7, "str_font":Ljava/lang/String;
    if-eq p1, v11, :cond_32

    .line 1189
    const-string v7, "<font color=red>"

    .line 1191
    :cond_32
    iget-boolean v8, p0, Lcom/samsung/privilege/activity/RequestHelpActivity$ProcessActionLikeListener;->gIsLike:Z

    if-eqz v8, :cond_85

    .line 1192
    const-string v8, "POINTS"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "RS(LikeMarketReview,"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/privilege/activity/RequestHelpActivity$ProcessActionLikeListener;->gTagLike:Lcom/samsung/privilege/bean/TagLikeMarketReview;

    iget-object v10, v10, Lcom/samsung/privilege/bean/TagLikeMarketReview;->marketReview:Lcom/samsung/privilege/bean/MarketReview;

    iget-object v10, v10, Lcom/samsung/privilege/bean/MarketReview;->BuzzKey:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "</font><br>"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/privilege/activity/RequestHelpActivity$ProcessActionLikeListener;->this$0:Lcom/samsung/privilege/activity/RequestHelpActivity;

    invoke-virtual {v10}, Lcom/samsung/privilege/activity/RequestHelpActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/samsung/privilege/AppSetting;->LOG(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 1200
    .end local v7    # "str_font":Ljava/lang/String;
    :cond_78
    :goto_78
    if-ne p1, v11, :cond_12b

    .line 1201
    const/4 v4, 0x0

    .line 1202
    .local v4, "points":I
    const-string v8, "true"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c8

    .line 1203
    const/4 v4, 0x0

    .line 1265
    .end local v4    # "points":I
    :goto_84
    return-void

    .line 1194
    .restart local v7    # "str_font":Ljava/lang/String;
    :cond_85
    const-string v8, "POINTS"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "RS(UnLikeMarketReview,"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/privilege/activity/RequestHelpActivity$ProcessActionLikeListener;->gTagLike:Lcom/samsung/privilege/bean/TagLikeMarketReview;

    iget-object v10, v10, Lcom/samsung/privilege/bean/TagLikeMarketReview;->marketReview:Lcom/samsung/privilege/bean/MarketReview;

    iget-object v10, v10, Lcom/samsung/privilege/bean/MarketReview;->BuzzKey:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "</font><br>"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/privilege/activity/RequestHelpActivity$ProcessActionLikeListener;->this$0:Lcom/samsung/privilege/activity/RequestHelpActivity;

    invoke-virtual {v10}, Lcom/samsung/privilege/activity/RequestHelpActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/samsung/privilege/AppSetting;->LOG(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_78

    .line 1206
    .end local v7    # "str_font":Ljava/lang/String;
    .restart local v4    # "points":I
    :cond_c8
    :try_start_c8
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1207
    .local v1, "jsonRoot":Lorg/json/JSONObject;
    const-string v8, "result"

    invoke-static {v1, v8}, Lcom/samsung/privilege/util/JsonUtil;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;
    :try_end_d2
    .catch Lorg/json/JSONException; {:try_start_c8 .. :try_end_d2} :catch_110

    .line 1210
    :try_start_d2
    const-string v8, "buzzebees"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_d7
    .catch Ljava/lang/Exception; {:try_start_d2 .. :try_end_d7} :catch_17a
    .catch Lorg/json/JSONException; {:try_start_d2 .. :try_end_d7} :catch_110

    move-result-object v2

    .line 1213
    .local v2, "json_buzzebees":Lorg/json/JSONObject;
    :try_start_d8
    const-string v8, "points"

    invoke-static {v2, v8}, Lcom/samsung/privilege/util/JsonUtil;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v4

    .line 1214
    if-lez v4, :cond_f6

    .line 1215
    sget-object v8, Lcom/samsung/privilege/AppSetting;->QUEUE_POINTS:Ljava/util/Queue;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 1216
    const-string v6, "like"

    .line 1217
    .local v6, "strFrom":Ljava/lang/String;
    iget-object v8, p0, Lcom/samsung/privilege/activity/RequestHelpActivity$ProcessActionLikeListener;->this$0:Lcom/samsung/privilege/activity/RequestHelpActivity;

    # getter for: Lcom/samsung/privilege/activity/RequestHelpActivity;->gHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/samsung/privilege/activity/RequestHelpActivity;->access$7(Lcom/samsung/privilege/activity/RequestHelpActivity;)Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/privilege/activity/RequestHelpActivity$ProcessActionLikeListener;->this$0:Lcom/samsung/privilege/activity/RequestHelpActivity;

    invoke-static {v4, v6, v8, v9}, Lic/buzzebeeslib/util/AnimationPoint;->showToastPointsGift(ILjava/lang/String;Landroid/os/Handler;Landroid/app/Activity;)V
    :try_end_f6
    .catch Ljava/lang/Exception; {:try_start_d8 .. :try_end_f6} :catch_17d
    .catch Lorg/json/JSONException; {:try_start_d8 .. :try_end_f6} :catch_110

    .line 1226
    .end local v6    # "strFrom":Ljava/lang/String;
    :cond_f6
    :goto_f6
    :try_start_f6
    const-string v8, "new_user_rank"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 1227
    .local v3, "json_user_rank":Lorg/json/JSONObject;
    const-string v8, "rank"

    invoke-static {v3, v8}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1228
    .local v5, "rank":Ljava/lang/String;
    iget-object v8, p0, Lcom/samsung/privilege/activity/RequestHelpActivity$ProcessActionLikeListener;->this$0:Lcom/samsung/privilege/activity/RequestHelpActivity;

    invoke-virtual {v8}, Lcom/samsung/privilege/activity/RequestHelpActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v5}, Lcom/samsung/privilege/UserLogin;->SetRank(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_10b
    .catch Ljava/lang/Exception; {:try_start_f6 .. :try_end_10b} :catch_10d
    .catch Lorg/json/JSONException; {:try_start_f6 .. :try_end_10b} :catch_110

    goto/16 :goto_84

    .line 1229
    .end local v3    # "json_user_rank":Lorg/json/JSONObject;
    .end local v5    # "rank":Ljava/lang/String;
    :catch_10d
    move-exception v8

    goto/16 :goto_84

    .line 1237
    .end local v1    # "jsonRoot":Lorg/json/JSONObject;
    .end local v2    # "json_buzzebees":Lorg/json/JSONObject;
    :catch_110
    move-exception v0

    .line 1238
    .local v0, "e":Lorg/json/JSONException;
    const-string v8, "buzzebees.wall4"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "(JSONException|ProcessActionLikeListener|onComplete):"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_84

    .line 1242
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v4    # "points":I
    :cond_12b
    iget-boolean v8, p0, Lcom/samsung/privilege/activity/RequestHelpActivity$ProcessActionLikeListener;->gIsLike:Z

    if-eqz v8, :cond_16a

    .line 1245
    const-string v8, "OAuthException"

    invoke-virtual {p2, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-lez v8, :cond_147

    .line 1246
    iget-object v8, p0, Lcom/samsung/privilege/activity/RequestHelpActivity$ProcessActionLikeListener;->this$0:Lcom/samsung/privilege/activity/RequestHelpActivity;

    const-string v9, "You don\'t have permission to like this post!"

    invoke-virtual {v8, v9}, Lcom/samsung/privilege/activity/RequestHelpActivity;->showToast(Ljava/lang/String;)V

    .line 1247
    iget-object v8, p0, Lcom/samsung/privilege/activity/RequestHelpActivity$ProcessActionLikeListener;->this$0:Lcom/samsung/privilege/activity/RequestHelpActivity;

    iget-object v9, p0, Lcom/samsung/privilege/activity/RequestHelpActivity$ProcessActionLikeListener;->gTagLike:Lcom/samsung/privilege/bean/TagLikeMarketReview;

    # invokes: Lcom/samsung/privilege/activity/RequestHelpActivity;->processLikeAction(Lcom/samsung/privilege/bean/TagLikeMarketReview;)V
    invoke-static {v8, v9}, Lcom/samsung/privilege/activity/RequestHelpActivity;->access$8(Lcom/samsung/privilege/activity/RequestHelpActivity;Lcom/samsung/privilege/bean/TagLikeMarketReview;)V

    goto/16 :goto_84

    .line 1249
    :cond_147
    iget-object v8, p0, Lcom/samsung/privilege/activity/RequestHelpActivity$ProcessActionLikeListener;->gTagLike:Lcom/samsung/privilege/bean/TagLikeMarketReview;

    iget v8, v8, Lcom/samsung/privilege/bean/TagLikeMarketReview;->retry_count:I

    const/4 v9, 0x3

    if-le v8, v9, :cond_157

    .line 1250
    iget-object v8, p0, Lcom/samsung/privilege/activity/RequestHelpActivity$ProcessActionLikeListener;->this$0:Lcom/samsung/privilege/activity/RequestHelpActivity;

    const-string v9, "Review Like Error!"

    invoke-virtual {v8, v9}, Lcom/samsung/privilege/activity/RequestHelpActivity;->showToast(Ljava/lang/String;)V

    goto/16 :goto_84

    .line 1252
    :cond_157
    iget-object v8, p0, Lcom/samsung/privilege/activity/RequestHelpActivity$ProcessActionLikeListener;->gTagLike:Lcom/samsung/privilege/bean/TagLikeMarketReview;

    iget v9, v8, Lcom/samsung/privilege/bean/TagLikeMarketReview;->retry_count:I

    add-int/lit8 v9, v9, 0x1

    iput v9, v8, Lcom/samsung/privilege/bean/TagLikeMarketReview;->retry_count:I

    .line 1253
    iget-object v8, p0, Lcom/samsung/privilege/activity/RequestHelpActivity$ProcessActionLikeListener;->this$0:Lcom/samsung/privilege/activity/RequestHelpActivity;

    iget-boolean v9, p0, Lcom/samsung/privilege/activity/RequestHelpActivity$ProcessActionLikeListener;->gIsLike:Z

    iget-object v10, p0, Lcom/samsung/privilege/activity/RequestHelpActivity$ProcessActionLikeListener;->gTagLike:Lcom/samsung/privilege/bean/TagLikeMarketReview;

    invoke-virtual {v8, v9, v10}, Lcom/samsung/privilege/activity/RequestHelpActivity;->doLike(ZLcom/samsung/privilege/bean/TagLikeMarketReview;)V

    goto/16 :goto_84

    .line 1258
    :cond_16a
    iget-object v8, p0, Lcom/samsung/privilege/activity/RequestHelpActivity$ProcessActionLikeListener;->this$0:Lcom/samsung/privilege/activity/RequestHelpActivity;

    const-string v9, "Review UnLike Error!"

    invoke-virtual {v8, v9}, Lcom/samsung/privilege/activity/RequestHelpActivity;->showToast(Ljava/lang/String;)V

    .line 1259
    iget-object v8, p0, Lcom/samsung/privilege/activity/RequestHelpActivity$ProcessActionLikeListener;->this$0:Lcom/samsung/privilege/activity/RequestHelpActivity;

    iget-object v9, p0, Lcom/samsung/privilege/activity/RequestHelpActivity$ProcessActionLikeListener;->gTagLike:Lcom/samsung/privilege/bean/TagLikeMarketReview;

    # invokes: Lcom/samsung/privilege/activity/RequestHelpActivity;->processLikeAction(Lcom/samsung/privilege/bean/TagLikeMarketReview;)V
    invoke-static {v8, v9}, Lcom/samsung/privilege/activity/RequestHelpActivity;->access$8(Lcom/samsung/privilege/activity/RequestHelpActivity;Lcom/samsung/privilege/bean/TagLikeMarketReview;)V

    goto/16 :goto_84

    .line 1234
    .restart local v1    # "jsonRoot":Lorg/json/JSONObject;
    .restart local v4    # "points":I
    :catch_17a
    move-exception v8

    goto/16 :goto_84

    .line 1220
    .restart local v2    # "json_buzzebees":Lorg/json/JSONObject;
    :catch_17d
    move-exception v8

    goto/16 :goto_f6
.end method
