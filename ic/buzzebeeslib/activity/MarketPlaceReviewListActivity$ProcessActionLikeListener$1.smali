.class Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener$1;
.super Ljava/lang/Object;
.source "MarketPlaceReviewListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;->onComplete(ILjava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;

.field private final synthetic val$response_code:I

.field private final synthetic val$response_text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;ILjava/lang/String;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;

    iput p2, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener$1;->val$response_code:I

    iput-object p3, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener$1;->val$response_text:Ljava/lang/String;

    .line 1286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 14

    .prologue
    const/16 v12, 0x8

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1289
    iget v7, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener$1;->val$response_code:I

    const/16 v8, 0xc8

    if-ne v7, v8, :cond_133

    .line 1291
    const/4 v5, 0x0

    .line 1292
    .local v5, "points":I
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener$1;->val$response_text:Ljava/lang/String;

    const-string v8, "true"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_88

    .line 1294
    const/4 v5, 0x0

    .line 1341
    :goto_16
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;->gIsLike:Z
    invoke-static {v7}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;->access$0(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;)Z

    move-result v7

    if-eqz v7, :cond_102

    .line 1342
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;->gTagLike:Lic/buzzebeeslib/bean/TagLikeCampaignReview;
    invoke-static {v7}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;->access$1(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;)Lic/buzzebeeslib/bean/TagLikeCampaignReview;

    move-result-object v7

    iget-object v7, v7, Lic/buzzebeeslib/bean/TagLikeCampaignReview;->campaignReview:Lic/buzzebeeslib/bean/CampaignReview;

    iget v8, v7, Lic/buzzebeeslib/bean/CampaignReview;->Likes:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Lic/buzzebeeslib/bean/CampaignReview;->Likes:I

    .line 1343
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;->gTagLike:Lic/buzzebeeslib/bean/TagLikeCampaignReview;
    invoke-static {v7}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;->access$1(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;)Lic/buzzebeeslib/bean/TagLikeCampaignReview;

    move-result-object v7

    iget-object v7, v7, Lic/buzzebeeslib/bean/TagLikeCampaignReview;->campaignReview:Lic/buzzebeeslib/bean/CampaignReview;

    iput-boolean v11, v7, Lic/buzzebeeslib/bean/CampaignReview;->IsLiked:Z

    .line 1346
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;->gTagLike:Lic/buzzebeeslib/bean/TagLikeCampaignReview;
    invoke-static {v7}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;->access$1(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;)Lic/buzzebeeslib/bean/TagLikeCampaignReview;

    move-result-object v7

    iget-object v7, v7, Lic/buzzebeeslib/bean/TagLikeCampaignReview;->imgLike:Landroid/widget/ImageView;

    sget v8, Lic/buzzebeeslib/R$drawable;->bz_icon_like_a:I

    iget-object v9, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;
    invoke-static {v9}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;->access$2(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;)Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;

    move-result-object v9

    invoke-virtual {v9}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lic/buzzebeeslib/util/BBUtil;->setImageResource(Landroid/widget/ImageView;ILandroid/content/Context;)V

    .line 1355
    :goto_4d
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;->gTagLike:Lic/buzzebeeslib/bean/TagLikeCampaignReview;
    invoke-static {v7}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;->access$1(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;)Lic/buzzebeeslib/bean/TagLikeCampaignReview;

    move-result-object v7

    iget-object v7, v7, Lic/buzzebeeslib/bean/TagLikeCampaignReview;->tvLike:Landroid/widget/TextView;

    iget-object v8, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;->gTagLike:Lic/buzzebeeslib/bean/TagLikeCampaignReview;
    invoke-static {v8}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;->access$1(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;)Lic/buzzebeeslib/bean/TagLikeCampaignReview;

    move-result-object v8

    iget-object v8, v8, Lic/buzzebeeslib/bean/TagLikeCampaignReview;->campaignReview:Lic/buzzebeeslib/bean/CampaignReview;

    iget v8, v8, Lic/buzzebeeslib/bean/CampaignReview;->Likes:I

    invoke-static {v8}, Lic/buzzebeeslib/util/BBUtil;->formatK(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1357
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;->gTagLike:Lic/buzzebeeslib/bean/TagLikeCampaignReview;
    invoke-static {v7}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;->access$1(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;)Lic/buzzebeeslib/bean/TagLikeCampaignReview;

    move-result-object v7

    iget-object v7, v7, Lic/buzzebeeslib/bean/TagLikeCampaignReview;->layoutLike:Landroid/widget/RelativeLayout;

    invoke-virtual {v7, v11}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 1358
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;->gTagLike:Lic/buzzebeeslib/bean/TagLikeCampaignReview;
    invoke-static {v7}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;->access$1(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;)Lic/buzzebeeslib/bean/TagLikeCampaignReview;

    move-result-object v7

    iget-object v7, v7, Lic/buzzebeeslib/bean/TagLikeCampaignReview;->pbImgLike:Landroid/widget/ProgressBar;

    invoke-virtual {v7, v12}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1359
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;->gTagLike:Lic/buzzebeeslib/bean/TagLikeCampaignReview;
    invoke-static {v7}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;->access$1(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;)Lic/buzzebeeslib/bean/TagLikeCampaignReview;

    move-result-object v7

    iget-object v7, v7, Lic/buzzebeeslib/bean/TagLikeCampaignReview;->imgLike:Landroid/widget/ImageView;

    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1383
    .end local v5    # "points":I
    :goto_87
    return-void

    .line 1297
    .restart local v5    # "points":I
    :cond_88
    :try_start_88
    new-instance v2, Lorg/json/JSONObject;

    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener$1;->val$response_text:Ljava/lang/String;

    invoke-direct {v2, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_8f
    .catch Lorg/json/JSONException; {:try_start_88 .. :try_end_8f} :catch_e7

    .line 1301
    .local v2, "jsonRoot":Lorg/json/JSONObject;
    :try_start_8f
    const-string v7, "buzzebees"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_94} :catch_d3
    .catch Lorg/json/JSONException; {:try_start_8f .. :try_end_94} :catch_e7

    move-result-object v4

    .line 1304
    .local v4, "json_buzzebees":Lorg/json/JSONObject;
    :try_start_95
    const-string v7, "points"

    invoke-static {v4, v7}, Lic/buzzebeeslib/util/JsonUtil;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v5

    .line 1305
    if-lez v5, :cond_bb

    .line 1306
    sget-object v7, Lic/buzzebeeslib/LibData;->QUEUE_POINTS:Ljava/util/Queue;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 1307
    const-string v6, "Like"

    .line 1308
    .local v6, "strFrom":Ljava/lang/String;
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;
    invoke-static {v7}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;->access$2(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;)Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;

    move-result-object v7

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->gHandler:Landroid/os/Handler;
    invoke-static {v7}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->access$14(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;)Landroid/os/Handler;

    move-result-object v7

    iget-object v8, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;
    invoke-static {v8}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;->access$2(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;)Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;

    move-result-object v8

    invoke-static {v5, v6, v7, v8}, Lic/buzzebeeslib/util/AnimationPoint;->showToastPointsGift(ILjava/lang/String;Landroid/os/Handler;Landroid/app/Activity;)V
    :try_end_bb
    .catch Ljava/lang/Exception; {:try_start_95 .. :try_end_bb} :catch_1e3
    .catch Lorg/json/JSONException; {:try_start_95 .. :try_end_bb} :catch_e7

    .line 1315
    .end local v6    # "strFrom":Ljava/lang/String;
    :cond_bb
    :goto_bb
    :try_start_bb
    const-string v7, "badges"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 1316
    .local v3, "json_badges":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c2
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I
    :try_end_c5
    .catch Ljava/lang/Exception; {:try_start_bb .. :try_end_c5} :catch_1e0
    .catch Lorg/json/JSONException; {:try_start_bb .. :try_end_c5} :catch_e7

    move-result v7

    if-lt v1, v7, :cond_d6

    .line 1332
    .end local v1    # "i":I
    .end local v3    # "json_badges":Lorg/json/JSONArray;
    :goto_c8
    :try_start_c8
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;
    invoke-static {v7}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;->access$2(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;)Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;

    move-result-object v7

    # invokes: Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->playPointsAndBadge()V
    invoke-static {v7}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->access$15(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;)V
    :try_end_d1
    .catch Ljava/lang/Exception; {:try_start_c8 .. :try_end_d1} :catch_d3
    .catch Lorg/json/JSONException; {:try_start_c8 .. :try_end_d1} :catch_e7

    goto/16 :goto_16

    .line 1333
    .end local v4    # "json_buzzebees":Lorg/json/JSONObject;
    :catch_d3
    move-exception v7

    goto/16 :goto_16

    .line 1317
    .restart local v1    # "i":I
    .restart local v3    # "json_badges":Lorg/json/JSONArray;
    .restart local v4    # "json_buzzebees":Lorg/json/JSONObject;
    :cond_d6
    :try_start_d6
    sget-object v7, Lic/buzzebeeslib/LibData;->QUEUE_BADGEALERTS:Ljava/util/Queue;

    new-instance v8, Lic/buzzebeeslib/bean/BadgeAlert;

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    invoke-direct {v8, v9}, Lic/buzzebeeslib/bean/BadgeAlert;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v7, v8}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_e4
    .catch Ljava/lang/Exception; {:try_start_d6 .. :try_end_e4} :catch_1e0
    .catch Lorg/json/JSONException; {:try_start_d6 .. :try_end_e4} :catch_e7

    .line 1316
    add-int/lit8 v1, v1, 0x1

    goto :goto_c2

    .line 1336
    .end local v1    # "i":I
    .end local v2    # "jsonRoot":Lorg/json/JSONObject;
    .end local v3    # "json_badges":Lorg/json/JSONArray;
    .end local v4    # "json_buzzebees":Lorg/json/JSONObject;
    :catch_e7
    move-exception v0

    .line 1337
    .local v0, "e":Lorg/json/JSONException;
    const-string v7, "buzzebees.wall4"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "(JSONException|ProcessActionLikeListener|onComplete):"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_16

    .line 1348
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_102
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;->gTagLike:Lic/buzzebeeslib/bean/TagLikeCampaignReview;
    invoke-static {v7}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;->access$1(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;)Lic/buzzebeeslib/bean/TagLikeCampaignReview;

    move-result-object v7

    iget-object v7, v7, Lic/buzzebeeslib/bean/TagLikeCampaignReview;->campaignReview:Lic/buzzebeeslib/bean/CampaignReview;

    iget v8, v7, Lic/buzzebeeslib/bean/CampaignReview;->Likes:I

    add-int/lit8 v8, v8, -0x1

    iput v8, v7, Lic/buzzebeeslib/bean/CampaignReview;->Likes:I

    .line 1349
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;->gTagLike:Lic/buzzebeeslib/bean/TagLikeCampaignReview;
    invoke-static {v7}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;->access$1(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;)Lic/buzzebeeslib/bean/TagLikeCampaignReview;

    move-result-object v7

    iget-object v7, v7, Lic/buzzebeeslib/bean/TagLikeCampaignReview;->campaignReview:Lic/buzzebeeslib/bean/CampaignReview;

    iput-boolean v10, v7, Lic/buzzebeeslib/bean/CampaignReview;->IsLiked:Z

    .line 1352
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;->gTagLike:Lic/buzzebeeslib/bean/TagLikeCampaignReview;
    invoke-static {v7}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;->access$1(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;)Lic/buzzebeeslib/bean/TagLikeCampaignReview;

    move-result-object v7

    iget-object v7, v7, Lic/buzzebeeslib/bean/TagLikeCampaignReview;->imgLike:Landroid/widget/ImageView;

    sget v8, Lic/buzzebeeslib/R$drawable;->bz_icon_like_b:I

    iget-object v9, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;
    invoke-static {v9}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;->access$2(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;)Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;

    move-result-object v9

    invoke-virtual {v9}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lic/buzzebeeslib/util/BBUtil;->setImageResource(Landroid/widget/ImageView;ILandroid/content/Context;)V

    goto/16 :goto_4d

    .line 1361
    .end local v5    # "points":I
    :cond_133
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;->gIsLike:Z
    invoke-static {v7}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;->access$0(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;)Z

    move-result v7

    if-eqz v7, :cond_1bd

    .line 1362
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;->gTagLike:Lic/buzzebeeslib/bean/TagLikeCampaignReview;
    invoke-static {v7}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;->access$1(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;)Lic/buzzebeeslib/bean/TagLikeCampaignReview;

    move-result-object v7

    iget-object v7, v7, Lic/buzzebeeslib/bean/TagLikeCampaignReview;->imgLike:Landroid/widget/ImageView;

    sget v8, Lic/buzzebeeslib/R$drawable;->bz_icon_like_b:I

    iget-object v9, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;
    invoke-static {v9}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;->access$2(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;)Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;

    move-result-object v9

    invoke-virtual {v9}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lic/buzzebeeslib/util/BBUtil;->setImageResource(Landroid/widget/ImageView;ILandroid/content/Context;)V

    .line 1364
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener$1;->val$response_text:Ljava/lang/String;

    const-string v8, "OAuthException"

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-lez v7, :cond_18a

    .line 1365
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;
    invoke-static {v7}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;->access$2(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;)Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;

    move-result-object v7

    const-string v8, "You don\'t have permission to like this post!"

    invoke-virtual {v7, v8}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->showToast(Ljava/lang/String;)V

    .line 1379
    :goto_167
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;->gTagLike:Lic/buzzebeeslib/bean/TagLikeCampaignReview;
    invoke-static {v7}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;->access$1(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;)Lic/buzzebeeslib/bean/TagLikeCampaignReview;

    move-result-object v7

    iget-object v7, v7, Lic/buzzebeeslib/bean/TagLikeCampaignReview;->layoutLike:Landroid/widget/RelativeLayout;

    invoke-virtual {v7, v11}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 1380
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;->gTagLike:Lic/buzzebeeslib/bean/TagLikeCampaignReview;
    invoke-static {v7}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;->access$1(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;)Lic/buzzebeeslib/bean/TagLikeCampaignReview;

    move-result-object v7

    iget-object v7, v7, Lic/buzzebeeslib/bean/TagLikeCampaignReview;->pbImgLike:Landroid/widget/ProgressBar;

    invoke-virtual {v7, v12}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1381
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;->gTagLike:Lic/buzzebeeslib/bean/TagLikeCampaignReview;
    invoke-static {v7}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;->access$1(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;)Lic/buzzebeeslib/bean/TagLikeCampaignReview;

    move-result-object v7

    iget-object v7, v7, Lic/buzzebeeslib/bean/TagLikeCampaignReview;->imgLike:Landroid/widget/ImageView;

    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_87

    .line 1367
    :cond_18a
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;->gTagLike:Lic/buzzebeeslib/bean/TagLikeCampaignReview;
    invoke-static {v7}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;->access$1(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;)Lic/buzzebeeslib/bean/TagLikeCampaignReview;

    move-result-object v7

    iget v7, v7, Lic/buzzebeeslib/bean/TagLikeCampaignReview;->retry_count:I

    const/4 v8, 0x3

    if-le v7, v8, :cond_1a1

    .line 1368
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;
    invoke-static {v7}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;->access$2(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;)Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;

    move-result-object v7

    const-string v8, "Review Like Error!"

    invoke-virtual {v7, v8}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->showToast(Ljava/lang/String;)V

    goto :goto_167

    .line 1370
    :cond_1a1
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;->gTagLike:Lic/buzzebeeslib/bean/TagLikeCampaignReview;
    invoke-static {v7}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;->access$1(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;)Lic/buzzebeeslib/bean/TagLikeCampaignReview;

    move-result-object v7

    iget v8, v7, Lic/buzzebeeslib/bean/TagLikeCampaignReview;->retry_count:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Lic/buzzebeeslib/bean/TagLikeCampaignReview;->retry_count:I

    .line 1371
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;
    invoke-static {v7}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;->access$2(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;)Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;

    move-result-object v7

    iget-object v8, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;->gTagLike:Lic/buzzebeeslib/bean/TagLikeCampaignReview;
    invoke-static {v8}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;->access$1(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;)Lic/buzzebeeslib/bean/TagLikeCampaignReview;

    move-result-object v8

    invoke-virtual {v7, v8}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->doLike(Lic/buzzebeeslib/bean/TagLikeCampaignReview;)V

    goto :goto_167

    .line 1375
    :cond_1bd
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;->gTagLike:Lic/buzzebeeslib/bean/TagLikeCampaignReview;
    invoke-static {v7}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;->access$1(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;)Lic/buzzebeeslib/bean/TagLikeCampaignReview;

    move-result-object v7

    iget-object v7, v7, Lic/buzzebeeslib/bean/TagLikeCampaignReview;->imgLike:Landroid/widget/ImageView;

    sget v8, Lic/buzzebeeslib/R$drawable;->bz_icon_like_a:I

    iget-object v9, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;
    invoke-static {v9}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;->access$2(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;)Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;

    move-result-object v9

    invoke-virtual {v9}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lic/buzzebeeslib/util/BBUtil;->setImageResource(Landroid/widget/ImageView;ILandroid/content/Context;)V

    .line 1376
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;
    invoke-static {v7}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;->access$2(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;)Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;

    move-result-object v7

    const-string v8, "Facebook UnLike Error!"

    invoke-virtual {v7, v8}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->showToast(Ljava/lang/String;)V

    goto :goto_167

    .line 1320
    .restart local v2    # "jsonRoot":Lorg/json/JSONObject;
    .restart local v4    # "json_buzzebees":Lorg/json/JSONObject;
    .restart local v5    # "points":I
    :catch_1e0
    move-exception v7

    goto/16 :goto_c8

    .line 1310
    :catch_1e3
    move-exception v7

    goto/16 :goto_bb
.end method
