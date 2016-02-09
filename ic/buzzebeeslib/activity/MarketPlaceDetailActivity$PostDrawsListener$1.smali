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
    .registers 18

    .prologue
    .line 2636
    move-object/from16 v0, p0

    iget v1, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener$1;->val$response_code:I

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_1a2

    .line 2640
    :try_start_8
    new-instance v13, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener$1;->val$response_text:Ljava/lang/String;

    invoke-direct {v13, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2642
    .local v13, "jsonRoot":Lorg/json/JSONObject;
    const-string v1, "PrivilegeMessage"

    invoke-static {v13, v1}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2643
    .local v8, "privilegeMessage":Ljava/lang/String;
    const-string v1, "Serial"

    invoke-static {v13, v1}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2645
    .local v7, "serial":Ljava/lang/String;
    if-eqz v8, :cond_27

    const-string v1, ""

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_115

    .line 2648
    :cond_27
    const-string v8, ""

    .line 2649
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "<p align=\'center\' style=\'color:#0774b5\'>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2652
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;
    invoke-static {v2}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener;)Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    move-result-object v2

    sget v3, Lic/buzzebeeslib/R$string;->dialog_new_draws_tvDraws1:I

    invoke-virtual {v2, v3}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<br>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2653
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;
    invoke-static {v2}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener;)Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    move-result-object v2

    sget v3, Lic/buzzebeeslib/R$string;->dialog_new_draws_tvDraws2:I

    invoke-virtual {v2, v3}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<br>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2654
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;
    invoke-static {v2}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener;)Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    move-result-object v2

    sget v3, Lic/buzzebeeslib/R$string;->dialog_new_draws_tvDraws3:I

    invoke-virtual {v2, v3}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<br>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2655
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;
    invoke-static {v2}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener;)Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    move-result-object v2

    sget v3, Lic/buzzebeeslib/R$string;->dialog_new_draws_tvDraws4:I

    invoke-virtual {v2, v3}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<br>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2657
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "dd MMM yyyy"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;
    invoke-static {v3}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener;)Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    move-result-object v3

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v3}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$2(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v3

    iget-wide v3, v3, Lic/buzzebeeslib/bean/Campaign;->VoucherExpireDate:J

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    .line 2658
    .local v11, "dateVoucherExpire":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2659
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "</p>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2663
    .end local v11    # "dateVoucherExpire":Ljava/lang/String;
    :cond_115
    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener;)Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;
    invoke-static {v2}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener;)Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    move-result-object v2

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v2}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$2(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v2

    iget-object v2, v2, Lic/buzzebeeslib/bean/Campaign;->ID:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;
    invoke-static {v3}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener;)Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    move-result-object v3

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v3}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$2(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v3

    iget-object v3, v3, Lic/buzzebeeslib/bean/Campaign;->AgencyName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;
    invoke-static {v4}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener;)Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    move-result-object v4

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v4}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$2(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v4

    iget-object v4, v4, Lic/buzzebeeslib/bean/Campaign;->Name:Ljava/lang/String;

    const-wide/16 v5, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;
    invoke-static {v9}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener;)Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    move-result-object v9

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;
    invoke-static {v9}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$16(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Lcom/bitmapfun/util/ImageFetcher;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;
    invoke-static {v10}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener;)Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    move-result-object v10

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v10}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$2(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v10

    iget-object v10, v10, Lic/buzzebeeslib/bean/Campaign;->Type:Ljava/lang/String;

    invoke-static/range {v1 .. v10}, Lic/buzzebeeslib/util/DialogUtil;->showDialogSerial3TypeCode(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/bitmapfun/util/ImageFetcher;Ljava/lang/String;)V

    .line 2665
    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener;)Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;
    invoke-static {v2}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener;)Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    move-result-object v2

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v2}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$2(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v2

    iget-object v2, v2, Lic/buzzebeeslib/bean/Campaign;->ID:Ljava/lang/String;

    invoke-static {v2}, Lic/buzzebeeslib/util/BBUtil;->CTypeInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    # invokes: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getCampaign(I)V
    invoke-static {v1, v2}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$15(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;I)V
    :try_end_18f
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_18f} :catch_190

    .line 2688
    .end local v7    # "serial":Ljava/lang/String;
    .end local v8    # "privilegeMessage":Ljava/lang/String;
    .end local v13    # "jsonRoot":Lorg/json/JSONObject;
    :goto_18f
    return-void

    .line 2666
    :catch_190
    move-exception v12

    .line 2667
    .local v12, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener;)Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    move-result-object v1

    invoke-virtual {v12}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    # invokes: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->showDialogError(Ljava/lang/String;Z)V
    invoke-static {v1, v2, v3}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$13(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;Ljava/lang/String;Z)V

    goto :goto_18f

    .line 2671
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_1a2
    const-string v16, ""

    .line 2674
    .local v16, "message":Ljava/lang/String;
    :try_start_1a4
    new-instance v15, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener$1;->val$response_text:Ljava/lang/String;

    invoke-direct {v15, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2675
    .local v15, "json_result":Lorg/json/JSONObject;
    const-string v1, "error"

    invoke-virtual {v15, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    .line 2676
    .local v14, "json_error":Lorg/json/JSONObject;
    const-string v1, "message"

    invoke-static {v14, v1}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1b8
    .catch Ljava/lang/Exception; {:try_start_1a4 .. :try_end_1b8} :catch_1d8

    move-result-object v16

    .line 2681
    .end local v14    # "json_error":Lorg/json/JSONObject;
    .end local v15    # "json_result":Lorg/json/JSONObject;
    :goto_1b9
    const-string v1, ""

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c9

    .line 2682
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener$1;->val$response_text:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 2685
    :cond_1c9
    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener;)Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    move-result-object v1

    const/4 v2, 0x1

    move-object/from16 v0, v16

    # invokes: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->showDialogError(Ljava/lang/String;Z)V
    invoke-static {v1, v0, v2}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$13(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;Ljava/lang/String;Z)V

    goto :goto_18f

    .line 2677
    :catch_1d8
    move-exception v1

    goto :goto_1b9
.end method
