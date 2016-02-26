.class Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener$1;
.super Ljava/lang/Object;
.source "MainMenuFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener;->onComplete(ILjava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener;

.field private final synthetic val$response_code:I

.field private final synthetic val$response_text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener;ILjava/lang/String;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener;

    iput p2, p0, Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener$1;->val$response_code:I

    iput-object p3, p0, Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener$1;->val$response_text:Ljava/lang/String;

    .line 1402
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 24

    .prologue
    .line 1404
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener$1;->val$response_code:I

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_195

    .line 1406
    :try_start_8
    new-instance v21, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener$1;->val$response_text:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1407
    .local v21, "jsonRoot":Lorg/json/JSONObject;
    new-instance v22, Lcom/samsung/privilege/bean/Purchasing;

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/samsung/privilege/bean/Purchasing;-><init>(Lorg/json/JSONObject;)V

    .line 1409
    .local v22, "purchasing":Lcom/samsung/privilege/bean/Purchasing;
    new-instance v20, Lcom/samsung/privilege/bean/MainMenuItemModel;

    invoke-direct/range {v20 .. v20}, Lcom/samsung/privilege/bean/MainMenuItemModel;-><init>()V

    .line 1410
    .local v20, "item":Lcom/samsung/privilege/bean/MainMenuItemModel;
    const/4 v2, 0x3

    move-object/from16 v0, v20

    iput v2, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->type:I

    .line 1411
    move-object/from16 v0, v22

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_purchasing:Lcom/samsung/privilege/bean/Purchasing;

    .line 1412
    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/samsung/privilege/bean/Purchasing;->RedeemKey:Ljava/lang/String;

    move-object/from16 v0, v20

    iput-object v2, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_id:Ljava/lang/String;

    .line 1413
    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/samsung/privilege/bean/Purchasing;->ID:Ljava/lang/String;

    move-object/from16 v0, v20

    iput-object v2, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_campaign_id:Ljava/lang/String;

    .line 1414
    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/samsung/privilege/bean/Purchasing;->CategoryID:Ljava/lang/String;

    move-object/from16 v0, v20

    iput-object v2, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_cat_id:Ljava/lang/String;

    .line 1415
    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/samsung/privilege/bean/Purchasing;->Type:Ljava/lang/String;

    move-object/from16 v0, v20

    iput-object v2, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_type:Ljava/lang/String;

    .line 1416
    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/samsung/privilege/bean/Purchasing;->Name:Ljava/lang/String;

    move-object/from16 v0, v20

    iput-object v2, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_detail:Ljava/lang/String;

    .line 1417
    move-object/from16 v0, v22

    iget v2, v0, Lcom/samsung/privilege/bean/Purchasing;->LocationAgencyId:I

    move-object/from16 v0, v20

    iput v2, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_location_agency_id:I

    .line 1418
    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/samsung/privilege/bean/Purchasing;->AgencyID:Ljava/lang/String;

    move-object/from16 v0, v20

    iput-object v2, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_agencyid:Ljava/lang/String;

    .line 1419
    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/samsung/privilege/bean/Purchasing;->AgencyName:Ljava/lang/String;

    move-object/from16 v0, v20

    iput-object v2, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_agencyname:Ljava/lang/String;

    .line 1420
    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/samsung/privilege/bean/Purchasing;->Serial:Ljava/lang/String;

    move-object/from16 v0, v20

    iput-object v2, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_serial:Ljava/lang/String;

    .line 1421
    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/samsung/privilege/bean/Purchasing;->Barcode:Ljava/lang/String;

    move-object/from16 v0, v20

    iput-object v2, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_barcode:Ljava/lang/String;

    .line 1422
    move-object/from16 v0, v22

    iget-wide v2, v0, Lcom/samsung/privilege/bean/Purchasing;->RedeemDate:J

    move-object/from16 v0, v20

    iput-wide v2, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_redeem_date:J

    .line 1423
    move-object/from16 v0, v22

    iget v2, v0, Lcom/samsung/privilege/bean/Purchasing;->MinutesValidAfterUsed:I

    move-object/from16 v0, v20

    iput v2, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_minutes_valid_after_used:I

    .line 1424
    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/samsung/privilege/bean/Purchasing;->PrivilegeMessage:Ljava/lang/String;

    move-object/from16 v0, v20

    iput-object v2, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_privilege_message:Ljava/lang/String;

    .line 1425
    move-object/from16 v0, v22

    iget-wide v2, v0, Lcom/samsung/privilege/bean/Purchasing;->VoucherExpireDate:J

    move-object/from16 v0, v20

    iput-wide v2, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_VoucherExpireDate:J

    .line 1433
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener;

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static {v2}, Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_purchasing:Lcom/samsung/privilege/bean/Purchasing;

    move-object/from16 v0, v22

    iget-wide v4, v0, Lcom/samsung/privilege/bean/Purchasing;->RedeemDate:J

    move-object/from16 v0, v20

    iget-object v6, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_campaign_id:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v20

    iget-object v7, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_agencyname:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-object v8, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_detail:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener;

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener;->gLongExpireIn:Ljava/lang/Long;
    invoke-static {v9}, Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener;->access$0(Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener;)Ljava/lang/Long;

    move-result-object v9

    move-object/from16 v0, v20

    iget-object v10, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_serial:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-object v11, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_barcode:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-object v12, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_privilege_message:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener;

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static {v13}, Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v13

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;
    invoke-static {v13}, Lcom/samsung/privilege/activity/MainMenuFragment;->access$10(Lcom/samsung/privilege/activity/MainMenuFragment;)Lcom/bitmapfun/util/ImageFetcher;

    move-result-object v13

    move-object/from16 v0, v20

    iget-object v14, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_type:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener;

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static {v15}, Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v15

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment;->gHandler:Landroid/os/Handler;
    invoke-static {v15}, Lcom/samsung/privilege/activity/MainMenuFragment;->access$11(Lcom/samsung/privilege/activity/MainMenuFragment;)Landroid/os/Handler;

    move-result-object v15

    const/16 v16, 0x0

    invoke-static/range {v2 .. v16}, Lcom/samsung/privilege/util/DialogSerialVersion2;->showDialogSerial(Landroid/app/Activity;Lcom/samsung/privilege/bean/Purchasing;JILjava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bitmapfun/util/ImageFetcher;Ljava/lang/String;Landroid/os/Handler;Lcom/samsung/privilege/bean/NFCTag;)V
    :try_end_f5
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_f5} :catch_f6

    .line 1459
    .end local v20    # "item":Lcom/samsung/privilege/bean/MainMenuItemModel;
    .end local v21    # "jsonRoot":Lorg/json/JSONObject;
    .end local v22    # "purchasing":Lcom/samsung/privilege/bean/Purchasing;
    :cond_f5
    :goto_f5
    return-void

    .line 1434
    :catch_f6
    move-exception v19

    .line 1435
    .local v19, "ex":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener;

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static {v2}, Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-eqz v2, :cond_f5

    .line 1437
    const/16 v17, 0x0

    .line 1439
    .local v17, "blnIsAdmin":Z
    :try_start_107
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener;

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static {v2}, Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/UserLogin;->IS_ADMIN(Landroid/content/Context;)Z
    :try_end_116
    .catch Ljava/lang/Exception; {:try_start_107 .. :try_end_116} :catch_151

    move-result v2

    if-eqz v2, :cond_11b

    .line 1440
    const/16 v17, 0x1

    .line 1446
    :cond_11b
    :goto_11b
    if-eqz v17, :cond_175

    .line 1447
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener;

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static {v2}, Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener;

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static {v4}, Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const v5, 0x7f09018c

    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/samsung/privilege/activity/MainMenuFragment;->showToast(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/samsung/privilege/activity/MainMenuFragment;->access$6(Lcom/samsung/privilege/activity/MainMenuFragment;Ljava/lang/String;)V

    goto :goto_f5

    .line 1442
    :catch_151
    move-exception v18

    .line 1443
    .local v18, "e2":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener;

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static {v2}, Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v2

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/privilege/activity/MainMenuFragment;->access$5(Lcom/samsung/privilege/activity/MainMenuFragment;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception := "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11b

    .line 1449
    .end local v18    # "e2":Ljava/lang/Exception;
    :cond_175
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener;

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static {v2}, Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener;

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static {v3}, Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f09018c

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/samsung/privilege/activity/MainMenuFragment;->showToast(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/samsung/privilege/activity/MainMenuFragment;->access$6(Lcom/samsung/privilege/activity/MainMenuFragment;Ljava/lang/String;)V

    goto/16 :goto_f5

    .line 1455
    .end local v17    # "blnIsAdmin":Z
    .end local v19    # "ex":Ljava/lang/Exception;
    :cond_195
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener;

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static {v2}, Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-eqz v2, :cond_f5

    .line 1456
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener;

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static {v2}, Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener;

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static {v3}, Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f09018b

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/samsung/privilege/activity/MainMenuFragment;->showToast(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/samsung/privilege/activity/MainMenuFragment;->access$6(Lcom/samsung/privilege/activity/MainMenuFragment;Ljava/lang/String;)V

    goto/16 :goto_f5
.end method
