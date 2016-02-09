.class Lic/buzzebeeslib/activity/MarketReviewList2Activity$PostReviewListener;
.super Lic/buzzebeeslib/util/http/HttpRQListener;
.source "MarketReviewList2Activity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lic/buzzebeeslib/activity/MarketReviewList2Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PostReviewListener"
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/MarketReviewList2Activity;)V
    .registers 2

    .prologue
    .line 2504
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$PostReviewListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    invoke-direct {p0}, Lic/buzzebeeslib/util/http/HttpRQListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 14
    .param p1, "response_code"    # I
    .param p2, "response_text"    # Ljava/lang/String;
    .param p3, "state"    # Ljava/lang/Object;

    .prologue
    .line 2507
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$PostReviewListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewList2Activity;->TAG:Ljava/lang/String;
    invoke-static {v7}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->access$3(Lic/buzzebeeslib/activity/MarketReviewList2Activity;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "(PostReviewListener|onComplete)response={"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "}:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2508
    const/16 v7, 0xc8

    if-ne p1, v7, :cond_aa

    .line 2509
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$PostReviewListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    iget-object v8, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$PostReviewListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    sget v9, Lic/buzzebeeslib/R$string;->post_success:I

    invoke-virtual {v8, v9}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->showToast(Ljava/lang/String;)V

    .line 2522
    if-eqz p2, :cond_64

    :try_start_35
    const-string v7, ""

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_64

    .line 2523
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$PostReviewListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->doRefresh(Landroid/view/View;)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_43} :catch_8c

    .line 2525
    const/4 v5, 0x0

    .line 2526
    .local v5, "points":I
    :try_start_44
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_49} :catch_6e

    .line 2529
    .local v2, "jsonRoot":Lorg/json/JSONObject;
    :try_start_49
    const-string v7, "buzzebees"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_4e} :catch_cd

    move-result-object v3

    .line 2532
    .local v3, "json_buzzebees":Lorg/json/JSONObject;
    :try_start_4f
    const-string v7, "points"

    invoke-static {v3, v7}, Lic/buzzebeeslib/util/JsonUtil;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v5

    .line 2533
    if-lez v5, :cond_64

    .line 2535
    const-string v6, "comment"

    .line 2536
    .local v6, "strFrom":Ljava/lang/String;
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$PostReviewListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gHandler:Landroid/os/Handler;
    invoke-static {v7}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->access$14(Lic/buzzebeeslib/activity/MarketReviewList2Activity;)Landroid/os/Handler;

    move-result-object v7

    iget-object v8, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$PostReviewListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    invoke-static {v5, v6, v7, v8}, Lic/buzzebeeslib/util/AnimationPoint;->showToastPointsGift(ILjava/lang/String;Landroid/os/Handler;Landroid/app/Activity;)V
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_64} :catch_cf

    .line 2573
    .end local v2    # "jsonRoot":Lorg/json/JSONObject;
    .end local v3    # "json_buzzebees":Lorg/json/JSONObject;
    .end local v5    # "points":I
    .end local v6    # "strFrom":Ljava/lang/String;
    :cond_64
    :goto_64
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$PostReviewListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gDialog:Landroid/app/ProgressDialog;
    invoke-static {v7}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->access$4(Lic/buzzebeeslib/activity/MarketReviewList2Activity;)Landroid/app/ProgressDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/ProgressDialog;->dismiss()V

    .line 2574
    return-void

    .line 2553
    .restart local v5    # "points":I
    :catch_6e
    move-exception v0

    .line 2554
    .local v0, "e":Ljava/lang/Exception;
    :try_start_6f
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$PostReviewListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewList2Activity;->TAG:Ljava/lang/String;
    invoke-static {v7}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->access$3(Lic/buzzebeeslib/activity/MarketReviewList2Activity;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "(JSONException|ProcessActionLikeListener|onComplete):"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_8b} :catch_8c

    goto :goto_64

    .line 2557
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v5    # "points":I
    :catch_8c
    move-exception v0

    .line 2558
    .restart local v0    # "e":Ljava/lang/Exception;
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$PostReviewListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewList2Activity;->TAG:Ljava/lang/String;
    invoke-static {v7}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->access$3(Lic/buzzebeeslib/activity/MarketReviewList2Activity;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Error while back from review post:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_64

    .line 2561
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_aa
    const-string v1, ""

    .line 2563
    .local v1, "err_message":Ljava/lang/String;
    :try_start_ac
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2564
    .restart local v2    # "jsonRoot":Lorg/json/JSONObject;
    const-string v7, "error"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 2565
    .local v4, "json_error":Lorg/json/JSONObject;
    const-string v7, "message"

    invoke-static {v4, v7}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    :try_end_bc
    .catch Ljava/lang/Exception; {:try_start_ac .. :try_end_bc} :catch_c3

    move-result-object v1

    .line 2570
    .end local v2    # "jsonRoot":Lorg/json/JSONObject;
    .end local v4    # "json_error":Lorg/json/JSONObject;
    :goto_bd
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$PostReviewListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    invoke-virtual {v7, v1}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->showToast(Ljava/lang/String;)V

    goto :goto_64

    .line 2566
    :catch_c3
    move-exception v0

    .line 2567
    .restart local v0    # "e":Ljava/lang/Exception;
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$PostReviewListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    sget v8, Lic/buzzebeeslib/R$string;->post_error:I

    invoke-virtual {v7, v8}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_bd

    .line 2550
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "err_message":Ljava/lang/String;
    .restart local v2    # "jsonRoot":Lorg/json/JSONObject;
    .restart local v5    # "points":I
    :catch_cd
    move-exception v7

    goto :goto_64

    .line 2538
    .restart local v3    # "json_buzzebees":Lorg/json/JSONObject;
    :catch_cf
    move-exception v7

    goto :goto_64
.end method

.method public onFileNotFoundException(Ljava/io/FileNotFoundException;Ljava/lang/Object;)V
    .registers 6
    .param p1, "e"    # Ljava/io/FileNotFoundException;
    .param p2, "state"    # Ljava/lang/Object;

    .prologue
    .line 2578
    invoke-super {p0, p1, p2}, Lic/buzzebeeslib/util/http/HttpRQListener;->onFileNotFoundException(Ljava/io/FileNotFoundException;Ljava/lang/Object;)V

    .line 2579
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$PostReviewListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewList2Activity;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->access$3(Lic/buzzebeeslib/activity/MarketReviewList2Activity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "(onFileNotFoundException|PostReviewListener):"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2580
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$PostReviewListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$PostReviewListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    sget v2, Lic/buzzebeeslib/R$string;->post_error:I

    invoke-virtual {v1, v2}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->showToast(Ljava/lang/String;)V

    .line 2581
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$PostReviewListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->access$4(Lic/buzzebeeslib/activity/MarketReviewList2Activity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 2582
    return-void
.end method

.method public onIOException(Ljava/io/IOException;Ljava/lang/Object;)V
    .registers 6
    .param p1, "e"    # Ljava/io/IOException;
    .param p2, "state"    # Ljava/lang/Object;

    .prologue
    .line 2586
    invoke-super {p0, p1, p2}, Lic/buzzebeeslib/util/http/HttpRQListener;->onIOException(Ljava/io/IOException;Ljava/lang/Object;)V

    .line 2587
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$PostReviewListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewList2Activity;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->access$3(Lic/buzzebeeslib/activity/MarketReviewList2Activity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "(onIOException|PostReviewListener):"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2588
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$PostReviewListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$PostReviewListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    sget v2, Lic/buzzebeeslib/R$string;->post_error:I

    invoke-virtual {v1, v2}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->showToast(Ljava/lang/String;)V

    .line 2589
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$PostReviewListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->access$4(Lic/buzzebeeslib/activity/MarketReviewList2Activity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 2590
    return-void
.end method

.method public onMalformedURLException(Ljava/net/MalformedURLException;Ljava/lang/Object;)V
    .registers 6
    .param p1, "e"    # Ljava/net/MalformedURLException;
    .param p2, "state"    # Ljava/lang/Object;

    .prologue
    .line 2594
    invoke-super {p0, p1, p2}, Lic/buzzebeeslib/util/http/HttpRQListener;->onMalformedURLException(Ljava/net/MalformedURLException;Ljava/lang/Object;)V

    .line 2595
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$PostReviewListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewList2Activity;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->access$3(Lic/buzzebeeslib/activity/MarketReviewList2Activity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "(onMalformedURLException|PostReviewListener):"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2596
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$PostReviewListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$PostReviewListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    sget v2, Lic/buzzebeeslib/R$string;->post_error:I

    invoke-virtual {v1, v2}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->showToast(Ljava/lang/String;)V

    .line 2597
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$PostReviewListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->access$4(Lic/buzzebeeslib/activity/MarketReviewList2Activity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 2598
    return-void
.end method
