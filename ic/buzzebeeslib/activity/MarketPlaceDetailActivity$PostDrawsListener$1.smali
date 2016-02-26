.class Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener$1;
.super Ljava/lang/Object;
.source "MarketPlaceDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener;->onComplete(ILjava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener;

.field private final synthetic val$response_code:I

.field private final synthetic val$response_text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener;ILjava/lang/String;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener;

    iput p2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener$1;->val$response_code:I

    iput-object p3, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener$1;->val$response_text:Ljava/lang/String;

    .line 2633
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 19

    .prologue
    .line 2636
    move-object/from16 v0, p0

    iget v2, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener$1;->val$response_code:I

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_1a2

    .line 2640
    :try_start_8
    new-instance v14, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener$1;->val$response_text:Ljava/lang/String;

    invoke-direct {v14, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2642
    .local v14, "jsonRoot":Lorg/json/JSONObject;
    const-string v2, "PrivilegeMessage"

    invoke-static {v14, v2}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2643
    .local v9, "privilegeMessage":Ljava/lang/String;
    const-string v2, "Serial"

    invoke-static {v14, v2}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2645
    .local v8, "serial":Ljava/lang/String;
    if-eqz v9, :cond_27

    const-string v2, ""

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_115

    .line 2648
    :cond_27
    const-string v9, ""

    .line 2649
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "<p align=\'center\' style=\'color:#0774b5\'>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2652
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;
    invoke-static {v3}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener;)Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    move-result-object v3

    sget v4, Lic/buzzebeeslib/R$string;->dialog_new_draws_tvDraws1:I

    invoke-virtual {v3, v4}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<br>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2653
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;
    invoke-static {v3}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener;)Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    move-result-object v3

    sget v4, Lic/buzzebeeslib/R$string;->dialog_new_draws_tvDraws2:I

    invoke-virtual {v3, v4}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<br>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2654
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;
    invoke-static {v3}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener;)Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    move-result-object v3

    sget v4, Lic/buzzebeeslib/R$string;->dialog_new_draws_tvDraws3:I

    invoke-virtual {v3, v4}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<br>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2655
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;
    invoke-static {v3}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener;)Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    move-result-object v3

    sget v4, Lic/buzzebeeslib/R$string;->dialog_new_draws_tvDraws4:I

    invoke-virtual {v3, v4}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<br>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2657
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "dd MMM yyyy"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-object v4, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;
    invoke-static {v4}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener;)Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    move-result-object v4

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v4}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$2(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v4

    iget-wide v4, v4, Lic/buzzebeeslib/bean/Campaign;->VoucherExpireDate:J

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    .line 2658
    .local v12, "dateVoucherExpire":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2659
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "</p>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2663
    .end local v12    # "dateVoucherExpire":Ljava/lang/String;
    :cond_115
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;
    invoke-static {v2}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener;)Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;
    invoke-static {v3}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener;)Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    move-result-object v3

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v3}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$2(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v3

    iget-object v3, v3, Lic/buzzebeeslib/bean/Campaign;->ID:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;
    invoke-static {v4}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener;)Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    move-result-object v4

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v4}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$2(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v4

    iget-object v4, v4, Lic/buzzebeeslib/bean/Campaign;->AgencyName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;
    invoke-static {v5}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener;)Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    move-result-object v5

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v5}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$2(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v5

    iget-object v5, v5, Lic/buzzebeeslib/bean/Campaign;->Name:Ljava/lang/String;

    const-wide/16 v6, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;
    invoke-static {v10}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener;)Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    move-result-object v10

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;
    invoke-static {v10}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$16(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Lcom/bitmapfun/util/ImageFetcher;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;
    invoke-static {v11}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener;)Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    move-result-object v11

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v11}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$2(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v11

    iget-object v11, v11, Lic/buzzebeeslib/bean/Campaign;->Type:Ljava/lang/String;

    invoke-static/range {v2 .. v11}, Lic/buzzebeeslib/util/DialogUtil;->showDialogSerial3TypeCode(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/bitmapfun/util/ImageFetcher;Ljava/lang/String;)V

    .line 2665
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;
    invoke-static {v2}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener;)Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;
    invoke-static {v3}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener;)Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    move-result-object v3

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v3}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$2(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v3

    iget-object v3, v3, Lic/buzzebeeslib/bean/Campaign;->ID:Ljava/lang/String;

    invoke-static {v3}, Lic/buzzebeeslib/util/BBUtil;->CTypeInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    # invokes: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getCampaign(I)V
    invoke-static {v2, v3}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$15(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;I)V
    :try_end_18f
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_18f} :catch_190

    .line 2688
    .end local v8    # "serial":Ljava/lang/String;
    .end local v9    # "privilegeMessage":Ljava/lang/String;
    .end local v14    # "jsonRoot":Lorg/json/JSONObject;
    :goto_18f
    return-void

    .line 2666
    :catch_190
    move-exception v13

    .line 2667
    .local v13, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;
    invoke-static {v2}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener;)Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    move-result-object v2

    invoke-virtual {v13}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    # invokes: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->showDialogError(Ljava/lang/String;Z)V
    invoke-static {v2, v3, v4}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$13(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;Ljava/lang/String;Z)V

    goto :goto_18f

    .line 2671
    .end local v13    # "e":Ljava/lang/Exception;
    :cond_1a2
    const-string v17, ""

    .line 2674
    .local v17, "message":Ljava/lang/String;
    :try_start_1a4
    new-instance v16, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener$1;->val$response_text:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2675
    .local v16, "json_result":Lorg/json/JSONObject;
    const-string v2, "error"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    .line 2676
    .local v15, "json_error":Lorg/json/JSONObject;
    const-string v2, "message"

    invoke-static {v15, v2}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1bc
    .catch Ljava/lang/Exception; {:try_start_1a4 .. :try_end_1bc} :catch_1dc

    move-result-object v17

    .line 2681
    .end local v15    # "json_error":Lorg/json/JSONObject;
    .end local v16    # "json_result":Lorg/json/JSONObject;
    :goto_1bd
    const-string v2, ""

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1cd

    .line 2682
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener$1;->val$response_text:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 2685
    :cond_1cd
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;
    invoke-static {v2}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener;)Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, v17

    # invokes: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->showDialogError(Ljava/lang/String;Z)V
    invoke-static {v2, v0, v3}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$13(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;Ljava/lang/String;Z)V

    goto :goto_18f

    .line 2677
    :catch_1dc
    move-exception v2

    goto :goto_1bd
.end method
