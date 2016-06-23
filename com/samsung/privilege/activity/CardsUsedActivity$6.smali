.class Lcom/samsung/privilege/activity/CardsUsedActivity$6;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "CardsUsedActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CardsUsedActivity;->checkCodeStatus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/CardsUsedActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CardsUsedActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/privilege/activity/CardsUsedActivity;

    .prologue
    .line 571
    iput-object p1, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$6;->this$0:Lcom/samsung/privilege/activity/CardsUsedActivity;

    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V
    .registers 6
    .param p1, "statusCode"    # I
    .param p2, "headers"    # [Lcz/msebera/android/httpclient/Header;
    .param p3, "responseBody"    # [B
    .param p4, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 644
    iget-object v0, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$6;->this$0:Lcom/samsung/privilege/activity/CardsUsedActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/CardsUsedActivity;->gDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 645
    iget-object v0, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$6;->this$0:Lcom/samsung/privilege/activity/CardsUsedActivity;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/bzbs/util/DialogUtil;->showDialogHttpFailure(Landroid/content/Context;I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V

    .line 646
    return-void
.end method

.method public onSuccess(I[Lcz/msebera/android/httpclient/Header;[B)V
    .registers 20
    .param p1, "statusCode"    # I
    .param p2, "headers"    # [Lcz/msebera/android/httpclient/Header;
    .param p3, "responseBody"    # [B

    .prologue
    .line 574
    new-instance v8, Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-direct {v8, v0}, Ljava/lang/String;-><init>([B)V

    .line 575
    .local v8, "response_text":Ljava/lang/String;
    sget-object v11, Lcom/samsung/privilege/activity/CardsUsedActivity;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "(checkCodeStatus|onComplete)response_code="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ",response="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/privilege/activity/CardsUsedActivity$6;->this$0:Lcom/samsung/privilege/activity/CardsUsedActivity;

    iget-object v11, v11, Lcom/samsung/privilege/activity/CardsUsedActivity;->gDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v11}, Landroid/app/ProgressDialog;->dismiss()V

    .line 579
    :try_start_36
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 580
    .local v5, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v11, "result"

    invoke-static {v5, v11}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 582
    .local v9, "result":Ljava/lang/String;
    const-string/jumbo v11, "success"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1b5

    .line 584
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/privilege/activity/CardsUsedActivity$6;->this$0:Lcom/samsung/privilege/activity/CardsUsedActivity;

    # getter for: Lcom/samsung/privilege/activity/CardsUsedActivity;->tvTimer:Landroid/widget/TextView;
    invoke-static {v11}, Lcom/samsung/privilege/activity/CardsUsedActivity;->access$1200(Lcom/samsung/privilege/activity/CardsUsedActivity;)Landroid/widget/TextView;

    move-result-object v11

    const-string/jumbo v12, ""

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 585
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/privilege/activity/CardsUsedActivity$6;->this$0:Lcom/samsung/privilege/activity/CardsUsedActivity;

    # getter for: Lcom/samsung/privilege/activity/CardsUsedActivity;->tvTimer:Landroid/widget/TextView;
    invoke-static {v11}, Lcom/samsung/privilege/activity/CardsUsedActivity;->access$1200(Lcom/samsung/privilege/activity/CardsUsedActivity;)Landroid/widget/TextView;

    move-result-object v11

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 588
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/privilege/activity/CardsUsedActivity$6;->this$0:Lcom/samsung/privilege/activity/CardsUsedActivity;

    # getter for: Lcom/samsung/privilege/activity/CardsUsedActivity;->ivStatus:Landroid/widget/ImageView;
    invoke-static {v11}, Lcom/samsung/privilege/activity/CardsUsedActivity;->access$900(Lcom/samsung/privilege/activity/CardsUsedActivity;)Landroid/widget/ImageView;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 589
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/privilege/activity/CardsUsedActivity$6;->this$0:Lcom/samsung/privilege/activity/CardsUsedActivity;

    # getter for: Lcom/samsung/privilege/activity/CardsUsedActivity;->tvStatus:Landroid/widget/TextView;
    invoke-static {v11}, Lcom/samsung/privilege/activity/CardsUsedActivity;->access$1600(Lcom/samsung/privilege/activity/CardsUsedActivity;)Landroid/widget/TextView;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 590
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/privilege/activity/CardsUsedActivity$6;->this$0:Lcom/samsung/privilege/activity/CardsUsedActivity;

    # getter for: Lcom/samsung/privilege/activity/CardsUsedActivity;->layoutButtonGenerate:Landroid/widget/RelativeLayout;
    invoke-static {v11}, Lcom/samsung/privilege/activity/CardsUsedActivity;->access$1400(Lcom/samsung/privilege/activity/CardsUsedActivity;)Landroid/widget/RelativeLayout;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 591
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/privilege/activity/CardsUsedActivity$6;->this$0:Lcom/samsung/privilege/activity/CardsUsedActivity;

    # getter for: Lcom/samsung/privilege/activity/CardsUsedActivity;->layoutButtonRetry:Landroid/widget/RelativeLayout;
    invoke-static {v11}, Lcom/samsung/privilege/activity/CardsUsedActivity;->access$1500(Lcom/samsung/privilege/activity/CardsUsedActivity;)Landroid/widget/RelativeLayout;

    move-result-object v11

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 592
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/privilege/activity/CardsUsedActivity$6;->this$0:Lcom/samsung/privilege/activity/CardsUsedActivity;

    # getter for: Lcom/samsung/privilege/activity/CardsUsedActivity;->tvStatus:Landroid/widget/TextView;
    invoke-static {v11}, Lcom/samsung/privilege/activity/CardsUsedActivity;->access$1600(Lcom/samsung/privilege/activity/CardsUsedActivity;)Landroid/widget/TextView;

    move-result-object v11

    const-string/jumbo v12, "PAY SUCCESS"

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 593
    new-instance v2, Lcom/bzbs/bean/HistoryCardsList;

    invoke-direct {v2, v5}, Lcom/bzbs/bean/HistoryCardsList;-><init>(Lorg/json/JSONObject;)V

    .line 594
    .local v2, "cl":Lcom/bzbs/bean/HistoryCardsList;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/privilege/activity/CardsUsedActivity$6;->this$0:Lcom/samsung/privilege/activity/CardsUsedActivity;

    # getter for: Lcom/samsung/privilege/activity/CardsUsedActivity;->dash_item:Lcom/bzbs/bean/CardsList;
    invoke-static {v11}, Lcom/samsung/privilege/activity/CardsUsedActivity;->access$300(Lcom/samsung/privilege/activity/CardsUsedActivity;)Lcom/bzbs/bean/CardsList;

    move-result-object v11

    iget-object v11, v11, Lcom/bzbs/bean/CardsList;->historyCardsList:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 596
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/privilege/activity/CardsUsedActivity$6;->this$0:Lcom/samsung/privilege/activity/CardsUsedActivity;

    # getter for: Lcom/samsung/privilege/activity/CardsUsedActivity;->contentNewPay:Landroid/widget/FrameLayout;
    invoke-static {v11}, Lcom/samsung/privilege/activity/CardsUsedActivity;->access$1000(Lcom/samsung/privilege/activity/CardsUsedActivity;)Landroid/widget/FrameLayout;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 597
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/privilege/activity/CardsUsedActivity$6;->this$0:Lcom/samsung/privilege/activity/CardsUsedActivity;

    const v12, 0x7f1004d0

    invoke-virtual {v11, v12}, Lcom/samsung/privilege/activity/CardsUsedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 598
    .local v4, "imgCampaignAdd":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/privilege/activity/CardsUsedActivity$6;->this$0:Lcom/samsung/privilege/activity/CardsUsedActivity;

    const v12, 0x7f1004d1

    invoke-virtual {v11, v12}, Lcom/samsung/privilege/activity/CardsUsedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 600
    .local v10, "tvCampaignPriceAdd":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/privilege/activity/CardsUsedActivity$6;->this$0:Lcom/samsung/privilege/activity/CardsUsedActivity;

    invoke-virtual {v11}, Lcom/samsung/privilege/activity/CardsUsedActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/privilege/activity/CardsUsedActivity$6;->this$0:Lcom/samsung/privilege/activity/CardsUsedActivity;

    # getter for: Lcom/samsung/privilege/activity/CardsUsedActivity;->dash_item:Lcom/bzbs/bean/CardsList;
    invoke-static {v11}, Lcom/samsung/privilege/activity/CardsUsedActivity;->access$300(Lcom/samsung/privilege/activity/CardsUsedActivity;)Lcom/bzbs/bean/CardsList;

    move-result-object v11

    iget-object v11, v11, Lcom/bzbs/bean/CardsList;->historyCardsList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/privilege/activity/CardsUsedActivity$6;->this$0:Lcom/samsung/privilege/activity/CardsUsedActivity;

    # getter for: Lcom/samsung/privilege/activity/CardsUsedActivity;->dash_item:Lcom/bzbs/bean/CardsList;
    invoke-static {v13}, Lcom/samsung/privilege/activity/CardsUsedActivity;->access$300(Lcom/samsung/privilege/activity/CardsUsedActivity;)Lcom/bzbs/bean/CardsList;

    move-result-object v13

    iget-object v13, v13, Lcom/bzbs/bean/CardsList;->historyCardsList:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/bzbs/bean/HistoryCardsList;

    iget-object v11, v11, Lcom/bzbs/bean/HistoryCardsList;->ImageUrl:Ljava/lang/String;

    invoke-virtual {v12, v11}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v11

    sget-object v12, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v11, v12}, Lcom/bumptech/glide/DrawableTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 602
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/privilege/activity/CardsUsedActivity$6;->this$0:Lcom/samsung/privilege/activity/CardsUsedActivity;

    # getter for: Lcom/samsung/privilege/activity/CardsUsedActivity;->formatter:Ljava/text/DecimalFormat;
    invoke-static {v11}, Lcom/samsung/privilege/activity/CardsUsedActivity;->access$1700(Lcom/samsung/privilege/activity/CardsUsedActivity;)Ljava/text/DecimalFormat;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/privilege/activity/CardsUsedActivity$6;->this$0:Lcom/samsung/privilege/activity/CardsUsedActivity;

    # getter for: Lcom/samsung/privilege/activity/CardsUsedActivity;->dash_item:Lcom/bzbs/bean/CardsList;
    invoke-static {v11}, Lcom/samsung/privilege/activity/CardsUsedActivity;->access$300(Lcom/samsung/privilege/activity/CardsUsedActivity;)Lcom/bzbs/bean/CardsList;

    move-result-object v11

    iget-object v11, v11, Lcom/bzbs/bean/CardsList;->historyCardsList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/privilege/activity/CardsUsedActivity$6;->this$0:Lcom/samsung/privilege/activity/CardsUsedActivity;

    # getter for: Lcom/samsung/privilege/activity/CardsUsedActivity;->dash_item:Lcom/bzbs/bean/CardsList;
    invoke-static {v14}, Lcom/samsung/privilege/activity/CardsUsedActivity;->access$300(Lcom/samsung/privilege/activity/CardsUsedActivity;)Lcom/bzbs/bean/CardsList;

    move-result-object v14

    iget-object v14, v14, Lcom/bzbs/bean/CardsList;->historyCardsList:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/bzbs/bean/HistoryCardsList;

    iget-wide v14, v11, Lcom/bzbs/bean/HistoryCardsList;->Amount:D

    invoke-virtual {v13, v14, v15}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/privilege/activity/CardsUsedActivity$6;->this$0:Lcom/samsung/privilege/activity/CardsUsedActivity;

    const v13, 0x7f090347

    invoke-virtual {v12, v13}, Lcom/samsung/privilege/activity/CardsUsedActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 604
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/privilege/activity/CardsUsedActivity$6;->this$0:Lcom/samsung/privilege/activity/CardsUsedActivity;

    const v12, 0x7f100140

    invoke-virtual {v11, v12}, Lcom/samsung/privilege/activity/CardsUsedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 605
    .local v6, "layoutCode":Landroid/widget/LinearLayout;
    const/16 v11, 0x8

    invoke-virtual {v6, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 608
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/privilege/activity/CardsUsedActivity$6;->this$0:Lcom/samsung/privilege/activity/CardsUsedActivity;

    iget-object v11, v11, Lcom/samsung/privilege/activity/CardsUsedActivity;->mHandler:Landroid/os/Handler;

    new-instance v12, Lcom/samsung/privilege/activity/CardsUsedActivity$6$1;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/samsung/privilege/activity/CardsUsedActivity$6$1;-><init>(Lcom/samsung/privilege/activity/CardsUsedActivity$6;)V

    const-wide/16 v14, 0x3e8

    invoke-virtual {v11, v12, v14, v15}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 615
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Wallet "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/privilege/activity/CardsUsedActivity$6;->this$0:Lcom/samsung/privilege/activity/CardsUsedActivity;

    # getter for: Lcom/samsung/privilege/activity/CardsUsedActivity;->dash_item:Lcom/bzbs/bean/CardsList;
    invoke-static {v12}, Lcom/samsung/privilege/activity/CardsUsedActivity;->access$300(Lcom/samsung/privilege/activity/CardsUsedActivity;)Lcom/bzbs/bean/CardsList;

    move-result-object v12

    iget-object v12, v12, Lcom/bzbs/bean/CardsList;->Issuer:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "Click Check Status Paid"

    invoke-static {v11, v12}, Lcom/samsung/privilege/GalaxyGift;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    .end local v2    # "cl":Lcom/bzbs/bean/HistoryCardsList;
    .end local v4    # "imgCampaignAdd":Landroid/widget/ImageView;
    .end local v5    # "jsonObject":Lorg/json/JSONObject;
    .end local v6    # "layoutCode":Landroid/widget/LinearLayout;
    .end local v9    # "result":Ljava/lang/String;
    .end local v10    # "tvCampaignPriceAdd":Landroid/widget/TextView;
    :goto_1b4
    return-void

    .line 626
    .restart local v5    # "jsonObject":Lorg/json/JSONObject;
    .restart local v9    # "result":Ljava/lang/String;
    :cond_1b5
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/privilege/activity/CardsUsedActivity$6;->this$0:Lcom/samsung/privilege/activity/CardsUsedActivity;

    # getter for: Lcom/samsung/privilege/activity/CardsUsedActivity;->ivStatus:Landroid/widget/ImageView;
    invoke-static {v11}, Lcom/samsung/privilege/activity/CardsUsedActivity;->access$900(Lcom/samsung/privilege/activity/CardsUsedActivity;)Landroid/widget/ImageView;

    move-result-object v11

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 627
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/privilege/activity/CardsUsedActivity$6;->this$0:Lcom/samsung/privilege/activity/CardsUsedActivity;

    # getter for: Lcom/samsung/privilege/activity/CardsUsedActivity;->tvStatus:Landroid/widget/TextView;
    invoke-static {v11}, Lcom/samsung/privilege/activity/CardsUsedActivity;->access$1600(Lcom/samsung/privilege/activity/CardsUsedActivity;)Landroid/widget/TextView;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 631
    const-string/jumbo v11, "message"

    invoke-static {v5, v11}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 632
    .local v7, "message":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/privilege/activity/CardsUsedActivity$6;->this$0:Lcom/samsung/privilege/activity/CardsUsedActivity;

    # getter for: Lcom/samsung/privilege/activity/CardsUsedActivity;->tvStatus:Landroid/widget/TextView;
    invoke-static {v11}, Lcom/samsung/privilege/activity/CardsUsedActivity;->access$1600(Lcom/samsung/privilege/activity/CardsUsedActivity;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 634
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Wallet "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/privilege/activity/CardsUsedActivity$6;->this$0:Lcom/samsung/privilege/activity/CardsUsedActivity;

    # getter for: Lcom/samsung/privilege/activity/CardsUsedActivity;->dash_item:Lcom/bzbs/bean/CardsList;
    invoke-static {v12}, Lcom/samsung/privilege/activity/CardsUsedActivity;->access$300(Lcom/samsung/privilege/activity/CardsUsedActivity;)Lcom/bzbs/bean/CardsList;

    move-result-object v12

    iget-object v12, v12, Lcom/bzbs/bean/CardsList;->Issuer:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "Click Check Status Not Paid"

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v12, v13}, Lcom/samsung/privilege/GalaxyGift;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_20c
    .catch Lorg/json/JSONException; {:try_start_36 .. :try_end_20c} :catch_20d

    goto :goto_1b4

    .line 637
    .end local v5    # "jsonObject":Lorg/json/JSONObject;
    .end local v7    # "message":Ljava/lang/String;
    .end local v9    # "result":Ljava/lang/String;
    :catch_20d
    move-exception v3

    .line 638
    .local v3, "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1b4
.end method
